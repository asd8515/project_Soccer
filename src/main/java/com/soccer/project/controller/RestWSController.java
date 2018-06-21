/**
 * 
 */
package com.soccer.project.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.soccer.project.service.MatchingService;
import com.soccer.project.service.MemberService;

/*
 * 
 * 2018. 6. 20. 오후 3:19:01 written by cla:p  
 * 
 */
@RestController
public class RestWSController {

	private final static String MAPPING = "/ws/";

	// @Autowired
	// private AuthorityService authorityService;

	@Autowired
	private MemberService memberService;

	@Autowired
	private MatchingService matchingService;

	// Restful
	@RequestMapping(value = MAPPING + "{action}", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "application/json")
	public Object actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action) {

		List<Object> resultList = new ArrayList<Object>();

		if ("memberList".equalsIgnoreCase(action)) {
			resultList = (List<Object>) memberService.getList(paramMap);
		} else if ("matchingList".equalsIgnoreCase(action)) {
			resultList = (List<Object>) matchingService.getList(paramMap);
		} else if ("assignedAuthorityList".equalsIgnoreCase(action)) {
		}

		return resultList;
	}
}