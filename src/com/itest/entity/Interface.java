package com.itest.entity;
import java.util.List;
import javax.persistence.Entity;


@Entity
public class Interface {
	String id;
	String name;
	String describe1;
	String url;
	String select1;
	List<herder> herder;
	List<value> value;
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
	public String getDescribe1() {
		return describe1;
	}
	public void setDescribe1(String describe1) {
		this.describe1 = describe1;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getSelect1() {
		return select1;
	}
	public void setSelect1(String select1) {
		this.select1 = select1;
	}
	public List<herder> getHerder() {
		return herder;
	}
	public void setHerder(List<herder> herder) {
		this.herder = herder;
	}
	public List<value> getValue() {
		return value;
	}
	public void setValue(List<value> value) {
		this.value = value;
	}

	
}
