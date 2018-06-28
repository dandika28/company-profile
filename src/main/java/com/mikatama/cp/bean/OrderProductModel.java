package com.mikatama.cp.bean;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class OrderProductModel {

	@Id
	private String id;
	private String name;
	private Date created_date;
	private int status;
	private Integer totalRecords;

	public String getOrderId() {
		return id;
	}

	public void setOrderId(String orderId) {
		this.id = orderId;
	}

	public String getFullname() {
		return name;
	}

	public void setFullname(String fullname) {
		this.name = fullname;
	}

	public Date getCreatedDate() {
		return created_date;
	}

	public void setCreatedDate(Date createdDate) {
		this.created_date = createdDate;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Integer getTotalRecords() {
		return totalRecords;
	}

	public void setTotalRecords(Integer totalRecords) {
		this.totalRecords = totalRecords;
	}

}
