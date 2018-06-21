package com.soccer.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soccer.project.dao.ShareDao;

@Service
public class AuthorityRmemberService {

	@Autowired
	private ShareDao dao;
	
	public List<Object> getList(Object dataMap) {
		String sqlMapId = "authorityRmember.list";
		List<Object> resultObject = (List<Object>) dao.getList(sqlMapId, dataMap);

		return resultObject;
	}

	public Object getObject(Object dataMap) {
		String sqlMapId = "authorityRmember.read";
		Object resultObject = dao.getObject(sqlMapId, dataMap);
		
		return resultObject;
	}

	/*
	 * 
	 * 2018. 6. 21. 오후 1:58:36 written by cla:p 
	 *  
	 * NOT IN USE
	 
	public Object saveObject(Object dataMap) {
		String sqlMapId = "authorityRmember.merge";
		Integer resultKey = (Integer) dao.saveObject(sqlMapId, dataMap);
		
		return resultKey;
	}*/

	public Object insertObject(Object dataMap) {
		String sqlMapId = "authorityRmember.delete";
		Integer resultKey = (Integer) dao.saveObject(sqlMapId, dataMap);

		sqlMapId = "authorityRmember.insert";
		resultKey = (Integer) dao.saveObject(sqlMapId, dataMap);
		
		return resultKey;
	}

	public Object deleteObject(Object dataMap) {
		String sqlMapId = "authorityRmember.delete";

		Integer resultKey = (Integer) dao.deleteObject(sqlMapId, dataMap);

		sqlMapId = "authorityRmember.list";
		
		List<Object> resultObject = (List<Object>) dao.getList(sqlMapId, dataMap);
		
		return resultObject;
	}
}
