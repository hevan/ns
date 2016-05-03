package com.ns.base.controller;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ns.base.domain.Authority;
import com.ns.base.domain.User;
import com.ns.base.service.UserInfoService;

@RestController
@RequestMapping("/common")
public class CommonController {

	@Autowired
	private UserInfoService userService;
	
	 //-------------------Retrieve Single User--------------------------------------------------------
    @RequestMapping(value = "/findUserByName", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<User> findUserByName(String username) {
        
        User dbUser = userService.findByUsername(username);
        if (dbUser == null) {
            return new ResponseEntity<User>(HttpStatus.NOT_FOUND);
        }
        
        return new ResponseEntity<User>(dbUser, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/register", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<String> registerUser(@RequestBody User user) {
        user.setActivated(true);
       
        try
        {
	        Authority authority = new Authority("ROLE_USER");
	        Set<Authority> authorities = new HashSet<Authority>();
	        authorities.add(authority);
	        user.setAuthorities(authorities);
	    	userService.createUser(user);
	    	return new ResponseEntity<String>("success", HttpStatus.OK);
        }catch(Exception e)
        {
        	return new ResponseEntity<String>("error", HttpStatus.NOT_IMPLEMENTED);
        }
       
    }
    
    
    
 
}
