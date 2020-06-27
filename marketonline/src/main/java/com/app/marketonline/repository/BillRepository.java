package com.app.marketonline.repository;

import com.app.marketonline.entity.Bill;
import org.springframework.data.jpa.repository.JpaRepository;


public interface BillRepository extends JpaRepository<Bill, Integer> {

}
