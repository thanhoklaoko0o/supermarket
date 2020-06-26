package com.app.marketonline.controller;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;

@Controller
public class CartController {

	@PostMapping("/cart")
	public String cardView(ModelMap modelMap, HttpSession session) {
		return "checkout";
	}
}
