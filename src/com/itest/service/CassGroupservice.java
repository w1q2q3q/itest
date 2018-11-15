package com.itest.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.itest.dao.CassGroupDao;
import com.itest.entity.Tast;
import com.itest.entity.Testtask;
import com.itest.entity.cass;
@Transactional
@Service
public class CassGroupservice {

	@Autowired
	public CassGroupDao CassGroupDao;
	
	
	
	public List findcass(Integer groupid){
		
		return CassGroupDao.findcass(groupid);
		
	}
	
	public void addTask(Testtask task){
		
		CassGroupDao.addTask(task);
	}
	
	 public List<Testtask> findTask(){
		 
		 return CassGroupDao.findTask();
		 
	 }
	 
	 public Testtask findoneTask(int id) {  
		 
			return CassGroupDao.findoneTask(id);
		}
	 
	 
	
	 public List<Tast> taskreport(int id,int method){
		 
		 
		return CassGroupDao.taskreport(id,method);
	 }
	 
	 
	
	public void zhurun(Testtask task){
		CassGroupDao.zhurun(task);
		//return(CassGroupDao.zhurun(task));
	}
	
	public List<String[]> suites(Integer id){
		
		return CassGroupDao.suites(id);
	}
	public List<cass> reportview(Integer id,Integer number,Integer zhuid,int method){
		
		return CassGroupDao.reportview(id, number, zhuid,method);		
		
	}
	
	
	
}
