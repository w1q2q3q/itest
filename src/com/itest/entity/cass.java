package com.itest.entity;

import javax.persistence.Entity;
@Entity
public class cass {
	 int id;
	 int ylid;
	 int number;
	 int cassid;
	 int zhuid;
	 String name;
	 String describev;
     int zhaungtai; //状态
     int aeer;
     String data;
	 String xiangyintext;//响应数据
	 String assertc;
	 String beforeheader;
	 String afterheader;
	 int method;
	 
	public int getMethod() {
		return method;
	}
	public void setMethod(int method) {
		this.method = method;
	}
	public int getYlid() {
		return ylid;
	}
	public void setYlid(int ylid) {
		this.ylid = ylid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getZhaungtai() {
		return zhaungtai;
	}
	public void setZhaungtai(int zhaungtai) {
		this.zhaungtai = zhaungtai;
	}
	public String getXiangyintext() {
		return xiangyintext;
	}
	public void setXiangyintext(String xiangyintext) {
		this.xiangyintext = xiangyintext;
	}
	public String getAssertc() {
		return assertc;
	}
	public void setAssertc(String assertc) {
		this.assertc = assertc;
	}
	public String getBeforeheader() {
		return beforeheader;
	}
	public void setBeforeheader(String beforeheader) {
		this.beforeheader = beforeheader;
	}
	public String getAfterheader() {
		return afterheader;
	}
	public void setAfterheader(String afterheader) {
		this.afterheader = afterheader;
	}
	public int getAeer() {
		return aeer;
	}
	public void setAeer(int aeer) {
		this.aeer = aeer;
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
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
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
	public int getZhuid() {
		return zhuid;
	}
	public void setZhuid(int zhuid) {
		this.zhuid = zhuid;
	}
	 
	// List<zhuangtai> assertc=new ArrayList();
	// List<Header> beforeheader=new ArrayList();
	// List<Header> afterheader=new ArrayList();

	
	 
	 
	 
	 
}
