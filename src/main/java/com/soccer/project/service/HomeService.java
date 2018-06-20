package com.soccer.project.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soccer.project.dao.ShareDao;

/**
* Handles requests for the application home page.
*/
@Service
public class HomeService {

    @Autowired
    private ShareDao dao;

    public Object getObject(Object dataMap) {
    	String sqlMapId = "home.read";
    	Object resultObject = dao.getObject(sqlMapId, dataMap);
    	    	
    	return resultObject;
    }
    
    public Object getList(Object dataMap) {
    	String sqlMapId = "home.list";
        Object resultList = dao.getList(sqlMapId, dataMap);

        return resultList;
    }
	

}