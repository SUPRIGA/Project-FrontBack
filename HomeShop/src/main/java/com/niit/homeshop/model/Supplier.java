package com.niit.homeshop.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "Supplier")
@Component
public class Supplier {
	
	 @Id
	 @Column
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int sid; 
	 @Column
	private String sn;
	 @Column
	private String email_id;
	 @Column
	private int mn;
	 @Column
	private String sa;


	
	
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getEmail_id() {
	 return email_id;
	}
	public void setEmail_id(String email_id) {
	 this.email_id = email_id;
	}
	public String getSn() {
		return sn;
	}
	public void setSn(String sn) {
		this.sn = sn;
	}
	public int getMn() {
		return mn;
	}
	public void setMn(int mn) {
		this.mn = mn;
	}
	public String getSa() {
		return sa;
	}
	public void setSa(String sa) {
		this.sa = sa;
	}
	
	


}



