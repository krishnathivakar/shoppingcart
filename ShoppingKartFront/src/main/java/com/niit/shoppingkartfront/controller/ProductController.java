package com.niit.shoppingkartfront.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.ShoppingCartBackend.DAO.CategoryDAO;
import com.niit.ShoppingCartBackend.DAO.ProductDAO;
import com.niit.ShoppingCartBackend.DAO.SupplierDAO;
import com.niit.ShoppingCartBackend.Model.Category;
import com.niit.ShoppingCartBackend.Model.Product;
import com.niit.ShoppingCartBackend.Model.Supplier;


@Controller
public class ProductController {

	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	@RequestMapping("productPage")
	public String newproduct(Model model) {
		List<Category> categoryList = categoryDAO.list();
		List<Supplier> supplierList = supplierDAO.list();
		
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("supplierList", supplierList);
		model.addAttribute("addProductClicked", true);
		return "AdminLogin";
	}

	
	@RequestMapping("addproduct")
	public String addProduct(@ModelAttribute Product product, @RequestParam("file") MultipartFile file ) {
		productDAO.save(product);
		String path = "F://Eclipsse Project/project/copied project/ShoppingKartFront/src/main/webapp/WEB-INF/resources/images/productImages/";
		FileUtil.upload(path, file, product.getProductId()+".jpg");
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
	
	@ModelAttribute
	public void commmonProduct(Model model){
		model.addAttribute("AdminLoggedIn", true);
	}
}
