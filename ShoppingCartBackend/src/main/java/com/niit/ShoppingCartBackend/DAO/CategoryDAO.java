package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import com.niit.ShoppingCartBackend.Model.Category;

public interface CategoryDAO {
	
	public List<Category> list();

	public void save(Category category);
	
	public void update (Category category);
	
	public Category getCategoryById (String categoryId);

	public Category getCategoryByName (String categoryName);

	public void deleteById (String categoryId);

	public void DeleteByName (String categoryName);


	}
