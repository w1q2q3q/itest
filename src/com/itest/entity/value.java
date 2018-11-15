package com.itest.entity;

import javax.persistence.Entity;

@Entity
public class value {
String ID;
String name;
String value;
String describe1;
Interface team;
public String getID() {
	return ID;
}
public void setID(String iD) {
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
public String getDescribe1() {
	return describe1;
}
public void setDescribe1(String describe1) {
	this.describe1 = describe1;
}
public Interface getTeam() {
	return team;
}
public void setTeam(Interface team) {
	this.team = team;
}

}
