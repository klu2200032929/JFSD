package com.klef.jfsd.springboot.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Buyer;
import com.klef.jfsd.springboot.model.Cart;
import com.klef.jfsd.springboot.model.Farmer;
import com.klef.jfsd.springboot.model.Help;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.service.FarmerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


@Controller
public class FarmerController {
	@Autowired
	private FarmerService farmerService;
	
	
	@GetMapping("farmer-login")
	public ModelAndView home( ) {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("farmer-login");
		return mv;
	}
	
	
	
	@PostMapping("checkfarmerlogin")
	public ModelAndView checkfarmerlogin(HttpServletRequest request)
	{
		
		ModelAndView mv = new ModelAndView();
		String email= request.getParameter("email");
		String password = request.getParameter("password");
		
		Farmer farmer = farmerService.checkfarmerlogin(email, password);
		if(farmer!=null)
		{
			HttpSession session=request.getSession();
			session.setAttribute("farmer", farmer);
			mv.setViewName("farmer-dashboard");
		}
		else 
		{
			
			mv.addObject("message", "Login Failed");
			mv.setViewName("farmer-login");
		}
			return mv;			
	}
	
	
	@PostMapping("insertfarmer")
    public ModelAndView insertfarmer(HttpServletRequest request) {

		
		String username = request.getParameter("username");
        String email = request.getParameter("email");
        String location = request.getParameter("location");
        String contactno = request.getParameter("contactno");

        String password = request.getParameter("password");

        Farmer farmer = new Farmer();
        farmer.setUsername(username);
        farmer.setEmail(email);
        
        farmer.setLocation(location);
        farmer.setContactno(contactno);
        farmer.setPassword(password);
        
        String message=farmerService.farmerRegistration(farmer);
        
        ModelAndView mv =new ModelAndView();
        
        mv.setViewName("index");
        mv.addObject("message", message);
        return mv;
    }
	
