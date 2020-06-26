package com.app.marketonline.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.marketonline.entity.User;
import com.app.marketonline.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository repository;
	
	public User findUserByUserNameAndPassword(String userName, String password) {
		return repository.findUserByUserNameAndPassword(userName, password);
	}
	
	public User findUserByUserName(String userName) {
		return repository.findUserByUserName(userName);
	}
	
	public User addUser(User user) {
		user.setRole("user");
		return repository.save(user);
	}
}
