package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingCartBackend.Model.User;

@Repository("UserDAO")
public class UserDAOImpl  implements UserDAO{
	
	@Autowired
	private SessionFactory sessionFactory;


	public UserDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}


	@Transactional
	public List<User> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public void save(User user) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(user);
		
		
	}

	@Transactional
	public void update(User user) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(user);
			
	}

	@Transactional
	public User getUserByUserId(String userId) {
		// TODO Auto-generated method stub
		String hql = "from User where Userid ='" + userId + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User> listUser = (List<User>) (query).list();

		if (listUser != null && !listUser.isEmpty()) {
			return listUser.get(0);
		}

		return null;
	}
	
	@Transactional
	public User getUserByUserName(String userName) {
		// TODO Auto-generated method stub
		String hql = "from User where Username ='" + userName + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User> listUser = (List<User>) (query).list();

		if (listUser != null && !listUser.isEmpty()) {
			return listUser.get(0);
		}

		return null;
	}


	@Transactional
	public void deleteByUserId(String userId) {
		// TODO Auto-generated method stub
		User userToDelete = new User();
		userToDelete.setUserId(userId);
		sessionFactory.getCurrentSession().delete(userToDelete);

		
	}

	@Transactional
	public void deleteByUserName(String userName) {
		// TODO Auto-generated method stub
		User userToDelete = new User();
		userToDelete.setUserName(userName);
		sessionFactory.getCurrentSession().delete(userToDelete);

		
	}


	@Transactional
	public User getUserByUserMobileNumber(String mobileNumber) {
		// TODO Auto-generated method stub
		String hql = "from User where User mobileNumber ='" + mobileNumber + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User> listUser = (List<User>) (query).list();

		if (listUser != null && !listUser.isEmpty()) {
			return listUser.get(0);
		}

		return null;
	}


	@Transactional
	public User getUserByUserMailId(String MailId) {
		// TODO Auto-generated method stub
		String hql = "from User where userMailId ='" + MailId + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User> listUser = (List<User>) (query).list();

		if (listUser != null && !listUser.isEmpty()) {
			return listUser.get(0);
		}

		return null;
	}


	@Transactional
	public void deleteByUserMobileNumber(String mobileNumber) {
		// TODO Auto-generated method stub
		User userToDelete = new User();
		userToDelete.setMobileNumber(mobileNumber);
		sessionFactory.getCurrentSession().delete(userToDelete);
	
	}


	@Transactional
	public void deleteByUserMailId(String userMailId) {
		// TODO Auto-generated method stub
		User userToDelete = new User();
		userToDelete.setUserMailId(userMailId);
		sessionFactory.getCurrentSession().delete(userToDelete);
		
	}


	

}