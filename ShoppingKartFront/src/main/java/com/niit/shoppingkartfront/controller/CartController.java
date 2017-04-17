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
	
	
	
	
	
	@RequestMapping("addToCart")
	public String addCart(@RequestParam("productId") String productId, Principal p,Model model){
		
		Product product = productDAO.getProductctById(productId);
		
		User user = userDAO.getUserByUserMailId(p.getName());
		
		Cart crt=cartDAO.getByUserandProduct(p.getName(), productId);
		
		
		if(product.getStock()>0){
			
			if(cartDAO.itemAlreadyExist(p.getName(), productId, true))
			{
				int qty = crt.getQuantity() + 1;
				crt.setQuantity(qty);
				crt.setTotal(product.getProductPrice()*qty);
				cartDAO.update(crt);
			}
			
		else {
			
		
		Random t = new Random();
		int day = 2 + t.nextInt(7);
		
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

		}
			int stc = product.getStock() - 1;
			product.setStock(stc);
			productDAO.update(product);
			
			
		return "redirect:myCart";
		}
		
		else{
			model.addAttribute("product", product);
			model.addAttribute("ProductDetails", true);
			model.addAttribute("msg", "PRODUCT OUT OF STOCK");
			return "UserLogin";
		}
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
		Long sum = cartDAO.getTotalAmount(email);
		model.addAttribute("total", sum);
		model.addAttribute("cartList", cartList);
		model.addAttribute("myCartClicked", true);
		
		return "UserLogin";
	}
	
	@RequestMapping("deleteCart")
	public String deleteCart(@RequestParam("cartId") String cartId){
		
		Cart cart = cartDAO.getByCartId(cartId);		

		Product product = productDAO.getProductctById(cart.getProductId());
		
		int qrt = cart.getQuantity();
		int stc = product.getStock();
		
		product.setStock(stc + qrt);
		productDAO.update(product);
		
		cartDAO.deleteByCartId(cartId);
		return "redirect:myCart";
	}
}
