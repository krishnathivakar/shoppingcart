package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import com.niit.ShoppingCartBackend.Model.User;

public interface UserDAO {

	public List<User> list();

	public void save(User user);

	public void update(User user);

	public User getUserByUserId(String userId);

	public User getUserByUserName(String userName);

	public User getUserByUserMobileNumber(String mobileNumber);

	public User getUserByUserMailId(String userMailId);

	public void deleteByUserId(String userId);

	public void deleteByUserName(String userName);

	public void deleteByUserMobileNumber(String mobileNumber);

	public void deleteByUserMailId(String userMailId);


		
}

