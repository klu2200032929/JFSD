package com.klef.jfsd.springboot.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Buyer;
import com.klef.jfsd.springboot.model.Cart;
import com.klef.jfsd.springboot.model.Farmer;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.service.BuyerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class BuyerController {
	@Autowired
	private BuyerService buyerService;
	
	
	@GetMapping("buyer-login")
	public ModelAndView home( ) {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("buyer-login");
		return mv;
	}
	@PostMapping("checkbuyerlogin")
	public ModelAndView checkbuyerlogin(HttpServletRequest request)
	{
		
		ModelAndView mv = new ModelAndView();
		String email= request.getParameter("email");
		String password = request.getParameter("password");
		
		Buyer buyer = buyerService.checkbuyerlogin(email, password);
		if(buyer!=null)
		{
			HttpSession session=request.getSession();
			session.setAttribute("buyer", buyer);
			mv.setViewName("buyer-dashboard");
		}
		else 
		{
			mv.setViewName("buyer-login");
			mv.addObject("message", "Login Failed");
		}
			return mv;
	}
	
	
	
	@PostMapping("/insertbuyer")
    public ModelAndView insertbuyer(HttpServletRequest request) {

		
		String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String location = request.getParameter("location");
        String contactno = request.getParameter("contactno");

        Buyer buyer = new Buyer();
        buyer.setUsername(username);
        buyer.setEmail(email);
        buyer.setPassword(password);
        buyer.setLocation(location);
        buyer.setContactno(contactno);

        String message=buyerService.buyerRegistartion(buyer);
        
        ModelAndView mv =new ModelAndView();
        
        mv.setViewName("buyer-login");
        mv.addObject("message", message);
        return mv;
    }
	
	@GetMapping("BuyerProfile")
	public ModelAndView buyerProfile()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("BuyerProfile");
		return mv;
	}
	

	@GetMapping("productBrowsing")
	public ModelAndView productBrowsing(HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("productBrowsing");

	    // Get the logged-in buyer's details from the session
	    HttpSession session = request.getSession();
	    Buyer loggedBuyer = (Buyer) session.getAttribute("buyer");

	    // If the buyer is not logged in, redirect to the login page
	    if (loggedBuyer == null) {
	        mv.setViewName("buyer-login");
	        mv.addObject("message", "Please log in first!");
	        return mv;
	    }

	    // Retrieve the buyer's location
	    String buyerLocation = loggedBuyer.getLocation();

	    // Fetch products whose farmer's location matches the buyer's location
	    List<Product> products = buyerService.getProductsByBuyerLocation(buyerLocation);

	    mv.addObject("products", products);
	    return mv;
	}

	
	
	@GetMapping("productimage")
	public ResponseEntity<byte[]> productimage(@RequestParam Long id) throws SQLException
	{
		Product product = buyerService.displayProductById(id);
		
		byte[] imagebytes = null;
		
		imagebytes = product.getImage().getBytes(1,(int)product.getImage().length());
		
		return	ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imagebytes);
	}

	
	@GetMapping("buyerlogout")
	public ModelAndView buyerlogout( ) {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("buyer-login");
		return mv;
	}
	
	
	@PostMapping("addtocart")
	public String addToCart(HttpServletRequest request, @RequestParam Long productId) {
	    HttpSession session = request.getSession();
	    Buyer loggedBuyer = (Buyer) session.getAttribute("buyer");

	    // If the buyer is not logged in, redirect to the login page
	    if (loggedBuyer == null) {
	        return "redirect:/buyer-login";
	    }

	    // Add product to cart
	    String message = buyerService.addProductToCart(loggedBuyer.getId(), productId);

	    session.setAttribute("message", message);
	    return "redirect:/productBrowsing";
	}

	@GetMapping("viewcart")
	public ModelAndView viewcart(HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("viewcart");

	    // Get the logged-in farmer's details from the session
	    HttpSession session = request.getSession();
	    Buyer loggedBuyer = (Buyer) session.getAttribute("buyer");

	    // If the farmer is not logged in, redirect to the login page
	    if (loggedBuyer == null) {
	        mv.setViewName("buyer-login");
	        mv.addObject("message", "Please log in first!");
	        return mv;
	    }

	    // Fetch the products added by the logged-in farmer
	    List<Cart> carts = buyerService.viewProductsByBuyerId(loggedBuyer.getId());
	    mv.addObject("carts", carts);

	    return mv;
	}
	
	@GetMapping("delete5")
	public String delete5(@RequestParam Long id)
	{
		buyerService.deleteCart(id);
		return "redirect:/viewcart";
	}
	
	
}
