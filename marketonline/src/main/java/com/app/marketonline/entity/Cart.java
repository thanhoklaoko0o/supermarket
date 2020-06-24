package com.app.marketonline.entity;

import lombok.Data;

@Data
public class Cart {

	private Integer idProduct;
	
	private String nameProduct;
	
	private int quatity;
	
	private Long price;
}
