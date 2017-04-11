package com.niit.shoppingkartfront.controller;

import java.security.Principal;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ShoppingCartBackend.DAO.CartDAO;
import com.niit.ShoppingCartBackend.DAO.ProductDAO;
import com.niit.ShoppingCartBackend.DAO.UserDAO;
import com.niit.ShoppingCartBackend.Model.Cart;
import com.niit.ShoppingCartBackend.Model.Product;
import com.niit.ShoppingCartBackend.Model.User;



@Controller
public class CartController {

	@Autowired
	private CartDAO cartDAO;
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private Cart cart;
	
	@Autowired
	private ProductDAO productDAO;
	
	
	Random t = new Random();
	int day = 2 + t.nextInt(7);
	
	
	@RequestMapping("addToCart")
	public String addCart(@RequestParam("productId") String productId, Principal p,Model model){
		Product product = productDAO.getProductctById(productId);
		User user = userDAO.getUserByUserMailId(p.getName());
		
		cart.setUserId(user.getUserId());
		cart.setUserName(user.getUserName());
		cart.setUserMailId(p.getName());
		cart.setProductId(product.getProductId());
		cart.setProductName(product.getProductName());
		cart.setQuantity(1);
		cart.setProductPrice(product.getProductPrice());
		cart.setTotal(cart.getProductPrice()*cart.getQuantity());
		cart.setStatus("N");
		cart.setDays(day);
		
		cartDAO.save(cart);
		cartDAO.update(cart);
		return "redirect:myCart";
		
	}
	
	@RequestMapping("ProductDetails")
	public String productDetails(@RequestParam ("productId") String productId, Model model ) {
		Product product = productDAO.getProductctById(productId);
		model.addAttribute("product", product);
		model.addAttribute("ProductDetails", true);
		return "UserLogin";
	}
	/*@RequestMapping("addToCart")
	public String addToCart(@RequestParam ("productId") String productId, Model model ){
		return productId;	
		
	}*/
	
	@RequestMapping("myCart")
	public String myCart(Principal principal, Model model){
		String email = principal.getName();
		List<Cart> cartList = cartDAO.list(email);
		model.addAttribute("cartList", cartList);
		model.addAttribute("myCartClicked", true);
		
		return "UserLogin";
	}
	
	@RequestMapping("deleteCart")
	public String deleteCart(@RequestParam("cartId") String cartId){
		cartDAO.deleteByCartId(cartId);
		return "redirect:myCart";
	}
}
