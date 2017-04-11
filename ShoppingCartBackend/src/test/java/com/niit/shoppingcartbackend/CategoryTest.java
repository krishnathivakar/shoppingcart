package com.niit.shoppingcartbackend;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ShoppingCartBackend.DAO.BillingaddressDAO;
import com.niit.ShoppingCartBackend.DAO.CartDAO;
import com.niit.ShoppingCartBackend.DAO.CategoryDAO;
import com.niit.ShoppingCartBackend.DAO.ProductDAO;
import com.niit.ShoppingCartBackend.DAO.RoleDAO;
import com.niit.ShoppingCartBackend.DAO.ShippingaddressDAO;
import com.niit.ShoppingCartBackend.DAO.SupplierDAO;
import com.niit.ShoppingCartBackend.DAO.UserDAO;
import com.niit.ShoppingCartBackend.DAO.WishlistDAO;
import com.niit.ShoppingCartBackend.Model.Billingaddress;
import com.niit.ShoppingCartBackend.Model.Cart;
import com.niit.ShoppingCartBackend.Model.Category;
import com.niit.ShoppingCartBackend.Model.Product;
import com.niit.ShoppingCartBackend.Model.Role;
import com.niit.ShoppingCartBackend.Model.Shippingaddress;
import com.niit.ShoppingCartBackend.Model.Supplier;
import com.niit.ShoppingCartBackend.Model.User;
import com.niit.ShoppingCartBackend.Model.Wishlist;

public class CategoryTest {

	private static Cart productid;

	public static void main (String[] args) {

		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.*");
		context.refresh();

		CategoryDAO categoryDAO = (CategoryDAO) context.getBean("CategoryDAO");
		UserDAO userDAO = (UserDAO) context.getBean("UserDAO");
		ProductDAO productDAO = (ProductDAO) context.getBean("ProductDAO");
		BillingaddressDAO billingaddressDAO = (BillingaddressDAO) context.getBean("BillingaddressDAO");
		CartDAO cartDAO = (CartDAO) context.getBean("CartDAO");
		SupplierDAO supplierDAO = (SupplierDAO) context.getBean("SupplierDAO");
		WishlistDAO wishlistDAO = (WishlistDAO) context.getBean("WishlistDAO");
		ShippingaddressDAO shippingaddressDAO = (ShippingaddressDAO) context.getBean("ShippingaddressDAO");
		RoleDAO roleDAO = (RoleDAO) context.getBean("RoleDAO");
		
		Category category = (Category) context.getBean("category");
		User user = (User) context.getBean("user");
		Product product = (Product) context.getBean("product");
		Billingaddress billingaddress = (Billingaddress) context.getBean("billingaddress");
		Cart cart = (Cart) context.getBean("cart");
		Supplier supplier = (Supplier) context.getBean("supplier");
		Wishlist wishlist = (Wishlist) context.getBean("wishlist");
		Shippingaddress shippingaddress = (Shippingaddress) context.getBean("shippingaddress");
		Role role = (Role) context.getBean("role");
		
		
		category.setCategoryName("Watches");
		category.setCategoryDescription("this is not a new brand");
		
		
		user.setUserMailId("jeny@gmail.com");
		user.setUserName("jenifer");
		user.setUserPassword("jenni");
		user.setMobileNumber("12345678");
		user.setUserAddress("theni");
		user.setUserCityCode("6234");
		

		
		role.setUserMailId("abdc@gmail.com");
		role.setUserName("abdc");
		role.setRole("user");
		
		user.setRole(role);
		role.setUser(user);
		
			
		
		
		product.setProductName("Rolex");
		product.setProductPrice(2000);
		product.setProductDescription("this is a new brand");
		product.setProductRating("2*");
		
		
		
		
		
		
		
		supplier.setSupplierName("Watches");
		supplier.setSupplierDescription("this is not a new brand");
		supplier.setSupplierRating("3*");
		supplier.setSupplierLocation("chennai");
		
		
		
		
		wishlist.setWishlistName("lovedBikes");
		wishlist.setWishlistDescription("gift me dad");
		
		
	
		categoryDAO.save(category);
		productDAO.save(product);
		roleDAO.save(role);
		supplierDAO.save(supplier);
		userDAO.save(user);
		wishlistDAO.save(wishlist);
	}

		
		
}


