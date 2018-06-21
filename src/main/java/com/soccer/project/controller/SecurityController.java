package com.soccer.project.controller;

import java.util.Locale;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SecurityController {

    @RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
    public ModelAndView login(@RequestParam Map<String, Object> paramMap, ModelAndView modelandView) {
    	String viewName = "login";
        modelandView.setViewName(viewName);

        modelandView.addObject("paramMap", paramMap);
        return modelandView;
    }
    
	@RequestMapping(value = { "/j_spring_security_logout" }, method = RequestMethod.GET)
	public String logout(Locale locale, Model model) {
		return "home";
	}

}