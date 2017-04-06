package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingCartBackend.Model.Cart;

@Repository("CartDAO")
public class CartDAOImpl implements CartDAO {

	@Autowired
	private SessionFactory sessionFactory;
	private Object cart;
	
	public CartDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional
	public List<Cart> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public Cart getByCartId(String cartId){
		String hql = "from Cart where CartId ='" + cartId + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> listCart = (List<Cart>) (query).list();

		if (listCart != null && !listCart.isEmpty()) {
			return listCart.get(0);
		}
		return null;
	}

	public void save(Cart cart) {
		// TODO Auto-generated method stub
		
	}

	public void update(Cart cart) {
		// TODO Auto-generated method stub
		
	}

	public Cart getByCartName(String cartName) {
		// TODO Auto-generated method stub
		return null;
	}

	public void deleteByCartId(String cartId) {
		// TODO Auto-generated method stub
		
	}

	public void deleteByCartName(String cartName) {
		// TODO Auto-generated method stub
		
	}

	public void deleteByProductName(String productName) {
		// TODO Auto-generated method stub
		
	}


}	