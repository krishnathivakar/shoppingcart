package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import com.niit.ShoppingCartBackend.Model.Supplier;

public interface SupplierDAO {
	
	public List<Supplier> list();

	public void save(Supplier supplier);

	public void insert(Supplier supplier);

	public void update(Supplier supplier);

	public Supplier getSupplierById(String supplierId);

	public Supplier getSupplierByName(String supplierName);

	public void deleteById(String supplierId);

	public void deleteByName(String supplierName);


	}


