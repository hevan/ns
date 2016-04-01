package com.ns.base.base;

import java.security.KeyPair;
import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.core.io.ClassPathResource;
import org.springframework.security.oauth2.common.DefaultOAuth2AccessToken;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.security.oauth2.provider.token.store.JwtAccessTokenConverter;
import org.springframework.security.oauth2.provider.token.store.KeyStoreKeyFactory;

import com.ns.base.dto.UserCredentials;

public class CustomJwtTokenConverter extends JwtAccessTokenConverter { 

 
 	public CustomJwtTokenConverter() {
		super();
		KeyPair keyPair = new KeyStoreKeyFactory(
				new ClassPathResource("keystore.jks"), "foobar".toCharArray())
				.getKeyPair("test");
		this.setKeyPair(keyPair);
	}

	@Override 
 	public OAuth2AccessToken enhance(OAuth2AccessToken accessToken, OAuth2Authentication authentication) { 
 		Map<String, Object> info = new LinkedHashMap<>(accessToken.getAdditionalInformation()); 
 
 		info.put("user_id", ((UserCredentials) authentication.getPrincipal()).getId()); 
 

 		DefaultOAuth2AccessToken customAccessToken = new DefaultOAuth2AccessToken(accessToken); 
 		customAccessToken.setAdditionalInformation(info); 
 		return super.enhance(customAccessToken, authentication); 
 	} 
 } 

