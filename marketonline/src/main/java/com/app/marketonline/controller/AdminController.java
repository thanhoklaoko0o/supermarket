package com.app.marketonline.controller;

import com.app.marketonline.entity.Bill;
import com.app.marketonline.entity.Product;
import com.app.marketonline.entity.ProductModel;
import com.app.marketonline.entity.User;
import com.app.marketonline.service.BillService;
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

	@Autowired
	private BillService billService;

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

		if (product.getImageUrl() != null) {
			newProduct.setImageUrl("/assets/user/images/" + product.getImageUrl());
		}
		newProduct.setDateCreated(new Date());
		newProduct.setCategory(categoryService.getCategoryById(product.getCategory()));


		productService.saveProduct(newProduct);

		return "redirect:/trang-quan-ly";
	}

	@GetMapping("/update-product-view")
	public String updateProductView(@RequestParam Integer id, ModelMap modelMap) {
		modelMap.addAttribute("categoryList", categoryService.getAll());
		modelMap.addAttribute("updateProduct", productService.getProductById(id));
		return "forward:/trang-quan-ly";
	}

	@GetMapping("/delete-product")
	public String deleteProduct(@RequestParam Integer id) {

		productService.deleteProduct(productService.getProductById(id));
		return "redirect:/trang-quan-ly";
	}

	@GetMapping("/bill-management")
	public String billManagement(ModelMap modelMap) {

		modelMap.addAttribute("billList", billService.getAll());
		return "bill-management";
	}
}
