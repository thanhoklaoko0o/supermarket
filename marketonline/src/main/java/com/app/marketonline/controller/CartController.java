package com.app.marketonline.controller;

import com.app.marketonline.entity.Bill;
import com.app.marketonline.entity.Cart;
import com.app.marketonline.entity.Product;
import com.app.marketonline.service.BillService;
import com.app.marketonline.service.CategoryService;
import com.app.marketonline.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.*;
import java.util.stream.Collectors;

@Controller
public class CartController {

	@Autowired
	private ProductService productService;

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private BillService billService;

	@PostMapping("/cart")
	public String cardView(ModelMap modelMap, HttpSession session, @RequestParam(name = "id") String data, @RequestParam String quantity ) {

		Map<String, String> mapIdQuantities = Arrays.stream(data.split("-"))
				.map(x -> x.split("\\."))
				.collect(Collectors.toMap(x -> x[0], x -> x[1]));

		List<Product> productList = productService.getAll();
		List<Cart> cartList = new ArrayList<>();


		for (String key: mapIdQuantities.keySet()) {
			for (Product product : productList) {
				if (key.equals(String.valueOf(product.getId()))) {
					Cart cart = new Cart();
					cart.setIdProduct(product.getId());
					cart.setNameProduct(product.getName());
					cart.setQuantity(Integer.valueOf(mapIdQuantities.get(key)));
					cart.setImageUrl(product.getImageUrl());
					cart.setPrice(product.getPrice() * cart.getQuantity());

					cartList.add(cart);
				}
			}
		}

		session.setAttribute("cartList", cartList);
		modelMap.addAttribute("bill", new Bill());
		modelMap.addAttribute("categoryList", categoryService.getAll());
		return "checkout";
	}

	@PostMapping("/payment")
	public String payment(@ModelAttribute Bill bill) {
		billService.saveBill(bill);
		return "home";
	}
}
