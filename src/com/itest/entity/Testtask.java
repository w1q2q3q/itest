package com.itest.entity;

import javax.persistence.Entity;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Testtask {
    int id; 
    int number;
	String name;
	String describev;
	String date;
	String zhu;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getDescribev() {
		return describev;
	}
	public void setDescribev(String describev) {
		this.describev = describev;
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
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
		
}
