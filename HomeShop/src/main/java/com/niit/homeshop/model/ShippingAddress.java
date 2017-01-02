package com.niit.homeshop.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "ShippingAddress")
@Component

public class ShippingAddress {
	
	 @Id
	 @Column
	@GeneratedValue(strategy = GenerationType.IDENTITY)
		private int shippingaddress_id;
	 
	     private String username;
		 private String emailid;
		 private int mobile_number;
		 private int price;
		 private String address;
		 private String city;
		 private int zipcode;
		 
		 
		 
		public int getShippingaddress_id() {
			return shippingaddress_id;
		}
		public void setShippingaddress_id(int shippingaddress_id) {
			this.shippingaddress_id = shippingaddress_id;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getEmailid() {
			return emailid;
		}
		public void setEmailid(String emailid) {
			this.emailid = emailid;
		}
		public int getMobile_number() {
			return mobile_number;
		}
		public void setMobile_number(int mobile_number) {
			this.mobile_number = mobile_number;
		}
		public int getPrice() {
			return price;
		}
		public void setPrice(int price) {
			this.price = price;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public String getCity() {
			return city;
		}
		public void setCity(String city) {
			this.city = city;
		}
		public int getZipcode() {
			return zipcode;
		}
		public void setZipcode(int zipcode) {
			this.zipcode = zipcode;
		}
		
		
	
	
		
	
	

	}


