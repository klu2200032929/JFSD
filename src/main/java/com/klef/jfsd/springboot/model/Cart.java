package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "Cart_table")
public class Cart {
	
	@Id
	@Column(name="Cart_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long Id;
	@ManyToOne(fetch = FetchType.LAZY)  // Many products belong to one farmer
	 @JoinColumn(name = "buyer_id", nullable = false)  // Join column to link with farmer table
	 private Buyer buyer;
	@ManyToOne(fetch = FetchType.LAZY)  // Many products belong to one farmer
	 @JoinColumn(name = "id", nullable = false)  // Join column to link with farmer table
	 private Product product;
	
	public Long getId() {
		return Id;
	}
	public void setId(Long id) {
		Id = id;
	}
	public Buyer getBuyer() {
		return buyer;
	}
	public void setBuyer(Buyer buyer) {
		this.buyer = buyer;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	
	
}
