package com.app.marketonline.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.marketonline.entity.Category;
import com.app.marketonline.entity.Product;
import com.app.marketonline.repository.ProductRepository;

@Service
public class ProductService {

	@Autowired
	private ProductRepository productRepository;
	
	public List<Product> getTop4Product() {
		return productRepository.findTop4ByOrderByDateCreatedDesc();
	}
	
	public List<Product> getAllByCategory(Category category) {
		return productRepository.findAllByCategory(category);
	}
	
	public List<Product> getAllByNameContaining(String name) {
		return productRepository.findAllByNameContaining(name);
	}
}
