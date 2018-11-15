package com.itest.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;

import org.springframework.stereotype.Component;

@Component
@Entity
public class zhu {
	private int id;
	private String zname;
	private String zdescribev;
	private String date;
	private int number;
	
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
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getZname() {
		return zname;
	}
	public void setZname(String zname) {
		this.zname = zname;
	}
	public String getZdescribev() {
		return zdescribev;
	}
	public void setZdescribev(String zdescribev) {
		this.zdescribev = zdescribev;
	}
	
	
	
}
