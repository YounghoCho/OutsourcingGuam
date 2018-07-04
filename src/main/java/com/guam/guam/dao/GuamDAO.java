package com.guam.guam.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.guam.guam.model.Guam;

@Repository("GuamDAO")
public class GuamDAO {
	private static final String NAMESPACE_GUAM = "guam.";
	
	@Autowired
	private SqlSessionTemplate sqlsession;
	
	public List<Guam> getGuamData(){
		System.out.println("dao ¿Œ");
		return sqlsession.selectList(NAMESPACE_GUAM + "getGuamData");
	}

	public void insertReserveDate(Map<String, Object> map) {
		HashMap<String, Object> paramMap = new HashMap<>();
		paramMap.put("korName", map.get("korName"));
		paramMap.put("engName", map.get("engName"));
		paramMap.put("phone", map.get("phone"));
		paramMap.put("email", map.get("email"));
		paramMap.put("category", map.get("category"));
		paramMap.put("tour", map.get("tour"));
		paramMap.put("reserveDate", map.get("reserveDate"));
		paramMap.put("reserveTime", map.get("reserveTime"));
		paramMap.put("adult", Integer.parseInt((String)map.get("adult")));
		paramMap.put("kid", Integer.parseInt((String)map.get("kid")));
		paramMap.put("baby", Integer.parseInt((String)map.get("baby")));
				
		sqlsession.insert(NAMESPACE_GUAM + "insertGuamData", paramMap);
	}
}
