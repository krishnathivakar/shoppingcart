package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingCartBackend.Model.Category;

@Repository("CategoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public CategoryDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	@Transactional
	public List<Category> list() {
		@SuppressWarnings({ "unchecked" })
		List<Category> listCategory = (List<Category>) sessionFactory.getCurrentSession().createCriteria(Category.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listCategory;
	}

	@Transactional
	public void save(Category category) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(category); 
		
	}

	@Transactional
	public void update(Category category) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(category);
		

	}
	
	@Transactional
	public Category getCategoryById(String categoryId) {
		// TODO Auto-generated method stub
		String hql = "from Category where categoryId ='" + categoryId + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) (query).list();

		if (listCategory != null && !listCategory.isEmpty()) {
			return listCategory.get(0);
		}
		return null;
	}

	@Transactional
	public Category getCategoryByName(String categoryName) {
		// TODO Auto-generated method stub
		String hql = "from Category where Categoryname ='" + categoryName + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) (query).list();

		if (listCategory != null && !listCategory.isEmpty()) {
			return listCategory.get(0);
		}
		return null;
	}

	@Transactional
	public void deleteById(String categoryId) {
		// TODO Auto-generated method stub
		Category categoryToDelete = new Category();
		categoryToDelete.setCategoryId(categoryId);
		sessionFactory.getCurrentSession().delete(categoryToDelete);
	

		
	}

	@Transactional
	public void DeleteByName(String categoryName) {
		// TODO Auto-generated method stub
		Category categoryToDelete = new Category();
		categoryToDelete.setCategoryName(categoryName);
		sessionFactory.getCurrentSession().delete(categoryToDelete);
	

	}


}