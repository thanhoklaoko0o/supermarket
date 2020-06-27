package com.app.marketonline.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import com.app.marketonline.service.CategoryService;
import com.app.marketonline.service.ProductService;

@Controller
public class HomeController {

	@Autowired
	private ProductService productService;

	@Autowired
	private CategoryService categoryService;

	@GetMapping(value = {"/home", "/"})
	public String index(ModelMap model) {
		model.addAttribute("categoryList", categoryService.getAll());
		model.addAttribute("topFourProduct", productService.getTop4Product());
		model.addAttribute("username", null);
		return "home";
	}
}
