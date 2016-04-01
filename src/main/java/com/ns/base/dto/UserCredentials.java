package com.ns.base.dto;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.ns.base.domain.User;

public class UserCredentials implements UserDetails {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2887302898935080179L;
	

	private Long id;

	//private User user;

	private String username;

	private String passwordHash;
	
	private Long salt;
	

	private Collection<? extends GrantedAuthority> authorities = new ArrayList<>();
	
	private boolean accountNonExpired = true;
	
	private boolean accountNonLocked = true;
	
	private boolean credentialsNonExpired = true;
	
	private boolean enabled = true;
	
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return this.authorities;
	}

	public String getPassword() {
		return passwordHash;
	}

	public String getUsername() {
		return username;
	}

	@Override
	public boolean isAccountNonExpired() {
		return accountNonExpired;
	}

	@Override
	public boolean isAccountNonLocked() {
		return accountNonLocked;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return credentialsNonExpired;
	}

	@Override
	public boolean isEnabled() {
		return enabled;
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPasswordHash() {
		return passwordHash;
	}

	public void setPasswordHash(String passwordHash) {
		this.passwordHash = passwordHash;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setAuthorities(Collection<? extends GrantedAuthority> authorities) {
		this.authorities = authorities;
	}

	public void setAccountNonExpired(boolean accountNonExpired) {
		this.accountNonExpired = accountNonExpired;
	}

	public void setAccountNonLocked(boolean accountNonLocked) {
		this.accountNonLocked = accountNonLocked;
	}

	public void setCredentialsNonExpired(boolean credentialsNonExpired) {
		this.credentialsNonExpired = credentialsNonExpired;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	/**
	 * convert from database
	 * @param user
	 * @return
	 */
	public static  UserCredentials fromUserDetails(User user)
	{
		UserCredentials userCredentials = new UserCredentials();
		userCredentials.setId(user.getId());
		userCredentials.setAuthorities(user.getAuthorities());
		userCredentials.setUsername(user.getUsername());
		userCredentials.setPasswordHash(user.getPassword());
		userCredentials.setSalt(user.getSalt());
		return userCredentials;
	}

	public Long getSalt() {
		return salt;
	}

	public void setSalt(Long salt) {
		this.salt = salt;
	}
	
}
