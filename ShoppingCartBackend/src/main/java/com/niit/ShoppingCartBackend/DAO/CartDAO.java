package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import com.niit.ShoppingCartBackend.Model.Cart;

public interface CartDAO {

	public List<Cart> list();

	public List<Cart> list(String mailid);

	public void save(Cart cart);

	public void update(Cart cart);

	public Cart getByCartId(String cartId);

	public Cart getByCartName(String cartName);

	public void deleteByCartId(String cartId);

	public void deleteByCartName(String cartName);

	public void deleteByProductName(String productName);

	public boolean itemAlreadyExist(String userId, String productId, boolean b);

	public Cart getByUserandProduct(String userId, String productId);
	
	public Long getTotalAmount(String id);

}
