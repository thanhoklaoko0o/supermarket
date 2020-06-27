package com.app.marketonline.entity;

import lombok.Data;

@Data
public class Cart {

	private Integer idProduct;
	
	private String nameProduct;

	private String imageUrl;
	
	private int quantity;
	
	private Long price;
}
