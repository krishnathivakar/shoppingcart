package com.niit.shoppingkartfront.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String homePage(){
		
		return "home";
	}
	@RequestMapping("CategoryPage")
	public String NewCategory()	{
		
		return "CategoryForm";
		
	}
	
	@RequestMapping("CategoryPage")
	public String newCategory() {
		return "CategoryForm";
	}

	@RequestMapping("ProductPage")
	public String newproduct() {
		return "ProductForm";
	}

	@RequestMapping("RegistrationPage")
	public String newRegistration() {
		return "RegistrationForm";
	}

	@RequestMapping("SupplierPage")
	public String newSupplier() {
		return "SupplierForm";
	}

	@RequestMapping("LoginPage")
	public String Login() {
		return "LoginForm";
	}

	
	
	@RequestMapping("LoginPage")
	public ModelAndView newLogin(){
		
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("loginButtonClicked", true);
		return mv;
	}

}

