package com.itest.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * 个人信息实体类
 * 注解方式配置对应数据表
 * @author Peng
 * @Date2016年12月8日下午2:54:52
 */
@Entity
public class Person {

	private String id;// 主键id
	private String name;// 姓名
	private String password;
	private addyl team;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public addyl getTeam() {
		return team;
	}
	public void addyl(addyl team) {
		this.team = team;
	}
	

}
