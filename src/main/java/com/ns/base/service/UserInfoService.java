package com.ns.base.service;

import java.security.SecureRandom;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.stereotype.Service;

import com.ns.base.domain.User;
import com.ns.base.repository.UserRepository;

@Service
public class UserInfoService {
	private final Logger log = LoggerFactory.getLogger(CustomUserDetailsService.class);

    @Autowired
    private UserRepository userRepository;
    
    
    @Autowired
    private Md5PasswordEncoder md5PasswordEncoder;
    
    @Autowired
    private  SecureRandom secureRandom;

    
    public User findByUsername(String username) {
		return userRepository.findByUsernameCaseInsensitive(username);
	}
    
    
    
    public boolean createUser(User userCreate) {
        Object salt = secureRandom.nextLong();
        String  endcodedPassword = md5PasswordEncoder.encodePassword(userCreate.getPassword(), salt);
        
        userCreate.setSalt((Long)salt);
        userCreate.setPassword(endcodedPassword);
        
        userRepository.save(userCreate);
        
        return true;
    }
    
    
    public static void main(String args[])
    {
    	Md5PasswordEncoder md5PasswordEncoder = new Md5PasswordEncoder();
    	String endcodedPassword = md5PasswordEncoder.encodePassword("123456", 100);
    	
    	System.out.print(endcodedPassword);
        
    }
    
}
