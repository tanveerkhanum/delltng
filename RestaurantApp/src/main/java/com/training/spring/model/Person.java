package com.training.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="PERSON")
public class Person {

	@Id
	@Column(name="customerid" ,length=10)
	private int customerId;
	@Column(name="customername",length=10)
	private String customerName;
	@Column(name="password",length=10)
	private String password;
	@Column(name="customeraddress",length=10)
	private String customerAddress;
	public String getBillAmount() {
		return billAmount;
	}

	public void setBillAmount(String billAmount) {
		this.billAmount = billAmount;
	}

	@Column(name="billAmount",length=10)
	private String billAmount;

	

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerAddress() {
		return customerAddress;
	}

	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}

	

	public int getId() {
		return customerId;
	}

	public void setId(int id) {
		this.customerId = id;
	}

	public String getName() {
		return customerName;
	}

	public void setName(String name) {
		this.customerName = name;
	}

	public String getCountry() {
		return customerAddress;
	}

	public void setCountry(String country) {
		this.customerAddress = country;
	}

	@Override
	public String toString() {
		return "Person [customerId=" + customerId + ", customerName=" + customerName + ", password=" + password
				+ ", customerAddress=" + customerAddress + ", billAmount=" + billAmount + "]";
	}

	
	
	

}
