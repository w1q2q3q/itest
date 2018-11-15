package com.itest.entity;

import javax.persistence.Entity;

@Entity
public class addylvalue {
	private int ID;
	private String name;
	private String value;
	private String describev;
	private addyl team;
	

	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public String getDescribev() {
		return describev;
	}
	public void setDescribev(String describev) {
		this.describev = describev;
	}
	public addyl getTeam() {
		return team;
	}
	public void setTeam(addyl team) {
		this.team = team;
	}
}
