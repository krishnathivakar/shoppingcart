package com.niit.shoppingkartfront.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.ShoppingCartBackend.DAO.ShippingaddressDAO;
import com.niit.ShoppingCartBackend.Model.Shippingaddress;
import com.niit.ShoppingCartBackend.Model.User;



@Controller
public class ShippingaddressController {
	@Autowired
	private ShippingaddressDAO shippingaddressDAO;
	
	@Autowired
	private User user;
	
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
}
