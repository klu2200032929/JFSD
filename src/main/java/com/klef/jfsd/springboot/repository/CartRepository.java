package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.springboot.model.Cart;

public interface CartRepository extends JpaRepository<Cart, Long>{

	public List<Cart> findByBuyerId(Long buyerId);
}
