package com.app.marketonline.service;

import com.app.marketonline.entity.Bill;
import com.app.marketonline.repository.BillRepository;
import com.app.marketonline.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class BillService {
	@Autowired
	private BillRepository billRepository;

	public void saveBill(Bill bill) {
		billRepository.save(bill);
	}

	public List<Bill> getAll() {
		return billRepository.findAll();
	}
}
