package com.app.marketonline.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.marketonline.entity.Category;
import com.app.marketonline.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {

	/**
	 * Get Top 4 product
	 */
	List<Product> findTop4ByOrderByDateCreatedDesc();
	/**
	 * Get product by category
	 */
	List<Product> findAllByCategory(Category cateory);
	/**
	 * search by name
	 */
	List<Product> findAllByNameContaining(String name);

//	List<Product> findProductById(Integer id);

	List<Product> findTop4By();

}
