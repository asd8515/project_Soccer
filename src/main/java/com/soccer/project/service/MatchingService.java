package com.soccer.project.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soccer.project.dao.ShareDao;
import com.soccer.project.util.CommonUtil;

/**
* Handles requests for the application home page.
*/
@Service
public class MatchingService {

    @Autowired
    private ShareDao dao;
	@Autowired
	private CommonUtil commonUtil;
	
	//read, list
    public Object getObject(Object dataMap) {
    	String sqlMapId = "matching.read";
    	Object resultObject = dao.getObject(sqlMapId, dataMap);
    	    	
    	return resultObject;
    }
    
    public Object getList(Object dataMap) {
    	String sqlMapId = "matching.list";
        Object resultList = dao.getList(sqlMapId, dataMap);

        return resultList;
    }
	//---end of read, list
    
    public Object deleteObject(Object dataMap) {
    	String sqlMapId = "matching.delete";
    	dao.deleteObject(sqlMapId, dataMap);
    	
    	//call getList() method.
    	return getList(dataMap);
    }
    
    public Object insertObject(Object dataMap) {
    	String sqlMapId = "matching.insert";
    	//fill REGISTER_SEQ / MDIFIER_SEQ / ORGANNIZATION_SEQ
    	dataMap = putSomeValues(dataMap);
    	
    	dao.saveObject(sqlMapId, dataMap);
    	
    	//call getList() method.    	
    	return getList(dataMap);
    }
    
    public Object putSomeValues(Object dataMap) {
    	((Map<String, Object>)dataMap).put("REGISTER_SEQ", "UUID-2222-2222222");
    	((Map<String, Object>)dataMap).put("MODIFIER_SEQ", "UUID-2222-2222222");
    	((Map<String, Object>)dataMap).put("ORGANIZATION_SEQ", "UUID-11-CIPI9Z");
    	Object resultMap = dataMap;
    	
    	return resultMap;
    }
}