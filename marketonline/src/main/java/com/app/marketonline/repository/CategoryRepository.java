package com.app.marketonline.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.marketonline.entity.Category;

public interface CategoryRepository extends JpaRepository<Category, Integer> {

}
