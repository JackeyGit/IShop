package com.service;

import java.util.List;

import com.dao.impl.IProductDao;
import com.pojo.Product;
import com.service.impl.IProductService;

public class ProductService implements IProductService {

	
	private IProductDao productDao;
	public void setProductDao(IProductDao productDao) {
		this.productDao = productDao;
	}
	
	
	public void addProduct(Product product) {
		productDao.addProduct(product);
		
	}

	
	public void deleteProduct(int id) {
		// TODO Auto-generated method stub
		
	}

	
	public void deleteManyProduct(int[] ids) {
		// TODO Auto-generated method stub
		
	}

	
	public void updateProductById(int id) {
		// TODO Auto-generated method stub
		
	}

	
	public List<Product> findProductByID(int id) {
		
		return productDao.findProductByID(id);
	}

	
	public List<Product> findAllProduct(int start, int end) {
		// TODO Auto-generated method stub
		return null;
	}

	
	public int allRecords() {
		// TODO Auto-generated method stub
		return 0;
	}

	
	public List<Product> findProductByTypeId(int tid) {
		// TODO Auto-generated method stub
		return null;
	}
	
		
		
		
	}



	


	





