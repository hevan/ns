package com.ns.base.service;

import java.util.Arrays;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.oauth2.provider.ClientDetails;
import org.springframework.security.oauth2.provider.ClientDetailsService;
import org.springframework.security.oauth2.provider.ClientRegistrationException;
import org.springframework.security.oauth2.provider.client.BaseClientDetails;
import org.springframework.stereotype.Service;

import com.ns.base.domain.OauthClientDetails;
import com.ns.base.repository.OauthClientDetailsRepository;

@Service("oauthClientDetailsService")
public class OauthClientDetailsService implements ClientDetailsService{

	 private final Logger log = LoggerFactory.getLogger(OauthClientDetailsService.class);

    @Autowired
    private OauthClientDetailsRepository oauthClientDetailsRepository;
    
    public ClientDetails loadClientByClientId(String clientId) throws ClientRegistrationException
    {
    	OauthClientDetails oauthClientDetails = oauthClientDetailsRepository.findOne(clientId);
    	log.info("Load client {}", clientId);
    	BaseClientDetails details = new BaseClientDetails();
    	details.setClientId(oauthClientDetails.getClientId());
    	details.setAuthorizedGrantTypes(Arrays.asList(oauthClientDetails.getAuthorizedGrantTypes().split(",")));
    	details.setScope(Arrays.asList(oauthClientDetails.getScope().split(",")));
    	details.setAutoApproveScopes(Arrays.asList("trust"));
    	details.setAuthorities(Arrays.asList(new SimpleGrantedAuthority("CLIENT_ROLE1")));
    	details.setResourceIds(Arrays.asList(oauthClientDetails.getResourceIds().split(",")));
    	details.setClientSecret(oauthClientDetails.getClientSecret());
  
    	return details;
    }
	    	    
}
