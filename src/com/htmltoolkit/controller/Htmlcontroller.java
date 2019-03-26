package com.htmltoolkit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.htmltoolkit.Login;
import com.htmltoolkit.Registration;
import com.htmltoolkit.service.HtmlServiceImpli;

@Controller
public class Htmlcontroller {
	@Autowired
	HtmlServiceImpli service;

	@RequestMapping(value = "/")
	public String controllerView(ModelAndView modelAndView) {

		return "index";

	}

	@RequestMapping(value = "/index")
	public String controllerView1(ModelAndView modelAndView) {

		return "index";

	}

	@RequestMapping(value = "/login")
	public String loginpage(ModelAndView modelAndView) {

		return "login";

	}
	
	
	@RequestMapping(value = "/nlogin")
	public String loginpagenew(ModelAndView modelAndView) {

		return "nlogin";

	}

	@RequestMapping(value = "/toolkit")
	public String toolkit(ModelAndView modelAndView) {

		return "HtmlEditor";

	}

	@RequestMapping(value = "/forgotpassword")
	public ModelAndView forgotpassowrd(@ModelAttribute("Emailid") Registration reg) {
		String s = service.forgotservice(reg);

		if (s.equals("success")) {
			return new ModelAndView("nlogin", "status", s);
		}

		else {
			return new ModelAndView("nlogin", "status", s);

		}
	}

	@RequestMapping(value = "/js&css")
	public String jsscript(ModelAndView modelAndView) {

		return "JSCSSEditor";

	}
	
	@RequestMapping(value = "/saib")
	public String jsscript1ds(ModelAndView modelAndView) {

		return "saib";

	}

	@RequestMapping(value = "/jsscript1")
	public String jsscript1(ModelAndView modelAndView) {

		return "UIEditor";

	}

	

	@RequestMapping(value = "registration", method = RequestMethod.POST)
	public ModelAndView controllerSave(@ModelAttribute("registration") Registration registration) {
		String s = service.registrtionservice(registration);

		if (s.equals(registration.getName() + "Register success")) {
			return new ModelAndView("nlogin", "status", s);
		} else
			return new ModelAndView("nlogin");

	}

	@RequestMapping(value = "logincheck", method = RequestMethod.POST)
	public ModelAndView logincheck(@ModelAttribute("login") Login login) {

		String s = service.loginservice(login);

		if (s.equals("success")) {
			return new ModelAndView("Home", "status", s);
		} else
			return new ModelAndView("nlogin", "status", s);

	}

}
