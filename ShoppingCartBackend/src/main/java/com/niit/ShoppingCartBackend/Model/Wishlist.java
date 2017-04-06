package com.niit.ShoppingCartBackend.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Table(name="Wishlist")
@Entity
@Component
public class Wishlist {

	@Id
	@GeneratedValue
	private String wishlistId;
	
	private String wishlistName;

	private String wishlistDescription;

	public String getWishlistId() {
		return wishlistId;
	}

	public void setWishlistId(String wishlistId) {
		this.wishlistId = wishlistId;
	}

	public String getWishlistName() {
		return wishlistName;
	}

	public void setWishlistName(String wishlistName) {
		this.wishlistName = wishlistName;
	}

	public String getWishlistDescription() {
		return wishlistDescription;
	}

	public void setWishlistDescription(String wishlistDescription) {
		this.wishlistDescription = wishlistDescription;
	}
	}
