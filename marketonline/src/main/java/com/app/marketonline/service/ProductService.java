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
//		return productRepository.findTop4ByOrderByDateCreatedDesc();
		return productRepository.findTop4By();
	}

	public List<Product> getAll() {
		return productRepository.findAll();
	}

	public List<Product> getAllByCategory(Category category) {
		return productRepository.findAllByCategory(category);
	}
	
	public List<Product> getAllByNameContaining(String name) {
		return productRepository.findAllByNameContaining(name);
	}

	public Product getProductById(Integer id) {
		return productRepository.findById(id).get();
	}
}
