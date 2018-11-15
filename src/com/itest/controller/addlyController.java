package com.itest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itest.entity.XiangYin;
import com.itest.entity.addyl;
import com.itest.service.InterService;
import com.itest.service.addluSrevice;

import net.sf.json.JSONArray;
@Controller
@RequestMapping(value = "itestc")
public class addlyController {
	@Autowired
	public addluSrevice addluSrevice;
	@Autowired
	public InterService InrerSrevice;

	
	@RequestMapping(value = "/yunxincs", method = RequestMethod.POST)
	public @ResponseBody JSONArray addylrun(addyl add) {	
		XiangYin xy=new XiangYin();
		xy=addluSrevice.getpost(add);
		JSONArray json = JSONArray.fromObject(xy); 
		int xiangyin=xy.getXiangyin();
		add.setZhuangtai(xiangyin);
		InrerSrevice.addyl(add);
		return json;		
}
	
}
