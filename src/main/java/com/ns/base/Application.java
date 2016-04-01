package com.ns.base;

import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.core.io.ClassPathResource;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.ResourceServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.ClientDetailsService;
import org.springframework.security.oauth2.provider.approval.DefaultUserApprovalHandler;
import org.springframework.security.oauth2.provider.approval.UserApprovalHandler;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.JwtAccessTokenConverter;
import org.springframework.security.oauth2.provider.token.store.KeyStoreKeyFactory;

import com.ns.base.base.CustomJwtTokenConverter;
import com.ns.base.service.JWTDataTokenStore;

@SpringBootApplication
public class Application extends SpringBootServletInitializer {

	public static String pathFileUpload = "d:/upload";

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(Application.class);
	}

	public static void main(String[] args) throws Exception {
		SpringApplication.run(Application.class, args);
	}

	@Bean
	public Md5PasswordEncoder passwordEncoder() {
		return new Md5PasswordEncoder();
	}

	@Bean
	public SecureRandom secureRandom() throws NoSuchAlgorithmException {
		return SecureRandom.getInstanceStrong();
	}

	@Configuration
	@EnableAuthorizationServer
	public static class OAuth2AuthorizationConfig extends AuthorizationServerConfigurerAdapter {

		@Autowired
		private AuthenticationManager authenticationManager;

		@Autowired
		private UserDetailsService userDetailsService;
		
		
		@Autowired
		@Qualifier("oauthClientDetailsService")
		private ClientDetailsService clientDetailsService;

		@Autowired
	     private DataSource dataSource;
		
//		 @Bean
//		 public TokenStore tokenStore() {
//		
//		 return new JdbcTokenStore(dataSource);
//		 }

		@Bean
		@Qualifier("tokenStore")
		public TokenStore tokenStore() {
			return new JWTDataTokenStore(jwtTokenEnhancer());
		}
//
//		@Bean
//		public JwtAccessTokenConverter jwtAccessTokenConverter() {
//			return  new CustomJwtTokenConverter();
//		}
		
		@Bean
	    protected JwtAccessTokenConverter jwtTokenEnhancer() {
			KeyPair keyPair = new KeyStoreKeyFactory(
					new ClassPathResource("keystore.jks"), "foobar".toCharArray())
					.getKeyPair("test");
			
//	      KeyStoreKeyFactory keyStoreKeyFactory = new KeyStoreKeyFactory(
//	          new ClassPathResource("oauth2-authorization-server.jks"), keypass.toCharArray());
	      JwtAccessTokenConverter converter = new JwtAccessTokenConverter();
	      //converter.setKeyPair(keyStoreKeyFactory.getKeyPair(alias));
	      converter.setKeyPair(keyPair);
	      return converter;
	    }


		@Override
		public void configure(AuthorizationServerEndpointsConfigurer configurer) throws Exception {
			configurer.tokenStore(tokenStore()).tokenEnhancer(jwtTokenEnhancer());
			configurer.userApprovalHandler(approvalHandler()).authenticationManager(authenticationManager);
		}

		@Override
		public void configure(ClientDetailsServiceConfigurer clients) throws Exception {
			//clients.withClientDetails(clientDetailsService);
			clients.jdbc(dataSource);
		}
		
		@Bean
	    public UserApprovalHandler approvalHandler() {
	      UserApprovalHandler approvalHandler = new DefaultUserApprovalHandler();
	      return approvalHandler;

	    }

	}

	@Configuration
	@EnableResourceServer
	public static class ResourceServerConfiguration extends ResourceServerConfigurerAdapter {

		@Override
		public void configure(HttpSecurity http) throws Exception {
			http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);

			http.exceptionHandling().and().anonymous().and().authorizeRequests().antMatchers("/ns/public/**")
					.permitAll().antMatchers(HttpMethod.GET, "/ns/**").access("#oauth2.hasScope('read')")
					.antMatchers(HttpMethod.POST, "/ns/**").access("#oauth2.hasScope('write')")
					.antMatchers(HttpMethod.PATCH, "/ns/**").access("#oauth2.hasScope('write')")
					.antMatchers(HttpMethod.PUT, "/ns/**").access("#oauth2.hasScope('write')")
					.antMatchers(HttpMethod.DELETE, "/ns/**").access("#oauth2.hasScope('write')").anyRequest()
					.permitAll().and().headers().frameOptions().disable();
		}

		@Override
		public void configure(ResourceServerSecurityConfigurer resources) throws Exception {
			resources.resourceId("resource");
		}
	}

	@Configuration
	@EnableWebSecurity
	@Order(-20)
	protected static class WebSecurityConfig extends WebSecurityConfigurerAdapter {

		@Override
		@Bean
		public AuthenticationManager authenticationManagerBean() throws Exception {
			return super.authenticationManagerBean();
		}

		@Autowired
		private UserDetailsService userDetailsService;
		
//		@Autowired
//		private AuthenticationProvider authenticationProvider;

		@Override
		protected void configure(HttpSecurity http) throws Exception {
			// @formatter:off
			http.formLogin().loginPage("/login").permitAll().and().requestMatchers()
					.antMatchers("/login", "/oauth/authorize", "/oauth/confirm_access").and().authorizeRequests()
					.anyRequest().authenticated();
			// @formatter:on
		}

		@Override
		protected void configure(AuthenticationManagerBuilder auth) throws Exception {

			auth.parentAuthenticationManager(authenticationManagerBean())
				//	.authenticationProvider(authenticationProvider);
			 .userDetailsService(userDetailsService);
		}

	}
}
