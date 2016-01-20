package com.ns.base.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.ns.base.domain.Authority;

public interface AuthorityRepository extends JpaRepository<Authority, String> {
}
