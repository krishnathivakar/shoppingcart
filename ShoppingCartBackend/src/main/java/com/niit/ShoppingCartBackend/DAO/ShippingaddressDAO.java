package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import com.niit.ShoppingCartBackend.Model.Shippingaddress;

public interface ShippingaddressDAO {
	
public List<Shippingaddress> list(String id);
	
	public Shippingaddress get(String username);
	
	
	
	public Shippingaddress getByShippingId(String ShippingId);
	
	public void save(Shippingaddress shippingaddress);
	
	public void update(Shippingaddress shippingaddress);
	
	public void delete(String shippingId);
	
	public void editShippingAddress(Shippingaddress shippingaddress);

	public List<Shippingaddress> getUserByUserMailId(String email);

}
