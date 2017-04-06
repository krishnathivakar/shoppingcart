package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingCartBackend.Model.Product;


@Repository("ProductDAO")
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;
	

	public ProductDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}

	@Transactional
	public List<Product> list() {
		// TODO Auto-generated method stub
		return null;
	}


	@Transactional
	public void save(Product product) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(product);

	}
	
	@Transactional
	public void update(Product product) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(product);

	}


	@Transactional
	public Product getProductctById(String productId) {
		// TODO Auto-generated method stub
		String hql = "from Product where ProductId ='" + productId + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) (query).list();

		if (listProduct != null && !listProduct.isEmpty()) {
			return listProduct.get(0);
		}
		return null;
	}

	@Transactional
	public Product getProductByName(String productName) {
		// TODO Auto-generated method stub
		String hql = "from Product where Productname ='" + productName + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) (query).list();

		if (listProduct != null && !listProduct.isEmpty()) {
			return listProduct.get(0);
		}
		return null;
	}

	@Transactional
	public void deleteById(String productId) {
		// TODO Auto-generated method stub
		Product productToDelete = new Product();
		productToDelete.setProductId(productId);
		sessionFactory.getCurrentSession().delete(productToDelete);

	}

	@Transactional
	public void deleteByName(String productName) {
		// TODO Auto-generated method stub
		Product productToDelete = new Product();
		productToDelete.setProductName(productName);
		sessionFactory.getCurrentSession().delete(productToDelete);

	}


	
}