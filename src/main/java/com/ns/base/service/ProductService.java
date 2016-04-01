package com.ns.base.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ns.base.domain.Product;
import com.ns.base.repository.ProductRepository;

@Service
public class ProductService {

	@Autowired
	private ProductRepository productRepository;
	
	public boolean addProduct(Product product) throws Exception
	{
		try
		{
			productRepository.save(product);
		}catch(Exception e)
		{
			throw new Exception(e.getMessage());
		}
		
		return true;
	}
}
