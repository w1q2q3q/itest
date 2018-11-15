package com.itest.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.springframework.stereotype.Repository;
import org.testng.TestNG;

import com.itest.entity.Person;
import com.itest.entity.Tast;
import com.itest.entity.Testtask;
import com.itest.entity.addyl;
import com.itest.entity.cass;
import com.itest.entity.zhu;

import net.sf.json.JSONArray;

@Repository
public class CassGroupDao {

	@Resource
	private SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	public List findcass(Integer groupid) {  
		String hql = "from addyl where groupid="+groupid;  
		Query query = this.getSession().createQuery(hql);  
		//默认查询出来的list里存放的是一个Object对象，但是在这里list里存放的不再是默认的Object对象了，而是Link对象了  
		List<addyl> links = query.list();    //  return (addyl)this.getSession().get(addyl.class, id);  
		return links;
	}
	
	public void addTask(Testtask task) {  
		
		this.getSession().saveOrUpdate(task);
		
	} 
	
	public List<Testtask> findTask() {  
 
		return this.getSession().createCriteria(Testtask.class).addOrder(Order.desc("id")).list();
	}
	public Testtask findoneTask(int id) {  
		 
		return (Testtask)this.getSession().get(Testtask.class, id);  
	}
	
	
//	public void Testngrun(){
//		TestNG testNG = new TestNG();
//		
//        List<String> suites = new ArrayList<String>();
//        suites.add("");
//        testNG.setTestSuites(suites);
//        testNG.run();
//		
////		 TestNG testNG = new TestNG();
////		 
////         testNG.setTestClasses(new Class[]{TestNgRunDao.class});
////         testNG.run();
//	}
	
	public List<Tast> taskreport(int id,int method){
		String hql = "from Tast where cassid="+id+"and method ="+method;  
		Query query = this.getSession().createQuery(hql);  
		//默认查询出来的list里存放的是一个Object对象，但是在这里list里存放的不再是默认的Object对象了，而是Link对象了  
		List<Tast> tast = query.list();    //  return (addyl)this.getSession().get(addyl.class, id); 
		return tast;
	
	}
	
	
	
	
	
	
	
	
	
	
	public void zhurun(Testtask task){	
		String zhu=task.getZhu();
		JSONArray jsonArray = JSONArray.fromObject(zhu);
		List<String> id=JSONArray.toList(jsonArray);
		List<List<cass>> casszhu=new ArrayList();
		Tast tast=new Tast();
		tast.setCassid(task.getId());
		int num=task.getNumber()+1;
		tast.setNumber(num);
		Date day=new Date();    
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		tast.setDate(df.format(day));
		tast.setZhu(zhu);
		task.setNumber(num);
		this.getSession().save(tast);
		this.getSession().update(task);
       for(int i=0;i<id.size();i++){
				String hql = "from addyl where groupid="+id.get(i); 
				System.out.println(id.get(i));
				Query query = this.getSession().createQuery(hql);  
				//默认查询出来的list里存放的是一个Object对象，但是在这里list里存放的不再是默认的Object对象了，而是Link对象了  
				List<addyl> addyl = query.list();  
				TestRun test=new TestRun();
				System.out.println(task.getId());
				List<cass>cass=test.testrun(addyl,task.getId(),Integer.parseInt(id.get(i)),num);	
				for(cass c:cass){
					this.getSession().save(c);
				}					
       }
		
	}

	
public List<String[]> suites(Integer id){
	
	Tast tast = (Tast) this.getSession().get(Tast.class, id);  
	JSONArray jsonArray = JSONArray.fromObject(tast.getZhu());
	List<String> zhuid=JSONArray.toList(jsonArray);
	List<String[]>z=new ArrayList();
	for(String zid:zhuid){
		System.out.println(zid);
    zhu zhu=(zhu) this.getSession().get(zhu.class, Integer.parseInt(zid));
    String[] zd = new String[]{"1","2"};
    zd[0]=String.valueOf(zhu.getId());
    zd[1]=zhu.getZname();
    z.add(zd);
	}
	return z;
}	
	
	
public List<cass> reportview(Integer id,Integer number,Integer zhuid,int method){
	
	String hql = "from cass where cassid ="+id+"and number ="+number+"and zhuid ="+zhuid +"and method = "+method; 
	Query query = this.getSession().createQuery(hql);  
	List<cass>cass=query.list(); 
	return cass;
}	
	
	














	
	
	
	
	
	

}
