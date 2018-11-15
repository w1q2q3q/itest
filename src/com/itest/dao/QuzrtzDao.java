package com.itest.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.quartz.CronScheduleBuilder;
import org.quartz.CronTrigger;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.JobKey;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.TriggerBuilder;
import org.quartz.TriggerKey;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;

import com.itest.entity.JobEntity;
@Repository
public class QuzrtzDao{
	@Autowired
	private Scheduler quartzScheduler;
	@Resource
	private SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	
	public List<JobEntity> ListJobEtity(){
		List<JobEntity> LJobEntity=this.getSession().createCriteria(JobEntity.class).list();
		return LJobEntity;	
	}

	public void LaddJob(String jobName, String jobGroupName, String cron) {
		try {
			// 获取调度器
			Scheduler sched = quartzScheduler;
			// 创建一项作业
			JobDetail job = JobBuilder.newJob(HelloWorldJob.class)
					.withIdentity(jobName, jobGroupName).build();	
			// 创建一个触发器
			CronTrigger trigger = TriggerBuilder.newTrigger()
					.withIdentity(jobName, jobGroupName)
					.withSchedule(CronScheduleBuilder.cronSchedule(cron))
					.build();
			sched.scheduleJob(job, trigger);
			quartzScheduler.pauseJob(JobKey.jobKey(jobName, jobGroupName));
			//启动
			if (!sched.isShutdown()) {				
				sched.start();
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	
	

	public void addJob(JobEntity JobEntity) {
		try {
			// 获取调度器
			Scheduler sched = quartzScheduler;
			// 创建一项作业
			JobDetail job = JobBuilder.newJob(HelloWorldJob.class)
					.withIdentity(JobEntity.getJobName(), JobEntity.getJobGroup()).build();	
			// 创建一个触发
			CronTrigger trigger = TriggerBuilder.newTrigger()
					.withIdentity(JobEntity.getTriggerName(), JobEntity.getTriggerGroupName())
					.withSchedule(CronScheduleBuilder.cronSchedule(JobEntity.getCronExpr()))
					.build();
			// 告诉调度器使用该触发器来安排作业
			sched.scheduleJob(job, trigger);
			this.getSession().save(JobEntity);
            quartzScheduler.pauseJob(JobKey.jobKey(JobEntity.getJobName(), JobEntity.getJobGroup()));
			//启动
			if (!sched.isShutdown()) {
				sched.start();
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	

	public void editJob(String oldjobName, String oldjobGroup,String jobName, String jobGroup,String cron) {
		try {	
			    List<JobEntity> zhu = new ArrayList();
			// 获取调度器
				Scheduler sched = quartzScheduler;
				// 创建一项作业
				JobDetail job = JobBuilder.newJob(HelloWorldJob.class)
						.withIdentity(jobName,jobGroup).build();	
				// 创建一个触发
				CronTrigger trigger = TriggerBuilder.newTrigger()
						.withIdentity(jobName,jobGroup)
						.withSchedule(CronScheduleBuilder.cronSchedule(cron))
						.build();
				// 告诉调度器使用该触发器来安排作业
				sched.scheduleJob(job, trigger);
				quartzScheduler.pauseJob(JobKey.jobKey(jobName,jobGroup));
				//启动
				if (!sched.isShutdown()) {
					sched.start();
				}
				Query query=this.getSession().createQuery("from JobEntity where jobName='"+oldjobName+"' and jobGroup='"+oldjobGroup+"'");
			    zhu=query.list();
				JobEntity JE=zhu.get(0);
				JE.setCronExpr(cron);
				JE.setJobName(jobName);
				JE.setJobGroup(jobGroup);
				JE.setTriggerName(jobName);
				JE.setTriggerGroupName(jobGroup);
				this.getSession().update(JE);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 修改定时器任务信息
	 */

	public boolean modifyJobTime(String oldjobName, String oldjobGroup, String jobName, String jobGroup,String cron) {
		try {
			Scheduler sched = quartzScheduler;
			CronTrigger trigger = (CronTrigger) sched.getTrigger(TriggerKey
					.triggerKey(oldjobName, oldjobGroup));
			if (trigger == null) {
				return false;
			}
			JobKey jobKey = JobKey.jobKey(oldjobName, oldjobGroup);
			TriggerKey triggerKey = TriggerKey.triggerKey(oldjobName,
					oldjobGroup);
			JobDetail job = sched.getJobDetail(jobKey);
			Class jobClass = job.getJobClass();
			// 停止触发器
			sched.pauseTrigger(triggerKey);
			// 移除触发器
			sched.unscheduleJob(triggerKey);
			// 删除任务
			sched.deleteJob(jobKey);
			editJob(oldjobName, oldjobGroup,jobName, jobGroup,cron);
			return true;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		
	}

	
	
//修改时间
	public void modifyJobTime(String triggerName, String triggerGroupName,
			String time) {
		try {
			Scheduler sched = quartzScheduler;
			CronTrigger trigger = (CronTrigger) sched.getTrigger(TriggerKey
					.triggerKey(triggerName, triggerGroupName));
			if (trigger == null) {
				return;
			}
			String oldTime = trigger.getCronExpression();
			if (!oldTime.equalsIgnoreCase(time)) {
				CronTrigger ct = (CronTrigger) trigger;
				// 修改时间
				ct.getTriggerBuilder()
						.withSchedule(CronScheduleBuilder.cronSchedule(time))
						.build();
				// 重启触发器
				sched.resumeTrigger(TriggerKey.triggerKey(triggerName,
						triggerGroupName));
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	

	public void removeJob(String jobName, String jobGroupName,
			String triggerName, String triggerGroupName) {
		try {
			Scheduler sched = quartzScheduler;
			// 停止触发器
			sched.pauseTrigger(TriggerKey.triggerKey(triggerName,
					triggerGroupName));
			// 移除触发器
			sched.unscheduleJob(TriggerKey.triggerKey(triggerName,
					triggerGroupName));
			// 删除任务
			sched.deleteJob(JobKey.jobKey(jobName, jobGroupName));
			
			this.getSession().createQuery("DELETE FROM JobEntity where jobName='"+jobName+"' and jobGroup ='"+jobGroupName+"' ").executeUpdate();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}


	public void startSchedule() {
		try {
			Scheduler sched = quartzScheduler;
			sched.start();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}


	public void shutdownSchedule() {
		try {
			Scheduler sched = quartzScheduler;
			if (!sched.isShutdown()) {
				sched.shutdown();
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}


	public void pauseJob(String jobName, String jobGroupName) {
		try {
			quartzScheduler.pauseJob(JobKey.jobKey(jobName, jobGroupName));
		} catch (SchedulerException e) {
			e.printStackTrace();
		}
	
	}


	public void resumeJob(String jobName, String jobGroupName) {
		try {
			quartzScheduler.resumeJob(JobKey.jobKey(jobName, jobGroupName));
		} catch (SchedulerException e) {
			e.printStackTrace();
		}
	}

	public List<JobEntity> listjob(List<JobEntity> jobInfos){
		for(JobEntity JobEntity:jobInfos){
		Query query=this.getSession().createQuery("from JobEntity where jobName='"+JobEntity.getJobName()+"' and jobGroup='"+JobEntity.getJobGroup()+"'");
		List<JobEntity> listjob=query.list();
		JobEntity.setJobId(listjob.get(0).getJobId());
		}	
	return 	jobInfos;
	}
	
	
	
	
	
	
	
	
	
	
	
}
