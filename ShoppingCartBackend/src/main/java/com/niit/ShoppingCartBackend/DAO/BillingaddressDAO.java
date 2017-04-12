package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import com.niit.ShoppingCartBackend.Model.Billingaddress;
import com.niit.ShoppingCartBackend.Model.Shippingaddress;
import com.niit.ShoppingCartBackend.Model.User;

public interface BillingaddressDAO {
	
	public List<Billingaddress> list();
		
	public void delete(String billingaddress);
	
	public void save(Billingaddress billingaddress);

	public void update(Billingaddress billingaddress);
	
	public User getUserByUserId(String userId);
	
	public User getUserByUserMailId(String userMailId);

	
	


}
