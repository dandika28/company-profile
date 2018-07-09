package com.mikatama.cp.dao;

import java.util.List;

import com.mikatama.cp.bean.Product;
import com.mikatama.cp.bean.ProductAttribute;
import com.mikatama.cp.bean.ProductImage;

public interface ProductDao {

	public List<Product> getProductList();

	public Product getProductById(int id);

	public List<String> getProductImage(int productId);

	public boolean amountStockProduct(int amount, int id);

	public void updateProduct(Product product);

	public void insertProduct(Product product);

	public void insertImageProduct(int productId, String imageName);

	public String getLatestIdProductImage();

	public List<ProductImage> getProductImageListByProductId(int productId);

	public List<Product> getRandomProductByLimit(int limit);

	public ProductAttribute getProductAttributeById(int id);

	public void deleteProductById(int id);

	public void updateImageProduct(String imageName, int id);

	public void deleteProductImageByProductId(int productId);

}
