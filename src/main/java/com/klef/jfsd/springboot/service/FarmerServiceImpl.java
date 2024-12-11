package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Buyer;
import com.klef.jfsd.springboot.model.Cart;
import com.klef.jfsd.springboot.model.Farmer;
import com.klef.jfsd.springboot.model.Help;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.repository.CartRepository;
import com.klef.jfsd.springboot.repository.FarmerRepository;
import com.klef.jfsd.springboot.repository.HelpRepository;
import com.klef.jfsd.springboot.repository.ProductRepository;

@Service
public class FarmerServiceImpl implements FarmerService{

	@Autowired
	private FarmerRepository farmerRepository;
	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private HelpRepository helpRepository;
	
	@Autowired
	private CartRepository cartRepository;
	
	@Override
	public Farmer checkfarmerlogin(String email, String password) {
		// TODO Auto-generated method stub
		return farmerRepository.checkfarmerlogin(email,password);
	}
	@Override
	public String farmerRegistration(Farmer farmer) {
		farmerRepository.save(farmer);
		return "Farmer Registered Successfully";
	}
	@Override
	public String addProduct(Product product) {
		productRepository.save(product);
		return "Product Added Successfully!..";
	}


	@Override
	public List<Product> viewAllProducts() {
		return productRepository.findAll();
	}
	
	
	@Override
	public Product displayProductById(Long pid) {
		return productRepository.findById(pid).get();
	}
	@Override
	public String updateFarmer(Farmer farmer) {
		Farmer f =	farmerRepository.findById(farmer.getId()).get();
		f.setUsername(farmer.getUsername());
		f.setContactno(farmer.getContactno());
		f.setLocation(farmer.getLocation());
		f.setPassword(farmer.getPassword());
		
		farmerRepository.save(f);
		return "Farmer Updated Successfully";
	}
	@Override
	public String deleteProduct(Long id) {
		productRepository.deleteById(id);
		return "Product Deleted Successfully";
	}
	
	
	@Override
	public String ContactUs(Help help) {
		helpRepository.save(help);
		return "Message sent Successfully!..";
	}
	
	@Override
	public List<Help> viewAllHelps() {
		return helpRepository.findAll();
	}
	
	
	@Override
	public String helpSupport(Long id) {
		helpRepository.deleteById(id);
		return "Message Deleted Successfully";
	}
	
	
	public List<Product> viewProductsByFarmerId(Long farmerId) {
	    return productRepository.findByFarmerId(farmerId); // Assuming you have a method in your repository to fetch products by farmer ID
	}

	
}
