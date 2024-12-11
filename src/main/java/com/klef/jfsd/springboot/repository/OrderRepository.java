package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.springboot.model.Order;

public interface OrderRepository extends JpaRepository<Order, Long>{
	List<Order> findByBuyerId(Long buyerId);
}
