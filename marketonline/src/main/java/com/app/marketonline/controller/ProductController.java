package com.app.marketonline.controller;

import com.app.marketonline.entity.Product;
import com.app.marketonline.service.CategoryService;
import com.app.marketonline.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProductController {

	@Autowired
	ProductService productService;

	@Autowired
	private CategoryService categoryService;

	@GetMapping("/products")
	public String productView(ModelMap modelMap, @RequestParam(name = "category") Integer categoryId) {
		modelMap.addAttribute("categoryList", categoryService.getAll());
		modelMap.addAttribute("productList", categoryService.getCategoryById(categoryId).getProducts());


		return "products";
	}

	@GetMapping("/products/{id}")
	public String productDetail(ModelMap modelMap, @PathVariable("id") Integer id) {
		modelMap.addAttribute("categoryList", categoryService.getAll());

		Product product = productService.getProductById(id);
		modelMap.addAttribute("product", product);
		modelMap.addAttribute("topFourProduct", productService.getTop4Product());
		return "product_detail";
	}
}
