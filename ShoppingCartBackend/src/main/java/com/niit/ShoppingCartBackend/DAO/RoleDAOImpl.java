package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingCartBackend.Model.Role;
import com.niit.ShoppingCartBackend.Model.User;

@Repository("RoleDAO")
public class RoleDAOImpl implements RoleDAO {
	

	@Autowired
	private SessionFactory sessionFactory;
	
	public RoleDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	

	

	@Transactional
	public void save(Role role) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(role);
	}

	@Transactional
	public void update(Role role) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(role);
	}

	@Transactional
	public Role getUserByUserId(String userId) {
		// TODO Auto-generated method stub
		String hql = "from User where Userid ='" + userId + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Role> listRole = (List<Role>) (query).list();

		if (listRole != null && !listRole.isEmpty()) {
			return listRole.get(0);
		}
		return null;
	}

	@Transactional
	public Role getUserByUserName(String userName) {
		// TODO Auto-generated method stub
		String hql = "from User where Username ='" + userName + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Role> listRole = (List<Role>) (query).list();

		if (listRole != null && !listRole.isEmpty()) {
			return listRole.get(0);
		}
		return null;
	}

	@Transactional
	public void deleteByUserId(String userId) {
		// TODO Auto-generated method stub
		User roleToDelete = new User();
		roleToDelete.setUserId(userId);
		sessionFactory.getCurrentSession().delete(roleToDelete);

	}

}