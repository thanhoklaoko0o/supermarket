package com.app.marketonline.controller;

import com.app.marketonline.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ProductController {

	@Autowired
	ProductService productService;

	@GetMapping("/products")
	public String productView(ModelMap modelMap) {
		modelMap.addAttribute("productList", productService.getAll());
		return "products";
	}

	@GetMapping("/products/{id}")
	public String productDetail(ModelMap modelMap, @PathVariable("id") Integer id) {
		modelMap.addAttribute("product", productService.getProductById(id));
		return "product_detail";
	}
}
