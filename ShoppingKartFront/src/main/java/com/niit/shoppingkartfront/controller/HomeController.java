package com.niit.shoppingkartfront.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.ShoppingCartBackend.DAO.CategoryDAO;
import com.niit.ShoppingCartBackend.DAO.SupplierDAO;
import com.niit.ShoppingCartBackend.Model.Category;
import com.niit.ShoppingCartBackend.Model.Supplier;

@Controller
public class HomeController {
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private SupplierDAO supplierDAO;
	

	@RequestMapping("/")
	public String homePage(){
		
		return "home";
	}
	
	
	@RequestMapping("categoryPage")
	public String newCategory(Model model) {
		model.addAttribute("addCategoryClicked", true);
		return "AdminLogin";
	}
	
	
	

	@RequestMapping("productPage")
	public String newproduct(Model model) {
		List<Category> categoryList = categoryDAO.list();
		List<Supplier> supplierList = supplierDAO.list();
		
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("supplierList", supplierList);
		model.addAttribute("addProductClicked", true);
		return "AdminLogin";
	}

	@RequestMapping("RegistrationPage")
	public String newRegistration(Model model) {
		model.addAttribute("registerButtonClicked", true);
		return "home";
	}

	@RequestMapping("SupplierPage")
	public String newSupplier(Model model) {
		model.addAttribute("addSupplierClicked", true);
		return "AdminLogin";
	}
	
	

	@RequestMapping("LoginPage")
	public String Login(Model model) {
		model.addAttribute("loginButtonClicked", true);
		return "home";
	}

	

}

