package com.itest.entity;
import javax.persistence.Entity;

@Entity
public class addylassert {
    private int ID;
    private int responseid;
    private String attribute;
    private int compare;
    private String value;
    private addyl team;
	
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public int getResponseid() {
		return responseid;
	}
	public void setResponseid(int responseid) {
		this.responseid = responseid;
	}
	public String getAttribute() {
		return attribute;
	}
	public void setAttribute(String attribute) {
		this.attribute = attribute;
	}
	public int getCompare() {
		return compare;
	}
	public void setCompare(int compare) {
		this.compare = compare;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public addyl getTeam() {
		return team;
	}
	public void setTeam(addyl team) {
		this.team = team;
	}	

    
}
