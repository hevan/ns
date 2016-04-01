/*package com.ns.base.base;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.JdbcTokenStore;

@Configuration
@EnableAuthorizationServer
public class OAuth2AuthorizationConfig extends AuthorizationServerConfigurerAdapter {

	
	@Autowired
	private UserDetailsService userDetailsService;	
	
	@Autowired
	private AuthenticationManager authenticationManager;

	@Value("${gd.example.oauth.tokenTimeoutMinutes:5}")
	private int expiration;

	
	 @Autowired
     private DataSource dataSource;

	 
     @Bean
     public TokenStore tokenStore() {
         return new JdbcTokenStore(dataSource);
     }
     
     
	@Override
	public void configure(AuthorizationServerEndpointsConfigurer configurer) throws Exception {
		configurer.authenticationManager(authenticationManager);
		configurer.tokenStore(tokenStore());
		//configurer.userDetailsService(userDetailsService);
		//configurer.accessTokenConverter(accessTokenConverter());
	}

	@Override
	public void configure(ClientDetailsServiceConfigurer clients) throws Exception {
		clients.jdbc(dataSource);
	
		
		clients.inMemory()
			.withClient("clientName")
			.secret("clientPassword")
			.accessTokenValiditySeconds(expiration * 60)
			.scopes("read", "write")
			.authorizedGrantTypes("password", "refresh_token")
			.resourceIds("resource");
						
	}


	@Bean
	public CustomTokenConverter accessTokenConverter() {
		return new CustomTokenConverter();
	}
}*/