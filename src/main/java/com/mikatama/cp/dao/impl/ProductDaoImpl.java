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
import com.mikatama.cp.dao.ProductDao;

@Repository
public class ProductDaoImpl implements ProductDao {

	Logger logger = LoggerFactory.getLogger(ProductDaoImpl.class);
	
	DataSource dataSource;
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	String sqlGetListProduct = "SELECT * FROM product where status = 1 order by id ";
	String sqlGetProductById = "SELECT * FROM product where id =?";
	String sqlGetImageProductByProductId = "SELECT image FROM product_image where product_id=? order by id";
	String sqlDecrementStockProduct = "update product set stock = stock - ? where id = ?";
	
	public void setDataSource(DataSource dataSource){
		jdbcTemplate = new JdbcTemplate(dataSource);
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
