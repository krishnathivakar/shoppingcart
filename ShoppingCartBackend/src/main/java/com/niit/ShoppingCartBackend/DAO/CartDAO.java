package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import com.niit.ShoppingCartBackend.Model.Cart;


public interface CartDAO {
	
public List<Cart> list();
	
	public void save(Cart cart);

	public void update(Cart cart);

	public Cart getByCartId(String cartId);

	public Cart getByCartName(String cartName);
	
	public void deleteByCartId(String cartId);

	public void deleteByCartName(String cartName);
	
	public void deleteByProductName(String productName);




}
