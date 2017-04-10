package com.niit.shoppingkartfront.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ShoppingCartBackend.DAO.CartDAO;
import com.niit.ShoppingCartBackend.DAO.ProductDAO;
import com.niit.ShoppingCartBackend.Model.Cart;
import com.niit.ShoppingCartBackend.Model.Product;



@Controller
public class CartController {

	@Autowired
	private CartDAO cartDAO;
	
	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping("addCart")
	public String addCart(@ModelAttribute Cart cart){
		cartDAO.save(cart);
		return "ViewCart";
		
	}
	
	@RequestMapping("ProductDetails")
	public String productDetails(@RequestParam ("productId") String productId, Model model ) {
		Product product = productDAO.getProductctById(productId);
		model.addAttribute("product", product);
		model.addAttribute("ProductDetails", true);
		return "UserLogin";
	}
	
}
