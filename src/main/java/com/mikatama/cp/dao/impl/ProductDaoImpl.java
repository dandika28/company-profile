package com.mikatama.cp.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.mikatama.cp.bean.Product;
import com.mikatama.cp.bean.ProductAttribute;
import com.mikatama.cp.bean.ProductImage;
import com.mikatama.cp.dao.ProductDao;

@Repository
public class ProductDaoImpl implements ProductDao {

	Logger logger = LoggerFactory.getLogger(ProductDaoImpl.class);
	
	DataSource dataSource;
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	String sqlGetListProduct = "SELECT * FROM product where status = 1 order by id ";
	String sqlGetProductById = "SELECT * FROM product where id =?";
	String sqlGetImageProductByProductId = "SELECT * FROM product_image where product_id=? order by id";
	String sqlInsertImageProduct = "INSERT INTO product_image (product_id, image) values (?, ?)";
	String sqlUpdateImageProduct = "UPDATE product_image SET image=? WHERE id=?";
	String sqlDecrementStockProduct = "update product set stock = stock - ? where id = ?";
	String sqlUpdateProductById = "UPDATE product SET product_name = ?, product_desc=?, price=?, image=?, stock=?, status=? where id =?";
	String sqlInsertProduct = "INSERT INTO product (product_name, product_desc, price, image, stock, status)"
			+ "values (?, ?, ?, ?, ?, ?)";
	String sqlGetSequenceId = "SELECT Auto_increment FROM information_schema.tables WHERE table_schema = 'mikatama' and table_name=?";
	String sqlRandomProduct = "select * from product ORDER BY RAND() limit ?";
	String sqlDeleteProduct = "DELETE FROM product WHERE id=?";
	String sqlDeleteProductImageByProductId = "DELETE FROM product_image WHERE product_id=?";
	
	public void setDataSource(DataSource dataSource){
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public void deleteProductById(int id){
		jdbcTemplate.update(sqlDeleteProduct, new Object[] {id});
	}
	
	@Override
	public void deleteProductImageByProductId(int productId){
		jdbcTemplate.update(sqlDeleteProductImageByProductId, new Object[] {productId});
	}
	
	@Override
	public List<Product> getRandomProductByLimit(int limit){
		List<Product> products = null;
		products = jdbcTemplate.query(sqlRandomProduct, new Object[] {limit}, new ProductRowMapper());
		logger.info("getProductList size: " + products.size());
		return products;
	}
	
	@Override
	public void updateImageProduct(String imageName, int id){
		System.out.println("updateImageProduct: " + imageName + ", " + id);		
		jdbcTemplate.update(sqlUpdateImageProduct, new Object[] {imageName, id});
	}
	
	@Override
	public String getLatestIdProductImage(){
		String id = jdbcTemplate.queryForObject(sqlGetSequenceId, new Object[] {"product"}, String.class);
		return id;
	}
	
	@Override
	public void insertProduct(Product product){
		jdbcTemplate.update(sqlInsertProduct, new Object[] {product.getProductName(), product.getProductDesc(),
				product.getPrice(), product.getImage(), product.getStock(), product.getStatus()});
	}
	
	@Override
	public void insertImageProduct(int productId, String imageName){
		jdbcTemplate.update(sqlInsertImageProduct, new Object[] {productId, imageName});
	}
	
	@Override
	public void updateProduct(Product product){
		jdbcTemplate.update(sqlUpdateProductById, new Object[] {product.getProductName(), product.getProductDesc(), 
				product.getPrice(), product.getImage(), product.getStock(), product.getStatus(), product.getId()});
	}
	
	@Override
	public List<Product> getProductList(){
		List<Product> products = null;
		products = jdbcTemplate.query(sqlGetListProduct, new ProductRowMapper());
		logger.info("getProductList size: " + products.size());
		return products;
	}
	
	@Override
	public Product getProductById(int id){
		List<Product> products = null;
		products = jdbcTemplate.query(sqlGetProductById, new Object[]{id}, new ProductRowMapper());
		if(products.size() > 0){
			logger.info("product name: " + products.get(0).getProductName());
			return products.get(0);
		}else
			return null;
	}
	
	@Override
	public ProductAttribute getProductAttributeById(int id){
		List<ProductAttribute> products = null;
		products = jdbcTemplate.query(sqlGetProductById, new Object[]{id}, new ProductAttributeRowMapper());
		if(products.size() > 0){
			logger.info("product name: " + products.get(0).getProductName());
			return products.get(0);
		}else
			return null;
	}
	
	@Override
	public boolean amountStockProduct(int amount, int id){
		boolean status = false;
		try {
			jdbcTemplate.update(sqlDecrementStockProduct, new Object[] {amount, id});
			status = true;
		} catch (Exception e) {
			e.printStackTrace();
			return status = false;
		}
		
		logger.info("status amount stock product: " + status);
		return status;
	}
	
	@SuppressWarnings("rawtypes")
	@Override
	public List<String> getProductImage(int productId){
		List<Map<String, Object>> productImage = null;
		productImage = jdbcTemplate.queryForList(sqlGetImageProductByProductId, new Object[]{productId});
		List<String> list = new ArrayList<String>();
		for(Map map: productImage){
			list.addAll(map.values());
		}
		return list;
	}
	
	@Override
	public List<ProductImage> getProductImageListByProductId(int productId){
		List<ProductImage> list = null;
		list = jdbcTemplate.query(sqlGetImageProductByProductId, new Object[] {productId}, new ProductImageRowMappe());
		return list;
	}
}

class ProductRowMapper implements RowMapper<Product>{
	
	@Override
	public Product mapRow(ResultSet rs, int rowNum) throws SQLException{
		Product product = new Product();
		product.setId(rs.getInt("id"));
		product.setProductName(rs.getString("product_name"));
		product.setProductDesc(rs.getString("product_desc"));
		product.setPrice(rs.getString("price"));
		product.setStock(rs.getInt("stock"));
		product.setStatus(rs.getInt("status"));
		product.setImage(rs.getString("image"));
		return product;
	}
}

class ProductAttributeRowMapper implements RowMapper<ProductAttribute>{
	@Override
	public ProductAttribute mapRow(ResultSet rs, int rowNum) throws SQLException{
		ProductAttribute attribute = new ProductAttribute();
		attribute.setId(rs.getInt("id"));
		attribute.setProductName(rs.getString("product_name"));
		attribute.setProductDesc(rs.getString("product_desc"));
		attribute.setPrice(rs.getString("price"));
		attribute.setStock(rs.getInt("stock"));
		attribute.setStatus(rs.getInt("status"));
		attribute.setImage(rs.getString("image"));
		return attribute;
	}
}

class ProductImageRowMappe implements RowMapper<ProductImage>{
	
	@Override
	public ProductImage mapRow(ResultSet rs, int rowNum) throws SQLException{
		ProductImage image = new ProductImage();
		image.setId(rs.getInt("id"));
		image.setProductId(rs.getInt("product_id"));
		image.setImage(rs.getString("image"));
		return image;
	}
}
