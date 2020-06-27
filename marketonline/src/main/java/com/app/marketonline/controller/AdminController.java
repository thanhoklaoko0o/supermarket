package com.app.marketonline.controller;

import com.app.marketonline.entity.Bill;
import com.app.marketonline.entity.Product;
import com.app.marketonline.entity.ProductModel;
import com.app.marketonline.entity.User;
import com.app.marketonline.service.CategoryService;
import com.app.marketonline.service.ProductService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.time.LocalDate;
import java.util.Date;

@Controller
public class AdminController {

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private ProductService productService;

	@GetMapping("/trang-quan-ly")
	public String admin(HttpSession httpSession, ModelMap modelMap) {
		modelMap.addAttribute("productList", productService.getAll());
		modelMap.addAttribute("categoryList", categoryService.getAll());
		if(httpSession.getAttribute("userSession") != null) {
			User user = (User) httpSession.getAttribute("userSession");
			String role = user.getRole();
			if (role.equals("Admin")) {
				modelMap.addAttribute("newProduct", new Product());
				return "admin";
			}
		}
		return "redirect:login";
	}

	@PostMapping("/add-product")
	public String addProduct(@ModelAttribute ProductModel product, ModelMap modelMap) {
		modelMap.addAttribute("productList", productService.getAll());
		modelMap.addAttribute("categoryList", categoryService.getAll());
		Product newProduct = new Product();
		BeanUtils.copyProperties(product, newProduct);

		newProduct.setImageUrl("/assets/user/images" + product.getImageUrl());
		newProduct.setDateCreated(new Date());
		newProduct.setCategory(categoryService.getCategoryById(product.getCategory()));


		productService.saveProduct(newProduct);

		return "admin";
	}

	@GetMapping("/delete-product")
	public String deleteProduct(@RequestParam Integer id) {

		productService.deleteProduct(productService.getProductById(id));
		return "trangchu";
	}
}
