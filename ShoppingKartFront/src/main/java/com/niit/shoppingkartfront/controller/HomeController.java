package com.niit.shoppingkartfront.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ShoppingCartBackend.DAO.ProductDAO;
import com.niit.ShoppingCartBackend.Model.Product;

@Controller
public class HomeController {
	
	@Autowired
	private ProductDAO productDAO;

	@RequestMapping("/")
	public String homePage(Model model){
		List<Product> productList = productDAO.list();
		model.addAttribute("productList", productList);
		
		return "home";
	}
	
	@RequestMapping("home")
	public String homePages(){
		
		return "home";
	}
	
	
	
	
	

	
	@RequestMapping("RegistrationPage")
	public String newRegistration(Model model) {
		model.addAttribute("registerButtonClicked", true);
		return "home";
	}

	
	

	@RequestMapping("LoginPage")
	public String Login(Model model) {
		model.addAttribute("loginButtonClicked", true);
		return "home";
	}
	
	@RequestMapping("/loginpage")
	public ModelAndView loginpage(@RequestParam(value = "error", required = false) String error, 
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		ModelAndView mv = new ModelAndView("home");
		
		if(error != null) {
			model.addAttribute("error", "Mail Id or Password Incorrect");
			}
		
		if(logout != null) {
			model.addAttribute("logout", "Logged out Successfully");
			}
		
		mv.addObject("loginButtonClicked", true);
		return mv;
	}

	

}

