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

import com.soccer.project.service.MatchingService;

@Controller
public class MatchingController {
   private final static String MAPPING = "/matching";

   @Autowired
   private MatchingService service;

   @RequestMapping(value = MAPPING+"/{action}", method = { RequestMethod.GET, RequestMethod.POST })
   public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action
		   													,ModelAndView modelandView) {

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
      }  else if ("delete".equalsIgnoreCase(action)) {
    	  viewName = viewName + "list";
    	  resultList = (List<Object>) service.deleteObject(paramMap);
      } else if ("insert".equalsIgnoreCase(action)) {
    	  viewName = viewName + "list";
    	  resultMap = (Map<String, Object>) service.saveObject(paramMap);
      } else if ("register".equalsIgnoreCase(action)) {
    	  viewName = viewName + action;
    	  resultMap = (Map<String, Object>) service.getObjectNameEmail(paramMap);
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