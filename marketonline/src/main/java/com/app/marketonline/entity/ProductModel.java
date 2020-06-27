package com.app.marketonline.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.OneToOne;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductModel {
	private Integer id;

	private String name;

	private Integer quantity;

	private String origin;

	private String imageUrl;

	private Long price;

	private Long originalPrice;

	private String description;

	private Integer category;
}
