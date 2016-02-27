package com.ns.base.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ns.base.repository.OauthClientDetailsRepository;
import com.ns.base.repository.UserRepository;
import com.ns.base.security.UserDetailsService;

@Service
public class OauthClientDetailsService {

	 private final Logger log = LoggerFactory.getLogger(OauthClientDetailsService.class);

    @Autowired
    private OauthClientDetailsRepository oauthClientDetailsRepository;
    
    
	    
	    
}
