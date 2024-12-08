package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

//import java.util.List;

//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
//import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Buyer;
import com.klef.jfsd.springboot.model.Farmer;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.BuyerRepository;
import com.klef.jfsd.springboot.repository.FarmerRepository;
import com.klef.jfsd.springboot.repository.ProductRepository;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminRepository adminRepository;
	@Autowired
	private FarmerRepository farmerRepository;
	@Autowired
	private BuyerRepository buyerRepository;
	
	private ProductRepository productRepository;
	@Override
	public Admin checkadminlogin(String uname, String pwd) {
		// TODO Auto-generated method stub
		return adminRepository.checkadminlogin(uname, pwd);
	}
	
	
	@Override
	public List<Farmer> viewAllFarmers() {

		return farmerRepository.findAll();
	}
	
	
	@Override
	public List<Buyer> viewAllBuyers()
	{
		return buyerRepository.findAll();
	}


	@Override
	public String deleteuser(Long id) {
		farmerRepository.deleteById(id);
		buyerRepository.deleteById(id);
		return "User Deleted Successfully";
	}




	@Override
	public List<Product> viewAllProducts() {
		return productRepository.findAll();
	}
	
	
	
	

}
