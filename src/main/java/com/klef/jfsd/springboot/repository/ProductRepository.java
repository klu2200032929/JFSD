package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long>{

	public List<Product> findByFarmerId(Long farmerId);
	    @Query("SELECT p FROM Product p WHERE p.farmer.location = :location")
	    List<Product> findByFarmerLocation(@Param("location") String location);
}