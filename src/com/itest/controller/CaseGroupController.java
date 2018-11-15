package com.itest.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itest.entity.Tast;
import com.itest.entity.Testtask;
import com.itest.entity.addyl;
import com.itest.entity.cass;
import com.itest.entity.zhu;
import com.itest.service.CassGroupservice;
import com.itest.service.InterService;

import net.sf.json.JSONArray;

@Controller
@RequestMapping(value = "cassgroup")
public class CaseGroupController {
	@Autowired
	public CassGroupservice CassGroupservice;
	@Autowired
	public InterService InterService;
	
	@RequestMapping(value = "/findcass", method = RequestMethod.GET)
	public String findcass(Integer id,Model model) {	
		List<Object[]> ylzfind=InterService.ylzfind();
	    model.addAttribute("ylzfind",ylzfind);
		model.addAttribute("cs", CassGroupservice.findcass(id));
		return "yongli/yongliku";
	}

	@RequestMapping(value = "/zhurun", method = RequestMethod.POST)
	public String zhurun(Testtask task,int taskcheck,String jobName,String jobGroupName,String cron,String[] zhucheck,Model model)  {	
		if(taskcheck==0){
		Date day=new Date();    
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
		task.setDate(df.format(day));
		JSONArray jsonarray = JSONArray.fromObject(zhucheck);
		task.setZhu(jsonarray.toString());
		CassGroupservice.addTask(task);	
		CassGroupservice.zhurun(task);
		return"redirect:/cassgroup/findtask";
		}else{
	    System.out.println("ccccc");
	    model.addAttribute("jobName", jobName);
	    model.addAttribute("jobGroupName", jobGroupName);
	    model.addAttribute("cron", cron);
	    model.addAttribute("zhucheck", zhucheck);
		return"redirect:/quartz/quartzadd";
		}
		
	}
		
	
	
	@RequestMapping(value = "/taskrun")
	public String taskrun(int id)  {	
        Testtask task=CassGroupservice.findoneTask(id);
        CassGroupservice.zhurun(task);
		return"redirect:/cassgroup/findtask";
	}
	

	@RequestMapping(value = "/findtask")
	public String findTask(Model model)  {	
		List<Testtask> task=CassGroupservice.findTask();
		model.addAttribute("task", task);
		return"yongli/task";
	}
		
	@RequestMapping(value = "/findreport")
	public String findreport(int id,Model model) {	
		int method=0;
		List<Tast>tast=CassGroupservice.taskreport(id,method);
        model.addAttribute("tast", tast);
        model.addAttribute("id", id);
		return"yongli/taskreport";
	}
			
	@RequestMapping(value = "/report")
	public String report(Integer cassid,Integer id,Integer number,int method,Model model) {	
		//model.addAttribute("cs", CassGroupservice.findcass(id));
		//CassGroupservice.zhurun(zhucheck);
		model.addAttribute("id", id);
		model.addAttribute("cassid",cassid);
		model.addAttribute("number", number);
		model.addAttribute("method",method);
		//System.out.print(id+number);
		return"report/index";
	}
	
	
	@RequestMapping(value = "/suites")
	public String suites(Integer cassid,Integer id,Integer number,int method,Model model) {	
		List<String[]>zhu=CassGroupservice.suites(id);
	    model.addAttribute("zhu", zhu);
	    model.addAttribute("number", number);
	    model.addAttribute("id", id);
	    model.addAttribute("cassid", cassid);
	    model.addAttribute("method",method);
		return"report/suites";
	}
	@RequestMapping(value = "/overview")
	public String overview(Integer cassid,Integer id,Integer number,int method,Model model) {	
		List<String[]>zhu=CassGroupservice.suites(id);
	    model.addAttribute("zhu", zhu);
	    model.addAttribute("number", number);
	    model.addAttribute("cassid", cassid);
	    model.addAttribute("method",method);
		return"report/overview";
	}
	
	
	@RequestMapping(value = "/reportview")
	public String reportview(Integer cassid,Integer number,Integer zhuid,int method,Model model) {	
		//model.addAttribute("cs", CassGroupservice.findcass(id));
		//CassGroupservice.zhurun(zhucheck);
		List<cass>cass=CassGroupservice.reportview(cassid, number, zhuid,method);
		System.out.println(cass);
		model.addAttribute("cass", cass);	
		return"report/report";
	}
	
	
	
	
}
