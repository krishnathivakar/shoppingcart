package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingCartBackend.Model.Billingaddress;
import com.niit.ShoppingCartBackend.Model.Shippingaddress;
import com.niit.ShoppingCartBackend.Model.User;

@Repository("BillingaddressDAO")
public class BillingaddressDAOImpl implements BillingaddressDAO {
	public BillingaddressDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public List<Billingaddress> list(String id) {
		// TODO Auto-generated method stub
		String hql = "from Billingaddress where id='" + id + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Billingaddress> list = (List<Billingaddress>) query.list();

		return list;

	}

	@Transactional
	public Billingaddress getByBillId(int billid) {
		String hql = "from Billingaddress where BillId ='" + billid + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Billingaddress> listBillingaddress = (List<Billingaddress>) (query).list();

		if (listBillingaddress != null && !listBillingaddress.isEmpty()) {
			return listBillingaddress.get(0);
		}
		return null;
	}

	@Transactional
	public Billingaddress getByBillingAddress(String billingaddress) {
		String hql = "from Billingaddress where BillingAddress ='" + billingaddress + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Billingaddress> listBillingaddress = (List<Billingaddress>) (query).list();

		if (listBillingaddress != null && !listBillingaddress.isEmpty()) {
			return listBillingaddress.get(0);
		}
		return null;
	}

	@Transactional
	public Billingaddress getByContactNumber(int contactnumber) {
		String hql = "from Billingaddress where ContactNumber ='" + contactnumber + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Billingaddress> listBillingaddress = (List<Billingaddress>) (query).list();

		if (listBillingaddress != null && !listBillingaddress.isEmpty()) {
			return listBillingaddress.get(0);
		}
		return null;
	}

	@Transactional
	public void delete(String Billingaddress) {
		Billingaddress billingaddressToDelete = new Billingaddress();
		billingaddressToDelete.setBillingId(Billingaddress);
		sessionFactory.getCurrentSession().delete(billingaddressToDelete);
	}

	@Transactional
	public void editBillingAddress(Billingaddress billingaddress) {
		// TODO Auto-generated method stub

	}

	@Transactional
	public void saveOrUpdate(Billingaddress billingaddress) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(billingaddress);
	}

	@Transactional
	public void save(Billingaddress billingaddress) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(billingaddress);
	}

	@Transactional
	public void update(Billingaddress billingaddress) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(billingaddress);
	}

	@Transactional
	public User getUserByUserId(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public List<Billingaddress> getUserByUserMailId(String email) {
		// TODO Auto-generated method stub
		String hql = "from Billingaddress where userMailId=" + "'" + email + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Billingaddress> list = (List<Billingaddress>) query.list();

		return list;
	}

}
