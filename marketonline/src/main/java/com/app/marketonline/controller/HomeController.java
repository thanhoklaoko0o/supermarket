package com.app.marketonline.controller;

import com.app.marketonline.entity.Category;
import com.app.marketonline.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import com.app.marketonline.service.CategoryService;
import com.app.marketonline.service.ProductService;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.List;

@Controller
public class HomeController {

	@Autowired
	private ProductService productService;

	@Autowired
	private CategoryService categoryService;

	@GetMapping("/home")
	public String index(ModelMap model) {
		model.addAttribute("categoryList", categoryService.getAll());
		model.addAttribute("topFourProduct", productService.getTop4Product());
		return "home";
	}
}
