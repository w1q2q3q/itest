package com.itest.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import com.itest.entity.JobEntity;
import com.itest.entity.Person;
import com.itest.entity.Tast;
import com.itest.entity.Testtask;
import com.itest.entity.addyl;
import com.itest.entity.cass;

import net.sf.json.JSONArray;

public class HelloWorldJob implements Job{

	/**
	 * "0/10 * * * * ?  
	 */
	@Override
	public void execute(JobExecutionContext arg0) throws JobExecutionException {
		
		System.out.println(arg0.getTrigger().getKey().getName());
		System.out.println(arg0.getTrigger().getKey().getGroup());
		WebApplicationContext wac = ContextLoader.getCurrentWebApplicationContext();  
        SessionFactory factory=wac.getBean(SessionFactory.class);
        Session session=factory.openSession();  
        Query query=session.createQuery("from JobEntity where jobName='"+arg0.getTrigger().getKey().getName()+"' and jobGroup='"+arg0.getTrigger().getKey().getGroup()+"'");
	    List<JobEntity> LJobEntity=query.list();
	    JobEntity JobEntity=LJobEntity.get(0);
	    System.out.println(JobEntity.getZhu());
	    int count=JobEntity.getCount()+1;
	    JobEntity.setCount(count);
		Tast tast=new Tast();
		tast.setCassid(JobEntity.getJobId());
		Date day=new Date();    
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		tast.setDate(df.format(day));
		tast.setMethod(1);
		tast.setNumber(count);
		tast.setZhu(JobEntity.getZhu());
		//Session session =sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(JobEntity);//之前已实例化好了的一个对象
		session.save(tast);
		tx.commit();
	    JSONArray jsonArray = JSONArray.fromObject(JobEntity.getZhu());
		List<String> id=JSONArray.toList(jsonArray);
		 for(int i=0;i<id.size();i++){
				String hql = "from addyl where groupid="+id.get(i); 
				System.out.println(id.get(i));
				Query queryc = session.createQuery(hql);  
				//默认查询出来的list里存放的是一个Object对象，但是在这里list里存放的不再是默认的Object对象了，而是Link对象了  
				List<addyl> addyl = queryc.list();  
				TestRun test=new TestRun();
				 System.out.println(addyl.get(0).getName());
				List<cass>cass=test.testrun(addyl,JobEntity.getJobId(),Integer.parseInt(id.get(i)),count);	
				for(cass c:cass){
					c.setMethod(1);
				    session.save(c);
		}
				}				
		session.close();
	}
	
}
