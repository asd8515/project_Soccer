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
public class MemberService {

    @Autowired
    private ShareDao dao;
	
    @Autowired
	private CommonUtil commonUtil;
	
	//read, list
    public Object getObject(Object dataMap) {
    	String sqlMapId = "member.read";
		Map resultObject = (Map) dao.getObject(sqlMapId, dataMap);
    	    	
    	return resultObject;
    }
    
    public Object getList(Object dataMap) {
    	String sqlMapId = "member.list";
        Object resultList = dao.getList(sqlMapId, dataMap);

        return resultList;
    }
	//---end of read, list
    
    public Object deleteObject(Object dataMap) {
    	String sqlMapId = "member.delete";
    	dao.deleteObject(sqlMapId, dataMap);
    	
    	//call getList() method.
    	return getList(dataMap);
    }
    
    /*
	 * 2018. 6. 19. 오후 7:46:42 written by cla:p  
	 */
    public Object saveObject(Object dataMap) {
    	Map<String, Object> paramMap = (Map<String, Object>) dataMap;
    	
    	String defaultAuthorityID = "UUID-A001";
    	String uniqueSequence = (String) paramMap.get("MEMBER_SEQ");
    	
    	//signup case
    	if(uniqueSequence == null){
			uniqueSequence = commonUtil.getUniqueSequence();
			paramMap.put("ID_AUTHORITY", defaultAuthorityID);
		}
    	
    	paramMap.put("MEMBER_SEQ", uniqueSequence);
    	
    	String sqlMapId = "member.merge";
    	
    	Integer resultKey = (Integer) dao.saveObject(sqlMapId, paramMap);

    	
    	//authorities
//		authorityRmemberService.insertObject(paramMap);

    	
    	//call getObject() method.    	
    	return getObject(dataMap);
    }

}