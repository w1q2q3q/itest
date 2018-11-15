package com.itest.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itest.entity.addyl;
import com.itest.entity.zhu;
import com.itest.service.InterService;

@Controller
@RequestMapping(value = "jump")
public class tiaozhuan {
	@Autowired
	public InterService InterService;

	@RequestMapping("/tiaozhuan")
	public String tiaozhuan() {

		return "yongli/tiaozhuan";
	}

	@RequestMapping("/addyl")
	public String addyl() {

		return "redirect:/addyl/Interface";
	}

	@RequestMapping("/yongliku")
	public String Interfaceindex(Model model) {
		List<addyl> c = InterService.getaddyl();
		System.out.print(c.get(0).getName());
		List<Object[]> ylzfind = InterService.ylzfind();
		model.addAttribute("ylzfind", ylzfind);
		model.addAttribute("cs", c);
		return "yongli/yongliku";
	}

	@RequestMapping("/deleat")
	public String deleat(Integer id) {
		System.out.println(id);
		InterService.deleat(id);
		return "redirect:/jump/yongliku";
	}

	@RequestMapping(value = "/zhu", method = RequestMethod.GET)
	public String zhufind(Model model) {
		List<zhu> zhufind = InterService.zhufind();
		model.addAttribute("cs", zhufind);
		return "yongli/zhu";
	}

	@RequestMapping(value = "/addzhu", method = RequestMethod.POST)
	public String addzhu(zhu zhu) {
		Date now = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");// 可以方便地修改日期格式
		String date = dateFormat.format(now);
		System.out.println(date);
		zhu.setDate(date);
		InterService.addzhu(zhu);
		return "redirect:/jump/zhu";
	}

	@RequestMapping("/zdeleat")
	public String zdeleat(Integer id) {
		System.out.println(id);
		InterService.zdeleat(id);
		return "redirect:/jump/zhu";
	}

}
