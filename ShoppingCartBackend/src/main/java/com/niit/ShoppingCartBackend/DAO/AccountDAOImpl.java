package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingCartBackend.Model.Account;

@Repository("AccountDAO")
public class AccountDAOImpl implements AccountDAO {
	
	@Autowired
	private SessionFactory sessionFactory;


	public AccountDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}


	@Transactional
	public List<Account> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public void save(Account account) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(account);
	}

	@Transactional
	public void update(Account account) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(account);
	}

	@Transactional
	public Account get(int id) {
		// TODO Auto-generated method stub
		String hql = "from Account where id ='" + id + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Account> listAccount = (List<Account>) (query).list();

		if (listAccount != null && !listAccount.isEmpty()) {
			return listAccount.get(0);
		}

		return null;

	}

	@Transactional
	public void delete(int id) {
		// TODO Auto-generated method stub
		Account accToDelete = new Account();
		accToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(accToDelete);
	}

}
