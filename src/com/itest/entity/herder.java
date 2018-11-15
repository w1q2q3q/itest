package com.itest.entity;

import javax.persistence.Entity;

@Entity
public class herder {
String ID;
String herdername;
String herdervalue;
String herderdescribe;
Interface team;
public String getID() {
	return ID;
}
public void setID(String iD) {
	ID = iD;
}
public String getHerdername() {
	return herdername;
}
public void setHerdername(String herdername) {
	this.herdername = herdername;
}
public String getHerdervalue() {
	return herdervalue;
}
public void setHerdervalue(String herdervalue) {
	this.herdervalue = herdervalue;
}
public String getHerderdescribe() {
	return herderdescribe;
}
public void setHerderdescribe(String herderdescribe) {
	this.herderdescribe = herderdescribe;
}
public Interface getTeam() {
	return team;
}
public void setTeam(Interface team) {
	this.team = team;
}

}
