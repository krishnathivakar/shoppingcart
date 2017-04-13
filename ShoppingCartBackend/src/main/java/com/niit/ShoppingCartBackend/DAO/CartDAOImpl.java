package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingCartBackend.Model.Cart;
import com.niit.ShoppingCartBackend.Model.User;

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

	@Transactional
	public void save(Cart cart) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(cart);
	}

	@Transactional
	public void update(Cart cart) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(cart);	
	}

	@Transactional
	public Cart getByCartName(String cartName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public void deleteByCartId(String cartId) {
		// TODO Auto-generated method stub
		Cart cartToDelete = new Cart();
		cartToDelete.setCartId(cartId);
		sessionFactory.getCurrentSession().delete(cartToDelete);
	}

	public void deleteByCartName(String cartName) {
		// TODO Auto-generated method stub
		
	}

	public void deleteByProductName(String productName) {
		// TODO Auto-generated method stub
		
	}

	@Transactional
	public List<Cart> list(String mailid) {
		// TODO Auto-generated method stub
		String hql = "from Cart where userMailId=" + "'" + mailid + "'   and status = " + "'N'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) query.list();
		
		return list;
	}
	
	@Transactional
	public boolean itemAlreadyExist(String mailid, String productId, boolean b) {
		String hql = "from Cart where userMailId= '" + mailid + "' and " + " productId ='" + productId+"'";
		org.hibernate.Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) query.list();
		if (list != null && !list.isEmpty()) {
			return true;
		}
		return false;
	}


	@Transactional
	public Cart getByUserandProduct(String userId, String productId) {
		String hql = "from Cart where userMailId= '" + userId + "' and " + " productId ='" + productId+"'";
		org.hibernate.Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> listCart = (List<Cart>) query.list();
		
		if (listCart != null && !listCart.isEmpty()){
			return listCart.get(0);
		}
		return null;
	}
	
	@Transactional
	public Long getTotalAmount(String id) {
	String hql = "select sum(total) from Cart where userMailId = " + "'" + id + "'" + "and status = '" + "N" +"'";
	Query query = sessionFactory.getCurrentSession().createQuery(hql);
	Long sum = (Long) query.uniqueResult();
		return sum;
	}


}	