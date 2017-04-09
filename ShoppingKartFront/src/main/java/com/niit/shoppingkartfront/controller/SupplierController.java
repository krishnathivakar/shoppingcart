package com.niit.shoppingkartfront.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ShoppingCartBackend.DAO.SupplierDAO;
import com.niit.ShoppingCartBackend.Model.Category;
import com.niit.ShoppingCartBackend.Model.Product;
import com.niit.ShoppingCartBackend.Model.Supplier;


@Controller
public class SupplierController {
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	@RequestMapping("addSupplier")
	public String addSupplier(@ModelAttribute Supplier supplier){
		supplierDAO.save(supplier);
		return "redirect:ViewSupplier";
		
	}
	
	@RequestMapping("ViewSupplier")
	public String viewSupplier(Model model) {
		List<Supplier> supplierList = supplierDAO.list();
		model.addAttribute("supplierList", supplierList);
		model.addAttribute("viewSupplierClicked", true);
		return "AdminLogin";
	}
	
	@RequestMapping("deleteSupplier")
	public String deleteSupplier(@RequestParam("supplierId") String supplierId){
		supplierDAO.deleteById(supplierId);
		return "redirect:ViewSupplier";
	}
	
	@RequestMapping("editSupplier")
	public String editSupplier(@RequestParam("supplierId") String supplierId, Model model){
		Supplier supplier = supplierDAO.getSupplierById(supplierId);
		model.addAttribute("supplier", supplier);
		model.addAttribute("editSupplierClicked", true);
		return "AdminLogin";
		
	}
	@RequestMapping("afterEditSupplier")
	public String afterEdit(@ModelAttribute Supplier supplier){
		supplierDAO.update(supplier);
		return "redirect:ViewSupplier";
		
	}
	
	

}
