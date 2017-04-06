package com.niit.shoppingkartfront.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.ShoppingCartBackend.DAO.CategoryDAO;
import com.niit.ShoppingCartBackend.Model.Category;


@Controller
public class CategoryController {
	
		@Autowired
		private CategoryDAO categoryDAO;
		
		@RequestMapping("addCategory")
		public String addCategory(@ModelAttribute Category category){
			categoryDAO.save(category);
			return "ViewCategory";
		
		}
		
	}

