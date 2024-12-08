package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Cart;
import com.klef.jfsd.springboot.model.Farmer;
import com.klef.jfsd.springboot.model.Help;
import com.klef.jfsd.springboot.model.Product;

@Service
public interface FarmerService {

	public Farmer checkfarmerlogin(String email,String password);
	public String farmerRegistration(Farmer farmer);

	public String addProduct(Product product);
	public List<Product> viewAllProducts(); 
	public Product displayProductById(Long pid);
	public String ContactUs(Help help);
	public String updateFarmer(Farmer farmer);
	public List<Help> viewAllHelps(); 
	public String deleteProduct(Long id);
	public String helpSupport(Long id);
	public List<Product> viewProductsByFarmerId(Long id);
	
	
	
}
