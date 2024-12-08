package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Buyer;
import com.klef.jfsd.springboot.model.Cart;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.repository.BuyerRepository;
import com.klef.jfsd.springboot.repository.CartRepository;
import com.klef.jfsd.springboot.repository.ProductRepository;

@Service
public class BuyerServiceImpl implements BuyerService{

	@Autowired
	private BuyerRepository buyerRepository;
	
	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private CartRepository cartRepository;
	
	@Override
	public Buyer checkbuyerlogin(String email, String password) {
		// TODO Auto-generated method stub
		return buyerRepository.checkbuyerlogin(email, password);
	}

	@Override
	public String buyerRegistartion(Buyer buyer) {
		// TODO Auto-generated method stub
		buyerRepository.save(buyer);
		return "Buyer Registered Successfully";
	}

	@Override
    public List<Product> getProductsByBuyerLocation(String buyerLocation) {
        return productRepository.findByFarmerLocation(buyerLocation);
    }
	@Override
	public Product displayProductById(Long pid) {
		return productRepository.findById(pid).get();
	}

	@Override
	public List<Cart> viewProductsByBuyerId(Long id) {
		    return cartRepository.findByBuyerId(id); // Assuming you have a method in your repository to fetch products by farmer ID
	}
	
	

	
	@Override
	public String addProductToCart(Long buyerId, Long productId) {
	    // Fetch the buyer
	    Buyer buyer = buyerRepository.findById(buyerId).orElse(null);
	    if (buyer == null) {
	        return "Buyer not found!";
	    }

	    // Fetch the product
	    Product product = productRepository.findById(productId).orElse(null);
	    if (product == null) {
	        return "Product not found!";
	    }

	    // Create a new cart item
	    Cart cartItem = new Cart();
	    cartItem.setBuyer(buyer);
	    cartItem.setProduct(product);

	    // Save the cart item
	    cartRepository.save(cartItem);

	    return "Product added to cart successfully!";
	}

	@Override
	public String deleteCart(Long id) {
		cartRepository.deleteById(id);
		return "Product Deleted Successfully";
	}



	
	
}
