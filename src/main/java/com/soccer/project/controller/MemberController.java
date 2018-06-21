/**
 * It's Designed For incubation Center
 * @author ohsanghun
 * @version     %I%, %G%
 * @since       1.0
 */
package com.soccer.project.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.soccer.project.service.MemberService;

@Controller
public class MemberController {
   private final static String MAPPING = "/member";

   @Autowired
   private MemberService service;

   @RequestMapping(value = MAPPING+"/{action}", method = { RequestMethod.GET, RequestMethod.POST })
   public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action, 
		   										ModelAndView modelandView) {

	  String viewName = MAPPING + "/";

      Map<String, Object> resultMap = new HashMap<String, Object>();
      List<Object> resultList = new ArrayList<Object>();

      // divided depending on action value
      if ("edit".equalsIgnoreCase(action)) {
         viewName = viewName + action;
         resultMap = (Map<String, Object>) service.getObject(paramMap);
      } else if ("read".equalsIgnoreCase(action)) {
         viewName = viewName + action;
         resultMap = (Map<String, Object>) service.getObject(paramMap);
      } else if ("list".equalsIgnoreCase(action)) {
         viewName = viewName + action;
         resultList = (List<Object>) service.getList(paramMap);
      } else if ("delete".equalsIgnoreCase(action)) {
    	  //go back to list
    	  viewName = viewName + "list";
    	  resultList = (List<Object>) service.deleteObject(paramMap);
      }
    
/*
 * 
 * 2018. 6. 19. 오후 7:00:51 written by cla:p  
 * 
 */
      else if ("signup".equalsIgnoreCase(action)) {
    	  viewName = viewName + action;
      }else if ("merge".equalsIgnoreCase(action)) {
    	  service.saveObject(paramMap);
          viewName = viewName + "list";
          resultList = (List<Object>) service.getList(paramMap);
      }else if ("insert".equalsIgnoreCase(action)) {
    	  //go to home
    	  viewName = "home";
    	  resultMap = (Map<String, Object>) service.saveObject(paramMap);
      } else {
         viewName = viewName + "list";
         resultList = (List<Object>) service.getList(paramMap);
      }

      modelandView.setViewName(viewName);

      modelandView.addObject("paramMap", paramMap);
      modelandView.addObject("resultMap", resultMap);
      modelandView.addObject("resultList", resultList);

      return modelandView;
   }
}