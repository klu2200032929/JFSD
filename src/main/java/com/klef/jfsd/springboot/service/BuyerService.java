package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Buyer;
import com.klef.jfsd.springboot.model.Cart;
import com.klef.jfsd.springboot.model.Product;

@Service
public interface BuyerService {
	
	
	public Buyer checkbuyerlogin(String email,String password);
	public String buyerRegistartion(Buyer buyer);

	public List<Cart> viewProductsByBuyerId(Long id);
	public Product displayProductById(Long pid);
	public List<Product> getProductsByBuyerLocation(String buyerLocation);
	public String addProductToCart(Long id, Long productId);
	public String deleteCart(Long id);
	
	
	
	public Product getProductById(Long productId);
}
