package com.itest.entity;

import java.util.Date;

import javax.persistence.Entity;
@Entity
public class zhuangtai {
	int zhaungtai; //状态
 	String xiangyintext;//响应数据 
 	String shuxin;
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
	public String getShuxin() {
		return shuxin;
	}
	public void setShuxin(String shuxin) {
		this.shuxin = shuxin;
	}
	
}
