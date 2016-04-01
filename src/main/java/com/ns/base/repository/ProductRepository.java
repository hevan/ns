package com.ns.base.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ns.base.domain.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {

}
