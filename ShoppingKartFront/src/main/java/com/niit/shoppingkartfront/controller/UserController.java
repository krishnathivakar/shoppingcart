package com.niit.shoppingkartfront.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.ShoppingCartBackend.DAO.RoleDAO;
import com.niit.ShoppingCartBackend.DAO.UserDAO;
import com.niit.ShoppingCartBackend.Model.Role;
import com.niit.ShoppingCartBackend.Model.User;

@Controller
public class UserController {

	@Autowired
	private UserDAO userDAO;


	
	@Autowired
	private RoleDAO roleDAO;

	@Autowired
	private Role role;

	@RequestMapping("addNewUser")
	public String addUser(@ModelAttribute User user, Model model) {

		user.setEnabled(true);
		role.setUserMailId(user.getUserMailId());
		role.setRole("ROLE_USER");
		role.setUserName(user.getUserName());
		role.setMobileNumber(user.getMobileNumber());

		user.setRole(role);
		role.setUser(user);

		userDAO.save(user);
		roleDAO.save(role);
		
		
		model.addAttribute("loginButtonClicked", true);
		
		
		return "home";

	}
	@RequestMapping("/afterlogin")
	public String loginProcess(Principal p, Model model){
		
		String email = p.getName();
		
		User user = userDAO.getUserByUserMailId(email);
	
		Role role = roleDAO.getUserByUserMailId(email);
		
		String role1 = role.getRole();
		
		if(role1.equals("ROLE_ADMIN")){
			
			return "AdminLogin";
		}
		else if(role1.equals("ROLE_USER")){
			
			return "UserLogin";
		}
		else{		
		
		return "LoginForm";
		}
	}
}
