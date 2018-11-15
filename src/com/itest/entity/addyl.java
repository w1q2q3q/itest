package com.itest.entity;

import java.util.List;

import javax.persistence.Entity;
@Entity
public class addyl {
	private int ID;
    private int groupid;
    private String name;
    private String describev;
    private String methodv;//请求方法
    private String url;//请求地址
    private int herder;//头是否添加
    private List<addylherder> herder1;//头信息
    private int value;//值是否有s
    private List<addylvalue> listvalue;//值类型
    private String jsonvalue;//json
    private int assertadd;
    private List<addylassert> assertaddv;
    private int zhuangtai;
    private String Data;
    
	
	
	public String getData() {
		return Data;
	}
	public void setData(String data) {
		Data = data;
	}
	public int getZhuangtai() {
		return zhuangtai;
	}
	public void setZhuangtai(int zhuangtai) {
		this.zhuangtai = zhuangtai;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public int getGroupid() {
		return groupid;
	}
	public void setGroupid(int groupid) {
		this.groupid = groupid;
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
	
	public String getMethodv() {
		return methodv;
	}
	public void setMethodv(String methodv) {
		this.methodv = methodv;
	}
	
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public int getHerder() {
		return herder;
	}
	public void setHerder(int herder) {
		this.herder = herder;
	}
	public List<addylherder> getHerder1() {
		return herder1;
	}
	public void setHerder1(List<addylherder> herder1) {
		this.herder1 = herder1;
	}
	public int getValue() {
		return value;
	}
	public void setValue(int value) {
		this.value = value;
	}
	public List<addylvalue> getListvalue() {
		return listvalue;
	}
	public void setListvalue(List<addylvalue> listvalue) {
		this.listvalue = listvalue;
	}
	public String getJsonvalue() {
		return jsonvalue;
	}
	public void setJsonvalue(String jsonvalue) {
		this.jsonvalue = jsonvalue;
	}
	public int getAssertadd() {
		return assertadd;
	}
	public void setAssertadd(int assertadd) {
		this.assertadd = assertadd;
	}
	public List<addylassert> getAssertaddv() {
		return assertaddv;
	}
	public void setAssertaddv(List<addylassert> assertaddv) {
		this.assertaddv = assertaddv;
	}
	
	
	
}
