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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Cart;
import com.klef.jfsd.springboot.model.Farmer;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.service.FarmerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class FarmerController {
    @Autowired
    private FarmerService farmerService;

    @GetMapping("farmer-login")
    public ModelAndView farmerLogin() {
        return new ModelAndView("farmer-login");
    }

    @PostMapping("checkfarmerlogin")
    public ModelAndView checkFarmerLogin(HttpServletRequest request) {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        Farmer farmer = farmerService.checkfarmerlogin(email, password);
        ModelAndView mv = new ModelAndView();
        
        if (farmer != null) {
            HttpSession session = request.getSession();
            session.setAttribute("farmer", farmer);
            mv.setViewName("farmer-dashboard");
        } else {
            mv.addObject("message", "Login Failed");
            mv.setViewName("farmer-login");
        }
        
        return mv;
    }

    @PostMapping("insertfarmer")
    public ModelAndView insertFarmer(HttpServletRequest request) {
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

        String message = farmerService.farmerRegistration(farmer);
        ModelAndView mv = new ModelAndView("index");
        mv.addObject("message", message);
        return mv;
    }

    @GetMapping("viewProfile")
    public ModelAndView viewProfile() {
        return new ModelAndView("viewProfile");
    }

    @GetMapping("farmerlogout")
    public ModelAndView farmerLogout() {
        return new ModelAndView("index");
    }

    @GetMapping("addProduct")
    public String addProduct() {
        return "addProduct";
    }

    @PostMapping("insertproduct")
    public ModelAndView insertProduct(HttpServletRequest request, @RequestParam("pimage") MultipartFile file) 
            throws IOException, SerialException, SQLException {
        HttpSession session = request.getSession();
        Farmer loggedFarmer = (Farmer) session.getAttribute("farmer");

        if (loggedFarmer == null) {
            ModelAndView mv = new ModelAndView("farmer-login");
            mv.addObject("message", "Please log in first!");
            return mv;
        }

        String name = request.getParameter("pname");
        Double cost = Double.parseDouble(request.getParameter("pcost"));
        String description = request.getParameter("pdescription");
        byte[] bytes = file.getBytes();
        Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);

        Product product = new Product();
        product.setName(name);
        product.setCost(cost);
        product.setDescription(description);
        product.setImage(blob);
        product.setFarmer(loggedFarmer);

        String message = farmerService.addProduct(product);

        ModelAndView mv = new ModelAndView("productsuccess");
        mv.addObject("message", message);
        return mv;
    }

    @GetMapping("deleteProduct")
    public ModelAndView deleteProduct(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView("deleteProduct");
        HttpSession session = request.getSession();

        Farmer loggedFarmer = (Farmer) session.getAttribute("farmer");
        Object admin = session.getAttribute("admin"); // Assuming admin session object is set similarly

        if (loggedFarmer == null && admin == null) {
            mv.setViewName("farmer-login");
            mv.addObject("message", "Please log in first!");
            return mv;
        }

        List<Product> products;

        if (admin != null) {
            // If admin is logged in, show all products
            products = farmerService.viewAllProducts();
        } else {
            // If farmer is logged in, show only their products
            products = farmerService.viewProductsByFarmerId(loggedFarmer.getId());
        }

        mv.addObject("products", products);
        return mv;
    }

    @GetMapping("delete1")
    public String delete1(@RequestParam Long id, HttpServletRequest request) {
        HttpSession session = request.getSession();
        Farmer loggedFarmer = (Farmer) session.getAttribute("farmer");
        Object admin = session.getAttribute("admin");

        if (loggedFarmer == null && admin == null) {
            return "redirect:/farmer-login";
        }

        if (admin != null) {
            // Admin is logged in, allow deletion
            farmerService.deleteProduct(id);
        } else if (loggedFarmer != null) {
            // Farmer is logged in, check ownership
            Product product = farmerService.displayProductById(id);
            if (product.getFarmer().getId().equals(loggedFarmer.getId())) {
                farmerService.deleteProduct(id);
            } else {
                return "redirect:/deleteProduct?error=not_authorized";
            }
        }

        return "redirect:/deleteProduct";
    }


    @GetMapping("viewProducts")
    public ModelAndView viewProducts() {
        ModelAndView mv = new ModelAndView("viewProducts");
        List<Product> products = farmerService.viewAllProducts();
        mv.addObject("products", products);
        return mv;
    }

    @GetMapping("displayproductimage")
    public ResponseEntity<byte[]> displayProductImage(@RequestParam Long id) throws SQLException {
        Product product = farmerService.displayProductById(id);
        byte[] imageBytes = product.getImage().getBytes(1, (int) product.getImage().length());
        return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
    }
    
    
    
    
    
    
    
    

}
