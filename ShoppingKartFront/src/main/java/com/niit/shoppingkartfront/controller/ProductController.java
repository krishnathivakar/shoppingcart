package com.niit.shoppingkartfront.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.ShoppingCartBackend.DAO.ProductDAO;
import com.niit.ShoppingCartBackend.Model.Category;
import com.niit.ShoppingCartBackend.Model.Product;


@Controller
public class ProductController {

	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping("addProduct")
	public String addProduct(@ModelAttribute Product product){
		productDAO.save(product);
		return "redirect:ViewProduct";
		
	}
	
	@RequestMapping("ViewProduct")
	public String viewProduct(Model model) {
		List<Product> productList = productDAO.list();
		model.addAttribute("productList", productList);
		
		model.addAttribute("viewProductClicked", true);
		return "AdminLogin";
	}
	
}
