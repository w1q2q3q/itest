package com.itest.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;

import org.apache.http.Header;
import org.apache.http.cookie.Cookie;

@Entity
public class XiangYin {
     int id;
     int zhaungtai; //状态
 	 String xiangyintext;//响应数据
 	 List<zhuangtai> cs=new ArrayList();
 	 List<String> header=new ArrayList();
 	List<String> headerbefore=new ArrayList();
 	 int xiangyin;
 	// Header[] header;
 	 
	public int getId() {
		return id;
	}
	public List<String> getHeaderbefore() {
		return headerbefore;
	}
	public void setHeaderbefore(List<String> headerbefore) {
		this.headerbefore = headerbefore;
	}
	public List<String> getHeader() {
		return header;
	}
	public void setHeader(List<String> header) {
		this.header = header;
	}
	public int getXiangyin() {
		return xiangyin;
	}
	public void setXiangyin(int xiangyin) {
		this.xiangyin = xiangyin;
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
	public List<zhuangtai> getCs() {
		return cs;
	}
	public void setCs(List<zhuangtai> cs) {
		this.cs = cs;
	}

 	

		
}
