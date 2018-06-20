package com.soccer.project.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SecurityController {

	@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
	public void login(Locale locale, Model model) {
		model.getClass();
	}

	@RequestMapping(value = { "/j_spring_security_logout" }, method = RequestMethod.GET)
	public String logout(Locale locale, Model model) {
		return "home";
	}

}