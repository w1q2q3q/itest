package com.itest.dao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.springframework.stereotype.Repository;
import com.itest.entity.Person;
import com.itest.entity.addyl;
import com.itest.entity.zhu;

@Repository
public class InterDao {
	
	@Resource
	private SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	
	/**
	 * 返回用户信息
	 * @return
	 */

	public  List<Person> getPersons() {
		// TODO Auto-generated method stub
		System.out.println("cssccsc"+this.getSession().createCriteria(Person.class).list());
		return this.getSession().createCriteria(Person.class).list();
	}
	
	
	public  List<addyl> getaddyl() {
		// TODO Auto-generated method stub
		System.out.println("cssccsc"+this.getSession().createCriteria(addyl.class).list());
		return this.getSession().createCriteria(addyl.class).addOrder(Order.desc("id")).list();
	}
	
	 public addyl getaddylById(Integer id) {  
	        return (addyl)this.getSession().get(addyl.class, id);  
	    }  

	public void addyl(addyl add) {
		System.out.println(add.getID());
		Date day=new Date();    
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
		add.setData(df.format(day));
		this.getSession().saveOrUpdate(add);
	}
	

	public void deleat(Integer id) {   
		this.getSession().delete(this.getSession().load(addyl.class, id));  		
	}
	
	public void update(addyl stu) {  
        sessionFactory.getCurrentSession().update(stu);  
    }  
	
	public void addzhu(zhu zhu) {
		//System.out.println(add.getID());
		this.getSession().saveOrUpdate(zhu);
	}
	
	public List<zhu> zhufind() {
		//System.out.println(add.getID());
		List<zhu> zhu=this.getSession().createCriteria(zhu.class).addOrder(Order.desc("id")).list();
		for(int i=0;i<zhu.size();i++)
	   	{
			Query query = getSession().createQuery("select count(*) from addyl where groupid="+zhu.get(i).getId());
			Number count= (Number) query.iterate().next();//返回值是Long 
		//	System.out.println(count);
			zhu.get(i).setNumber(count.intValue());
		}		
		return zhu;
	}
	
	public void zdeleat(Integer id) {   
		this.getSession().delete(this.getSession().load(zhu.class, id));  		
	}
	
	public List<Object[]> ylzfind(){
		Query query=this.getSession().createQuery("select id,zname from zhu");
		List<Object[]> zhu=query.list();
		return zhu;
		
		
		
	}

}
