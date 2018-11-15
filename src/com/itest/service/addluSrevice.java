package com.itest.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.itest.dao.itestDao;
import com.itest.entity.Person;
import com.itest.entity.XiangYin;
import com.itest.entity.addyl;

@Transactional
@Service
public class addluSrevice {

	public  XiangYin getpost(addyl addly) {
		// TODO Auto-generated method stub
		itestDao  i=new itestDao();
		return i.ylrun(addly);
	}
	
	
}
