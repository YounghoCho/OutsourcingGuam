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

	public void insertReserveDate(Map<String, Object> map) {
		HashMap<String, Object> paramMap = new HashMap<>();
		paramMap.put("korName", map.get("korName"));
		paramMap.put("engName", map.get("engName"));
		paramMap.put("phone", map.get("phone"));
		paramMap.put("email", map.get("email"));
		
		paramMap.put("bigMidCategory", map.get("bigMidCategory"));
		paramMap.put("smallEtcCategory", map.get("smallEtcCategory"));
		paramMap.put("reserveDateAndTime", map.get("reserveDateAndTime"));
		paramMap.put("reservePeople", map.get("reservePeople"));
		paramMap.put("preCharge", map.get("preCharge"));
		paramMap.put("localCharge", map.get("localCharge"));
//		paramMap.put("baby", Integer.parseInt((String)map.get("baby")));				
		sqlsession.insert(NAMESPACE_GUAM + "insertGuamData", paramMap);
	}
	public void insertOptions(Map<String, Object> map) {
		HashMap<String, Object> paramMap = new HashMap<>();
		paramMap.put("opBig", map.get("op1"));
		paramMap.put("opMid", map.get("op2"));
		paramMap.put("opSmall", map.get("op3"));
		paramMap.put("opAdult", map.get("op4"));
		paramMap.put("opKid", map.get("op5"));
		paramMap.put("opBaby", map.get("op6"));
		
		sqlsession.insert(NAMESPACE_GUAM + "insertOptions", paramMap);		
	}
	
	public List<Guam> getReserveList() {
		return sqlsession.selectList(NAMESPACE_GUAM + "getReserveList");
	}
	public List<Guam> getOptionList() {
		return sqlsession.selectList(NAMESPACE_GUAM + "getOptionList");
	}
	
	public int getListCount() {
		return sqlsession.selectOne(NAMESPACE_GUAM + "getListCount");
	}
	public int getOptionCount() {
		return sqlsession.selectOne(NAMESPACE_GUAM + "getOptionCount");
	}
	public int getRate() {
		return sqlsession.selectOne(NAMESPACE_GUAM + "getRate");
	}	
	public void deleteReserveData(int resIdx) {
		System.out.println("in dao" + "resIdx is"+resIdx);
		sqlsession.delete(NAMESPACE_GUAM + "deleteReserveData", resIdx);
	}
	public void deleteOptionData(int opIdx) {
		System.out.println("in dao" + "opIdx is"+opIdx);
		sqlsession.delete(NAMESPACE_GUAM + "deleteOptionData", opIdx);
	}
	public void updateExchangeRate(int rate) {
		sqlsession.delete(NAMESPACE_GUAM + "updateExchangeRate", rate);
		
	}


}
