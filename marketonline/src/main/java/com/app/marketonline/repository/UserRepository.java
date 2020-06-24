package com.app.marketonline.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.marketonline.entity.User;

public interface UserRepository extends JpaRepository<User, Integer> {

}