	@GetMapping("viewProfile")
	public ModelAndView farmerProfile()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewProfile");
		return mv;
	}
	
	@GetMapping("farmerlogout")
	public ModelAndView farmerlogout( ) {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	
	
	@GetMapping("addProduct")
	public String addproduct()
	{	
		return "addProduct";
	}
	
	@PostMapping("insertproduct")
	public ModelAndView insertproduct(HttpServletRequest request,@RequestParam("pimage") MultipartFile file) throws IOException, SerialException, SQLException
	{
		HttpSession session = request.getSession();
	    Farmer loggedFarmer = (Farmer) session.getAttribute("farmer");

	    if (loggedFarmer == null) {
	        ModelAndView mv = new ModelAndView("farmer-login");
	        mv.addObject("message", "Please log in first!");
	        return mv;
	    }
		String name= request.getParameter("pname");
		Double cost = Double.parseDouble(request.getParameter("pcost"));
		String description = request.getParameter("pdescription");
		byte[] bytes =	file.getBytes();
		
		Blob blob =	new javax.sql.rowset.serial.SerialBlob(bytes);
		
		Product p = new Product();
		p.setCost(cost);
		p.setDescription(description);
		p.setName(name);
		p.setImage(blob);
		p.setFarmer(loggedFarmer);
		
		String message = farmerService.addProduct(p);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("productsuccess");
		mv.addObject("message", message);
		
		
		return mv;
	}
	
	@GetMapping("ContactUs")
	public String ContactUs()
	{	
		return "ContactUs";
	}


	@PostMapping("inserthelp")
    public ModelAndView inserthelp(HttpServletRequest request) {

		
		String name = request.getParameter("name");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");


        Help help = new Help();
        help.setUname(name);
        help.setEmail(email);
        help.setSubject(subject);
        help.setMessage(message);
        
        String m=farmerService.ContactUs(help);
        
        ModelAndView mv =new ModelAndView();
        
        mv.setViewName("ContactUs_success");
        mv.addObject("m", m);
        return mv;
    }
	
	
	@GetMapping("viewProducts")
	public ModelAndView viewProducts()
	{
		ModelAndView mv= new ModelAndView();
		mv.setViewName("viewProducts");
		List<Product> products = farmerService.viewAllProducts();
		mv.addObject("products", products);
		return mv;
	}
	
	
	@GetMapping("displayproductimage")
	public ResponseEntity<byte[]> displayproductimage(@RequestParam Long id) throws SQLException
	{
		Product product = farmerService.displayProductById(id);
		
		byte[] imagebytes = null;
		
		imagebytes = product.getImage().getBytes(1,(int)product.getImage().length());
		
		return	ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imagebytes);
	}
	
	
	
	@GetMapping("editProfile")
	public ModelAndView updateprofile()
	{
		ModelAndView mv=new ModelAndView("editProfile");
		return mv;
	}
	
	@PostMapping("update")
	public ModelAndView update(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		
		
		Long id = Long.parseLong(request.getParameter("id"));
		String username = request.getParameter("username");
        String location = request.getParameter("location");
        String contactno = request.getParameter("contactno");
        String password = request.getParameter("password");

        Farmer farmer = new Farmer();
        farmer.setId(id);
        farmer.setUsername(username);
        farmer.setContactno(contactno);
        farmer.setLocation(location);
        farmer.setPassword(password);

        farmerService.updateFarmer(farmer);
        
        
        mv.setViewName("index.jsp");
        
		return mv;
	}
	
	@GetMapping("deleteProduct")
	public ModelAndView deleteProduct(HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("deleteProduct");

	    // Get the logged-in farmer's details from the session
	    HttpSession session = request.getSession();
	    Farmer loggedFarmer = (Farmer) session.getAttribute("farmer");

	    // If the farmer is not logged in, redirect to the login page
	    if (loggedFarmer == null) {
	        mv.setViewName("farmer-login");
	        mv.addObject("message", "Please log in first!");
	        return mv;
	    }

	    // Fetch the products added by the logged-in farmer
	    List<Product> products = farmerService.viewProductsByFarmerId(loggedFarmer.getId());
	    mv.addObject("products", products);

	    return mv;
	}

	
	
	@GetMapping("delete1")
	public String delete1(@RequestParam Long id)
	{
		farmerService.deleteProduct(id);
		return "redirect:/deleteProduct";
	}
	
	@GetMapping("helpSupport")
	public ModelAndView helpsSupport()
	{
		ModelAndView mv= new ModelAndView();
		mv.setViewName("helpSupport");
		List<Help> helps = farmerService.viewAllHelps();
		mv.addObject("helps", helps);
		return mv;
	}
	@GetMapping("delete2")
	public String delete2(@RequestParam Long id)
	{
		farmerService.helpSupport(id);
		return "redirect:/helpSupport";
	}
	
	@GetMapping("productSearch")
	public ModelAndView productSearch()
	{
		ModelAndView mv = new ModelAndView();
		List<Product> products=farmerService.viewAllProducts();
		mv.addObject("productlist", products);
		mv.setViewName("productSearch");
		return mv;
	}

	
	@PostMapping("displayproduct")
	public ModelAndView displayproduct(HttpServletRequest request)
	{
		Long id=Long.parseLong(request.getParameter("id"));
		Product product=farmerService.displayProductById(id);
		ModelAndView mv=new ModelAndView("displayproduct");
		mv.addObject("product",product);
		return mv;
	}
	
	@GetMapping("displayproductimage1")
	public ResponseEntity<byte[]> displayproductimage1(@RequestParam Long id) throws SQLException
	{
		Product product = farmerService.displayProductById(id);
		
		byte[] imagebytes = null;
		
		imagebytes = product.getImage().getBytes(1,(int)product.getImage().length());
		
		return	ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imagebytes);
	}
	
	
	
	
}
