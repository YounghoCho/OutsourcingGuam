package com.guam.guam.bo;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.guam.guam.dao.GuamDAO;
import com.guam.guam.model.Guam;

@Service("GuamBO")
public class GuamBOImpl implements GuamBO{
	@Resource(name = "GuamDAO")
	private GuamDAO dao;
	
	@Override
	public List<Guam> getGuamData() {
		System.out.println("boimple ¿Œ");
		return dao.getGuamData();
	}

	@Override
	public void inserReserveData(Map<String, Object> map) {
		dao.insertReserveDate(map);		
	}
	
}
