package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import com.niit.ShoppingCartBackend.Model.Wishlist;

public interface WishlistDAO {
	
	public List<Wishlist> list();

	public void save (Wishlist wishlist);
	
	public void update (Wishlist wishlist);
	
	public Wishlist getWishlistById (String wishlistId);

	public Wishlist getWishlistByName (String wishlistName);

	public void deleteById (String wishlistId);

	public void DeleteByName (String wishlistName);
	
}
