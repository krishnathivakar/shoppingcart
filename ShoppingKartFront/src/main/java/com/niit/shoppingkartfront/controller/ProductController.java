package com.niit.shoppingkartfront.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ShoppingCartBackend.DAO.ProductDAO;
import com.niit.ShoppingCartBackend.Model.Product;


@Controller
public class ProductController {

	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping("addProduct")
	public String addProduct(@ModelAttribute Product product){
		productDAO.save(product);
		return "redirect:ViewProduct";
		
	}
	
	@RequestMapping("ViewProduct")
	public String viewProduct(Model model) {
		List<Product> productList = productDAO.list();
		model.addAttribute("productList", productList);
		
		model.addAttribute("viewProductClicked", true);
		return "AdminLogin";
	}
	@RequestMapping("deleteProduct")
	public String deleteProduct(@RequestParam("productId") String productId){
		productDAO.deleteById(productId);
		return "redirect:ViewProduct";
	}
	
	@RequestMapping("editProduct")
	public String editProduct(@RequestParam("productId") String productId, Model model){
		Product product = productDAO.getProductctById(productId);
		model.addAttribute("product", product);
		model.addAttribute("editProductClicked", true);
		return "AdminLogin";
		
	}
	@RequestMapping("afterEditProduct")
	public String afterEdit(@ModelAttribute Product product){
		productDAO.update(product);
		return "redirect:ViewProduct";
		
	}
	
	
}
