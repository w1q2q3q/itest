package com.itest.entity;

import javax.persistence.Entity;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Tast {
	int id; 
	int cassid;
    int number;
	String date;
	String zhu;
	int method;
	
	public int getMethod() {
		return method;
	}
	public void setMethod(int method) {
		this.method = method;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCassid() {
		return cassid;
	}
	public void setCassid(int cassid) {
		this.cassid = cassid;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getZhu() {
		return zhu;
	}
	public void setZhu(String zhu) {
		this.zhu = zhu;
	}
	
	
	
}
