package com.itest.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itest.dao.InterDao;
import com.itest.entity.Person;
import com.itest.entity.addyl;
import com.itest.entity.zhu;
import com.itest.intertor.Token;
@Transactional
@Service
public class InterService {
	@Autowired
	public InterDao InterDao;
	/**
	 * 查询所有用户
	 * @return
	 */
	public List<Person> getPersons() {
		// TODO Auto-generated method stub
		return InterDao.getPersons();
	}
	
	public List<addyl> getaddyl() {
		// TODO Auto-generated method stub
		return InterDao.getaddyl();
	}
	public void addyl(addyl a) {
		InterDao.addyl(a);
	}
	
	 public addyl getaddylById(Integer id) {  
	        return InterDao.getaddylById(id);
	    }  
	
	public void deleat(Integer id) {
		InterDao.deleat(id);
	}
	
	public List<Object[]> ylzfind() {
		// TODO Auto-generated method stub
		return InterDao.ylzfind();
	}
	
	
	/*组添加*/
	public void addzhu(zhu zhu){
		InterDao.addzhu(zhu);
	}
	
	
	public List<zhu> zhufind(){		
		return InterDao.zhufind();
	}
	
	public void zdeleat(Integer id) {
		InterDao.zdeleat(id);
	}
	
}
