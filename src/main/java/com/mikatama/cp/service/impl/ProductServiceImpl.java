package com.mikatama.cp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mikatama.cp.bean.Product;
import com.mikatama.cp.dao.ProductDao;
import com.mikatama.cp.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;
	
	@Override
	public List<Product> getProductList(){
		return productDao.getProductList();
	}
	
	@Override
	public Product getProductById(int id){
		return productDao.getProductById(id);
	}
	
	@Override
	public List<String> getProductImage(int productId){
		return productDao.getProductImage(productId);
	}
	
	@Override
	public boolean amountStockProduct(int amount, int id){
		return productDao.amountStockProduct(amount, id);
	}
}
