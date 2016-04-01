/*package com.ns.base.base;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Component;

import com.ns.base.dto.UserCredentials;

@Component
public class CustomAuthenticationProvider implements AuthenticationProvider {
	 
    @Autowired
    private UserDetailsService userDetailService;
    
    @Autowired
    private Md5PasswordEncoder md5PasswordEncoder;
 
    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String username = authentication.getName();
        String password = (String) authentication.getCredentials();
 
        UserCredentials user = (UserCredentials) userDetailService.loadUserByUsername(username);
 
        if (user == null) {
            throw new BadCredentialsException("Username not found.");
        }
 
        String encodePassword = md5PasswordEncoder.encodePassword(password, user.getSalt());
        
        if (!encodePassword.equals(user.getPassword())) {
            throw new BadCredentialsException("Wrong password.");
        }
 
        Collection<? extends GrantedAuthority> authorities = user.getAuthorities();
 
        return new UsernamePasswordAuthenticationToken(user, encodePassword, authorities);
    }
 
    @Override
    public boolean supports(Class<?> arg0) {
        return true;
    }
}*/