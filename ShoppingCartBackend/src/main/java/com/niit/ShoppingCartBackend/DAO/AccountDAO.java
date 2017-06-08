package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import com.niit.ShoppingCartBackend.Model.Account;

public interface AccountDAO {
	
	public List<Account> list();
	
	public void save(Account account);

	public void update(Account account);
	
	public Account get(int id);

	public void delete(int id);

}
