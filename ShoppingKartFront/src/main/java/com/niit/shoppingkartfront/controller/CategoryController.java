package com.niit.shoppingkartfront.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ShoppingCartBackend.DAO.CartDAO;
import com.niit.ShoppingCartBackend.DAO.CategoryDAO;
import com.niit.ShoppingCartBackend.Model.Cart;
import com.niit.ShoppingCartBackend.Model.Category;


@Controller
public class CategoryController {
	
		@Autowired
		private CategoryDAO categoryDAO;
		@Autowired
		private CartDAO cartDAO;
		
		@RequestMapping("categoryPage")
		public String newCategory(Model model) {
			model.addAttribute("addCategoryClicked", true);
			return "AdminLogin";
		}
		
		
		@RequestMapping("addCategory")
		public String addCategory(@ModelAttribute Category category){
			categoryDAO.save(category);
			return "redirect:ViewCategory";
		
		}
		@RequestMapping("ViewCategory")
		public String viewCategory(Model model) {
			List<Category> categoryList = categoryDAO.list();
			model.addAttribute("categoryList", categoryList);
			model.addAttribute("viewCategoryClicked", true);
			return "AdminLogin";
		}
		
		@RequestMapping("deleteCategory")
		public String deleteCategory(@RequestParam("categoryId") String categoryId){
			categoryDAO.deleteById(categoryId);
			return "redirect:ViewCategory";
		}
		@RequestMapping("editCategory")
		public String editCategory(@RequestParam("categoryId") String categoryId, Model model){
			Category category = categoryDAO.getCategoryById(categoryId);
			model.addAttribute("category", category);
			model.addAttribute("editCategoryClicked", true);
			return "AdminLogin";
			
		}
		@RequestMapping("afterEdit")
		public String afterEdit(@ModelAttribute Category category){
			categoryDAO.update(category);
			return "redirect:ViewCategory";
			
		}
		@RequestMapping("adminCart")
		public String adminCart(Model model){
			List<Cart> cartList = cartDAO.list();
			model.addAttribute("cartList", cartList);
			model.addAttribute("adminCartClicked", true);
			return "AdminLogin";
			
			
		}
		@ModelAttribute
		public void commmonCategory(Model model){
			model.addAttribute("AdminLoggedIn", true);
		}
	}

