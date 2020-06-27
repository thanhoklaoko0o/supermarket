package com.app.marketonline.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.app.marketonline.entity.User;
import com.app.marketonline.service.UserService;

@Controller
public class AccountController {

	@Autowired
	private UserService userService;

	@GetMapping("/login")
	public String login() {
		return "login";
	}

	@PostMapping("/login")
	public String checkLogin(@ModelAttribute User userModel, Model model, HttpSession httpSession) {

		User user = userService.findUserByUserNameAndPassword(userModel.getUserName().trim(),
				userModel.getPassword().trim());
		if (user == null) {
			model.addAttribute("message", "Username hoac password khong dung. Dang nhap that bai !");
			return "login";
		} else {
			httpSession.setAttribute("userSession", user);
		}
		if (user.getRole().equals("Admin")) {
			return "redirect:trang-quan-ly";
		}
		return "redirect:home";
	}

	@PostMapping("/dang-ky")
	@ResponseBody
	public boolean dangKy(@RequestParam String userName, @RequestParam String password) {
		User user = userService.findUserByUserName(userName);
		if (userName.isEmpty() || password.isEmpty()) {
			return false;
		}
		if (user != null) {
			return false;
		}
		User userEn = new User();
		userEn.setUserName(userName);
		userEn.setPassword(password);
		userService.addUser(userEn);
		return true;
	}
}
