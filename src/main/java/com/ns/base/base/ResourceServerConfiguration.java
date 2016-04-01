/*package com.ns.base.base;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configurers.ResourceServerSecurityConfigurer;

@Configuration
@EnableResourceServer
public class ResourceServerConfiguration extends ResourceServerConfigurerAdapter {

	@Override
	public void configure(HttpSecurity http) throws Exception {
		http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);

		http.exceptionHandling().and().anonymous().and().authorizeRequests().antMatchers("/ns/public/**").permitAll()
			.antMatchers(HttpMethod.GET, "/ns/**").access("#oauth2.hasScope('read')")
			.antMatchers(HttpMethod.POST, "/ns/**").access("#oauth2.hasScope('write')")
			.antMatchers(HttpMethod.PATCH, "/ns/**").access("#oauth2.hasScope('write')")
			.antMatchers(HttpMethod.PUT, "/ns/**").access("#oauth2.hasScope('write')")
			.antMatchers(HttpMethod.DELETE, "/ns/**").access("#oauth2.hasScope('write')")
			.anyRequest().permitAll()
			.and().headers().frameOptions().disable();
	}
	@Override
	public void configure(ResourceServerSecurityConfigurer resources) throws Exception {
		resources.resourceId("resource");
	}
}*/