package com.klef.jfsd.springboot.service;

import java.util.List;

//import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Buyer;
import com.klef.jfsd.springboot.model.Farmer;
import com.klef.jfsd.springboot.model.Product;

@Service
public interface AdminService {
	
	public List<Farmer> viewAllFarmers();
	public List<Buyer> viewAllBuyers();
	public Admin checkadminlogin(String uname,String pwd);
	
	public String deleteuser(Long id);
	public List<Product> viewAllProducts(); 
}
