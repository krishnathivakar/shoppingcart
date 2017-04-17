package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingCartBackend.Model.Cart;
import com.niit.ShoppingCartBackend.Model.Shippingaddress;

@Repository("ShippingaddressDAO")
public class ShippingaddressDAOImpl implements ShippingaddressDAO {
	@Autowired
	private SessionFactory sessionFactory;

	
	
	
	public ShippingaddressDAOImpl (SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}	

	@Transactional
	public List<Shippingaddress> list(String id) {
		String hql = "from Shippingaddress where shippingId='" + id + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Shippingaddress> list = (List<Shippingaddress>) query.list();
		
		return list;
	}

	@Transactional
	public Shippingaddress get(String userName) {
		String hql = "from Shippingaddress where userName ='"+ userName+"'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Shippingaddress> listShippingaddress = (List<Shippingaddress>) (query).list();
		
		if (listShippingaddress != null && !listShippingaddress.isEmpty()){
			return listShippingaddress.get(0);
		}
		return null;
	}

	@Transactional
	public void save(Shippingaddress shippingaddress) {
		sessionFactory.getCurrentSession().save(shippingaddress);
	}
	
	@Transactional
	public void update(Shippingaddress shippingaddress) {
		sessionFactory.getCurrentSession().update(shippingaddress);
	}

	@Transactional
	public void delete(String Shippingaddress) {
		Shippingaddress shippingaddressToDelete = new Shippingaddress();
		shippingaddressToDelete.setShippingId(Shippingaddress);
		sessionFactory.getCurrentSession().delete(shippingaddressToDelete);
	}

	

	@Transactional
	public Shippingaddress getByShippingId(String ShippingId) {
		String hql = "from Shippingaddress where shippingId ='"+ ShippingId+"'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Shippingaddress> listShippingaddress = (List<Shippingaddress>) (query).list();
		
		if (listShippingaddress != null && !listShippingaddress.isEmpty()){
			return listShippingaddress.get(0);
		}
		return null;
	}

	public void editShippingAddress(Shippingaddress shippingaddress) {
		// TODO Auto-generated method stub
		
	}
	@Transactional
	public List<Shippingaddress> getUserByUserMailId(String email) {
		// TODO Auto-generated method stub
				String hql = "from Shippingaddress where userMailId =" + "'" + email + "'";
				Query query = sessionFactory.getCurrentSession().createQuery(hql);
				
				@SuppressWarnings("unchecked")
				List<Shippingaddress> list = (List<Shippingaddress>) query.list();
				
				return list;
	}

}