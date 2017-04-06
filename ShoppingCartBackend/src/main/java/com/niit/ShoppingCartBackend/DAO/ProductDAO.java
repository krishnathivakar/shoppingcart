package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import com.niit.ShoppingCartBackend.Model.Product;

public interface ProductDAO {
	
	public List<Product> list();

	public void save(Product product);
	
	public void update(Product product);

	public Product getProductctById (String productId);

	public Product getProductByName (String productName);

	
	public void deleteById(String productId);
	
	public void deleteByName(String productName);
	
}
