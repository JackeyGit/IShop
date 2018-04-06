package com.service.impl;

import java.util.List;

import com.pojo.Product;
public interface IProductService {
	
	void addProduct(Product product);
	void  deleteProduct(int id);
	void deleteManyProduct(int[] ids);
	void updateProductById(int id);
	List<Product> findProductByID(int id);
	List<Product> findAllProduct(int start,int end);
	int allRecords();
	List<Product> findProductByTypeId(int tid);

}
