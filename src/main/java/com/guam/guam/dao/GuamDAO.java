package com.guam.guam.dao;

import java.util.List;

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
}
