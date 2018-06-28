package com.mikatama.cp.repo;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.mikatama.cp.bean.OrderProductModel;

@Repository
public class GenericRepoImpl implements GenericRepo {

	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	public List<OrderProductModel> getOrderProductModel(){
		String qry = "SELECT id, name, createdDate, status, 1 AS total_records FROM ORDERPRODUCT";
		Query query = entityManager.createNativeQuery(qry, OrderProductModel.class);
		
		List<OrderProductModel> daoDtolist = query.getResultList();
		
		return daoDtolist;
	}
}