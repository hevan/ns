package com.ns.base.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.ns.base.domain.OauthRefreshToken;

public interface OauthRefreshTokenRepository extends JpaRepository<OauthRefreshToken, Long>{
	@Query("SELECT u FROM OauthRefreshToken u WHERE u.tokenId = :tokenId")
	OauthRefreshToken findByTokenId(@Param("tokenId") String tokenId);
}
