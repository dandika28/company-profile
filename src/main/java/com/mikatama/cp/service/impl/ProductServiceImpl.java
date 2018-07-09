package com.mikatama.cp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mikatama.cp.bean.Product;
import com.mikatama.cp.bean.ProductAttribute;
import com.mikatama.cp.bean.ProductImage;
import com.mikatama.cp.dao.ProductDao;
import com.mikatama.cp.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;
	
	@Override
	public List<Product> getRandomProductByLimit(int limit){
		return productDao.getRandomProductByLimit(limit);
	}
	
	@Override
	public boolean insertProduct(Product product){
		boolean success = false;
		try {
			productDao.insertProduct(product);
			success = true;
		} catch (Exception e) {
			e.printStackTrace();
			success = false;
		}
		return success;
	}
	
	@Override
	public List<Product> getProductList(){
		return productDao.getProductList();
	}
	
	@Override
	public void deleteProductById(int id){
		productDao.deleteProductById(id);
	}
	
	@Override
	public void deleteProductImageByProductId(int productId){
		productDao.deleteProductImageByProductId(productId);
	}
	
	@Override
	public Product getProductById(int id){
		return productDao.getProductById(id);
	}
	
	@Override
	public ProductAttribute getProductAttributeById(int id){
		return productDao.getProductAttributeById(id);
	}
	
	@Override
	public void updateProduct(Product product){
		productDao.updateProduct(product);
	}
	
	@Override
	public List<ProductImage> getProductImageListByProductId(int productId){
		return productDao.getProductImageListByProductId(productId);
	}
	
	@Override
	public boolean insertImageProduct(int productId, String imageName){
		boolean success = false;
		try {
			productDao.insertImageProduct(productId, imageName);
			success = true;
		} catch (Exception e) {
			e.printStackTrace();
			success = false;
		}
		return success;
	}
	
	@Override
	public List<String> getProductImage(int productId){
		return productDao.getProductImage(productId);
	}
	
	@Override
	public void updateProductImage(String imageName, int id){
		productDao.updateImageProduct(imageName, id);
	}
	
	@Override
	public String getLatestIdProductImage(){
		return productDao.getLatestIdProductImage();
	}
	
	@Override
	public boolean amountStockProduct(int amount, int id){
		return productDao.amountStockProduct(amount, id);
	}
}
