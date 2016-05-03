package com.ns.base.service;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collection;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.ns.base.domain.Authority;
import com.ns.base.domain.User;
import com.ns.base.dto.UserCredentials;
import com.ns.base.repository.UserRepository;
import com.ns.base.security.UserNotActivatedException;



//@Service
@Component
public class CustomUserDetailsService implements UserDetailsService {

    private final Logger log = LoggerFactory.getLogger(CustomUserDetailsService.class);

    @Autowired
    private UserRepository userRepository;
    
   
    @Override
    @Transactional
    public UserDetails loadUserByUsername(final String login) {

        log.debug("Authenticating {}", login);
        String lowercaseLogin = login.toLowerCase();

        User userFromDatabase;
        if(lowercaseLogin.contains("@")) {
            userFromDatabase = userRepository.findByEmail(lowercaseLogin);
        } else {
            userFromDatabase = userRepository.findByUsernameCaseInsensitive(lowercaseLogin);
        }

        if (userFromDatabase == null) {
            throw new UsernameNotFoundException("User " + lowercaseLogin + " was not found in the database");
        } else if (!userFromDatabase.isActivated()) {
            throw new UserNotActivatedException("User " + lowercaseLogin + " is not activated");
        }

       Collection<GrantedAuthority> grantedAuthorities = new ArrayList<>();
        for (Authority authority : userFromDatabase.getAuthorities()) {
            GrantedAuthority grantedAuthority = new SimpleGrantedAuthority(authority.getName());
            grantedAuthorities.add(grantedAuthority);
        }

        UserCredentials userCredentials = UserCredentials.fromUserDetails(userFromDatabase);
        return userCredentials;
        
      //return new org.springframework.security.core.userdetails.User(userFromDatabase.getUsername(), userFromDatabase.getPassword(), grantedAuthorities);
    }
    
   
    
    


	public User findByUsername(String username) {
		return userRepository.findByUsernameCaseInsensitive(username);
	}
}
