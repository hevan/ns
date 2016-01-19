package com.ns.base.base.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.ns.base.base.domain.Authority;

public interface AuthorityRepository extends JpaRepository<Authority, String> {
}
