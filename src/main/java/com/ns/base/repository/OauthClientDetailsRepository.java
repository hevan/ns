package com.ns.base.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ns.base.domain.OauthClientDetails;

public interface OauthClientDetailsRepository extends JpaRepository<OauthClientDetails, String> {

}
