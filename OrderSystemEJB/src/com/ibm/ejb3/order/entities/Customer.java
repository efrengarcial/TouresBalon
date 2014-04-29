package com.ibm.ejb3.order.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name="CUSTOMER", schema = "CUSTSCH")
public class Customer implements Serializable 
{
	@Id
	@GeneratedValue(strategy=IDENTITY)
	@Column(name="CUST_ID")
	private Integer customerId;
	
	
	private String name;
	
	public Integer getCustomerId() {		
		return customerId;
	}
	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}