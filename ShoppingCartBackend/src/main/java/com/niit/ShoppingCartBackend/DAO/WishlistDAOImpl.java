package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingCartBackend.Model.Wishlist;

@Repository("WishlistDAO")
public class WishlistDAOImpl implements WishlistDAO {

	@Autowired
	private SessionFactory sessionFactory;


	public WishlistDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}


	@Transactional
	public List<Wishlist> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public void save(Wishlist wishlist) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(wishlist);

	}

	@Transactional
	public void update(Wishlist wishlist) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(wishlist);

	}

	@Transactional
	public Wishlist getWishlistById(String wishlistId) {
		// TODO Auto-generated method stub
		String hql = "from Wishlist where Wishlistid ='" + wishlistId + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Wishlist> listWishlist = (List<Wishlist>) (query).list();

		if (listWishlist != null && !listWishlist.isEmpty()) {
			return listWishlist.get(0);
		}
		return null;
	}

	@Transactional
	public Wishlist getWishlistByName(String wishlistName) {
		// TODO Auto-generated method stub
		String hql = "from Wishlist where Wislistname ='" + wishlistName + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Wishlist> listWishlist = (List<Wishlist>) (query).list();

		if (listWishlist != null && !listWishlist.isEmpty()) {
			return listWishlist.get(0);
		}
		return null;
	}

	@Transactional
	public void deleteById(String wishlistId) {
		// TODO Auto-generated method stub
		Wishlist wishlistToDelete = new Wishlist();
		wishlistToDelete.setWishlistId(wishlistId);
		sessionFactory.getCurrentSession().delete(wishlistToDelete);
	}


	@Transactional
	public void DeleteByName(String wishlistName) {
		// TODO Auto-generated method stub
		Wishlist wishlistToDelete = new Wishlist();
		wishlistToDelete.setWishlistName(wishlistName);
		sessionFactory.getCurrentSession().delete(wishlistToDelete);
	

	}


}
