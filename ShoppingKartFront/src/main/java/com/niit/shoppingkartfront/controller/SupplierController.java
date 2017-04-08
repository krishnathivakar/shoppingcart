package com.niit.shoppingkartfront.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.ShoppingCartBackend.DAO.SupplierDAO;
import com.niit.ShoppingCartBackend.Model.Category;
import com.niit.ShoppingCartBackend.Model.Supplier;


@Controller
public class SupplierController {
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	@RequestMapping("addSupplier")
	public String addSupplier(@ModelAttribute Supplier supplier){
		supplierDAO.save(supplier);
		return "ViewSupplier";
		
	}
	
	@RequestMapping("ViewSupplier")
	public String viewSupplier(Model model) {
		List<Supplier> supplierList = supplierDAO.list();
		model.addAttribute("supplierList", supplierList);
		model.addAttribute("viewSupplierClicked", true);
		return "AdminLogin";
	}
	

}
