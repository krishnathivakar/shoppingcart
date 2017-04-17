package com.niit.shoppingkartfront.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ShoppingCartBackend.DAO.CartDAO;
import com.niit.ShoppingCartBackend.DAO.ShippingaddressDAO;
import com.niit.ShoppingCartBackend.DAO.UserDAO;
import com.niit.ShoppingCartBackend.Model.Cart;
import com.niit.ShoppingCartBackend.Model.Shippingaddress;
import com.niit.ShoppingCartBackend.Model.User;



@Controller
public class ShippingaddressController {
	@Autowired
	private ShippingaddressDAO shippingaddressDAO;
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private CartDAO cartDAO;
	
	@RequestMapping("addShippingaddress")
	public String addShippingaddress(@ModelAttribute Shippingaddress shippingaddress){
		shippingaddressDAO.save(shippingaddress);
		return "ViewShippingaddress";
		
	}
	
	@RequestMapping("proceed")
	public String proceedToDelivery(Principal p, Model model ) {
		String email = p.getName();
		List<Shippingaddress> shippingList = shippingaddressDAO.getUserByUserMailId(email);
		model.addAttribute("shippingList", shippingList);
		model.addAttribute("shippingaddressList", true);
		return "UserLogin";
	}
	
	@RequestMapping("editShipping")
	public String EditShipping(@RequestParam("shippingId") String shippingId, Model model){
		
		Shippingaddress shippingaddress = shippingaddressDAO.getByShippingId(shippingId);
		model.addAttribute("shipping", shippingaddress);
		model.addAttribute("EditShippingClicked", true);
		return "UserLogin";

	}
	@RequestMapping("deleteShipping")
	public String deleteShipping(@RequestParam("shippingId") String shippingId){
		shippingaddressDAO.delete(shippingId);
		return "redirect:proceed";
		
	}
	@RequestMapping("newAddress")
	public String newAddress(@ModelAttribute Shippingaddress shippingaddress, Principal p, Model model){
	User user = userDAO.getUserByUserMailId(p.getName());
	shippingaddress.setUserMailId(p.getName());
	shippingaddress.setUserId(user.getUserId());
	shippingaddressDAO.save(shippingaddress);
		
		return "redirect:proceed";
	}
	@RequestMapping("afterEditShipping")
	public String AfterEdit(@ModelAttribute Shippingaddress shippingaddress, Principal p){
		User user = userDAO.getUserByUserMailId(p.getName());
		shippingaddress.setUserMailId(p.getName());
		shippingaddress.setUserId(user.getUserId());
		
		shippingaddressDAO.update(shippingaddress);
		
	return "redirect:proceed";
	}
	@RequestMapping("newshipping")
	public String newshipping(Model model){
		model.addAttribute("newShippingClicked", true);
		return "UserLogin";
	}
	@RequestMapping("deliverAdress")
	public String deliverAdress(@RequestParam("shippingId") String shippingId, Principal p, Model model){
		
		String email  = p.getName();
		
		List<Cart> cartList = cartDAO.list(email);
		
		for(Cart crt : cartList){
			crt.setShippingId(shippingId);
			cartDAO.update(crt);
			
		}
		model.addAttribute("Successfully", true);
		
		return "UserLogin";
		
	}
	
}
