package com.mikatama.cp.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.mikatama.cp.bean.OrderProduct;

public interface OrderProcessRepository extends JpaRepository<OrderProduct, String> {
	@Query(value = "SELECT * FROM orderproduct", nativeQuery = true)
	List<OrderProduct> findAllOrder(List<OrderProduct> listOfOrderProcess);
}
