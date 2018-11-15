package com.itest.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.persistence.Entity;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.itest.entity.Person;
import com.itest.entity.addyl;
import com.itest.intertor.Token;
import com.itest.service.InterService;
import com.itest.service.addluSrevice;

@Controller
@RequestMapping(value = "addyl")
public class InterController {
	@Autowired
	public InterService InterService;
	@Autowired
	public addluSrevice addluSrevice;
	@RequestMapping("/login")
	public String login(HttpSession session, String username, String password) {
		List<Person> list = InterService.getPersons();
		System.out.println(username + password);
		ModelAndView mv = new ModelAndView();
		for (Person person : list) {
			if (person.getName().equals(username) && person.getPassword().equals(password)) {
				session.setAttribute("username", username);
				
				return "redirect:/addyl/Interface";

			}
		}
		return "error";
	}

	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) throws Exception {
		// 清除Session,SessionStatus sessionStatus
		// session.removeAttribute("username");//我这里是先取出httpsession中的user属性
		session.invalidate(); // 然后是让httpsession失效
		// sessionStatus.setComplete();//最后是调用sessionStatus方法
		return "error";
	}

	@RequestMapping("/Interface")
	public String Interfaceindex(addyl add,Model model) {
		model.addAttribute("addyl",add);
		List<Object[]> ylzfind=InterService.ylzfind();
		model.addAttribute("ylzfind",ylzfind);
		return "yongli/addyl";
	}

	@RequestMapping(value = "/c", method = RequestMethod.POST)
	// @Token(remove=true)
	public String saveperson(addyl add,Model model) {
		System.out.println("cs" + add.getName());
		InterService.addyl(add);
		model.addAttribute("para", "cs");
		return "yongli/tiaozhuan";
	}

	@RequestMapping(value = "/yunxin", method = RequestMethod.POST)
	public String saveperson1(addyl add,Model model) {
		System.out.println(addluSrevice.getpost(add));
		 model.addAttribute("addyl",add);
		 model.addAttribute("xiangyin",addluSrevice.getpost(add));	 
		return "yongli/addyl";
	}
	
	@RequestMapping(value = "/getaddylById", method = RequestMethod.GET)
	 public String getaddylById(Integer id,Model model) { 
		List<Object[]> ylzfind=InterService.ylzfind();
		  model.addAttribute("ylzfind",ylzfind);
		  model.addAttribute("addyl",InterService.getaddylById(id));
		
	      return "yongli/addyl";
	    }  
	
	
	
	
	
	
	
	
	
}
