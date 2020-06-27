package com.app.marketonline.entity;

import java.util.Date;

import javax.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "product")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	private Integer id;

	@Column(name = "name")
	private String name;

	@Column(name = "quantity")
	private Integer quantity;

	@Column(name = "origin")
	private String origin;

	@Column(name = "imageUrl")
	private String imageUrl;

	@Column(name = "price")
	private Long price;

	@Column(name = "original_price")
	private Long originalPrice;

	@Column(length = 255)
	private String description;

	@Column(name = "date_created")
	private Date dateCreated;

	@ManyToOne
	@JoinColumn(name="category")
	private Category category;
}
