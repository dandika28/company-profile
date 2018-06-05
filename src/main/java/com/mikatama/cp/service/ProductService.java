package com.mikatama.cp.service;

import java.util.List;

import com.mikatama.cp.bean.Product;

public interface ProductService {

	public List<Product> getProductList();

	public Product getProductById(int id);

	public List<String> getProductImage(int productId);

	public boolean amountStockProduct(int amount, int id);

}
