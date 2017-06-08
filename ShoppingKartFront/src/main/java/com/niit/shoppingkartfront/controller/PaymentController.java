package com.niit.shoppingkartfront.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.ShoppingCartBackend.DAO.CartDAO;
import com.niit.ShoppingCartBackend.DAO.ProductDAO;
import com.niit.ShoppingCartBackend.Model.Cart;
import com.niit.ShoppingCartBackend.Model.Product;

@Controller
public class PaymentController {
	
	@Autowired
	private CartDAO cartDAO;
	
	@Autowired
	private ProductDAO productDAO;

	
	@RequestMapping("Cod")
	public String newCod(Model model) {
		model.addAttribute("addCodClicked", true);
		return "UserLogin";
	}
	@RequestMapping("CreditCard")
	public String newCredit(Model model) {
		model.addAttribute("addCcClicked", true);
		return "UserLogin";
	}
	
	@RequestMapping("click")
	public String newClick(Principal p, Model model) {
		String email = p.getName();
		List<Cart> cartList = cartDAO.list(email);
		model.addAttribute("cartList", cartList);
		
		model.addAttribute("addClickClicked", true);
		model.addAttribute("addCodClicked", true);
		return "UserLogin";
	}
	@RequestMapping("ok")
	public String newOk(Model model) {
		List<Product> productList = productDAO.list();
		model.addAttribute("productList", productList);
		model.addAttribute("UserLoggedIn", "true");
		return "UserLogin";
	}
}
