package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.niit.ShoppingCartBackend.Model.Supplier;

@Repository("SupplierDAO")
public class SupplierDAOImpl implements SupplierDAO{
	
	@Autowired
	private SessionFactory sessionFactory;

	public SupplierDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	

	@Transactional
	public List<Supplier> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public void insert(Supplier supplier) {
		// TODO Auto-generated method stub

	}

	@Transactional
	public void update(Supplier supplier) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(supplier);

	}

	@Transactional
	public void save(Supplier supplier) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(supplier);

	}

	@Transactional
	public Supplier getSupplierById(String supplierId) {
		// TODO Auto-generated method stub
		String hql = "from Supplier where supplierId ='" + supplierId + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = (List<Supplier>) (query).list();

		if (listSupplier != null && !listSupplier.isEmpty()) {
			return listSupplier.get(0);
		}
		return null;
	}

	@Transactional
	public Supplier getSupplierByName(String supplierName) {
		// TODO Auto-generated method stub
		String hql = "from Supplier where supplierName ='" + supplierName + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = (List<Supplier>) (query).list();

		if (listSupplier != null && !listSupplier.isEmpty()) {
			return listSupplier.get(0);
		}
		return null;
	}

	@Transactional
	public void deleteById(String supplierId) {
		// TODO Auto-generated method stub
		Supplier supplierToDelete = new Supplier();
		supplierToDelete.setSupplierId(supplierId);
		sessionFactory.getCurrentSession().delete(supplierToDelete);

	}

	@Transactional
	public void deleteByName(String productName) {
		// TODO Auto-generated method stub
		Supplier supplierToDelete = new Supplier();
		sessionFactory.getCurrentSession().delete(supplierToDelete);

	}

	

}
