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
    
    public Object saveObject(Object dataMap) {
    	
    	Map<String, Object> paramMap = (Map<String, Object>) dataMap;
    	
    	String uniqueSequence = (String) paramMap.get("GAME_SEQ");
    	String memberSequence = (String) paramMap.get("MEMBER_SEQ");
    	
    	if(uniqueSequence == null || uniqueSequence ==""){
			uniqueSequence = commonUtil.getUniqueSequence();
		}
    	
    	paramMap.put("GAME_SEQ", uniqueSequence);
    	paramMap.put("MEMBER_SEQ", memberSequence);
    	
    	String sqlMapId = "matching.merge";
    	
    	Integer resultKey = (Integer) dao.saveObject(sqlMapId, paramMap);
    	   	
    	return getObject(dataMap);
    }
    
    public Object putSomeValues(Object dataMap) {
    	((Map<String, Object>)dataMap).put("REGISTER_SEQ", "UUID-2222-2222222");
    	((Map<String, Object>)dataMap).put("MODIFIER_SEQ", "UUID-2222-2222222");
    	((Map<String, Object>)dataMap).put("ORGANIZATION_SEQ", "UUID-11-CIPI9Z");
    	Object resultMap = dataMap;
    	
    	return resultMap;
    }
}