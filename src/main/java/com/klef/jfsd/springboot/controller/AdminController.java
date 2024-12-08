package com.klef.jfsd.springboot.controller;


import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Buyer;
import com.klef.jfsd.springboot.model.Farmer;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.service.AdminService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@Controller
public class AdminController 
{
	@Autowired
	private AdminService adminService;
	@GetMapping("admin-login")
	public ModelAndView home( ) {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("admin-login");
		return mv;
	}
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		
		ModelAndView mv = new ModelAndView();
		String auname= request.getParameter("auname");
		String apwd = request.getParameter("apwd");
		
		Admin admin = adminService.checkadminlogin(auname, apwd);
		if(admin!=null)
		{
			HttpSession session = request. getSession();
			session.setAttribute("admin", admin); // admin is session object
			mv.setViewName("admin-dashboard");
		}
		else 
		{
			mv.setViewName("admin-login");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	
	
	
	@GetMapping("ViewAllUsers")
	public ModelAndView ViewAllUsers()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("ViewAllUsers");
		List<Farmer> farmers=adminService.viewAllFarmers();
		List<Buyer> buyers=adminService.viewAllBuyers();

		mv.addObject("farmerlist", farmers);
		mv.addObject("buyerlist", buyers);

		return mv;
	}
	
	
	@GetMapping("deleteuser")
	public ModelAndView deleteuser()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("deleteuser");
		List<Farmer> farmers=adminService.viewAllFarmers();
		List<Buyer> buyers=adminService.viewAllBuyers();

		mv.addObject("farmerlist", farmers);
		mv.addObject("buyerlist", buyers);

		return mv;
	}
	
	
	
	
	
	@GetMapping("delete")
	public String delete(@RequestParam Long id)
	{
		adminService.deleteuser(id);
		return "redirect:/deleteuser";
	}
	
	
	@GetMapping("AdminProfile")
	public ModelAndView adminprofile()
	{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("AdminProfile");
		return mv;
	}
	
	@GetMapping("adminlogout")
	public ModelAndView adminlogout( ) {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	
	
	
	
		
}
	

