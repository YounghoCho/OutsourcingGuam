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
	public void inserReserveData(Map<String, Object> map) {
		dao.insertReserveDate(map);		
	}
	@Override
	public void insertOptions(Map<String, Object> map) {
		dao.insertOptions(map);		
	}
	
	@Override
	public List<Guam> getReserveList() {
		return dao.getReserveList();
	}
	@Override
	public List<Guam> getOptionList() {
		return dao.getOptionList();
	}
	@Override
	public int getListCount() {
		return dao.getListCount();
	}
	@Override
	public int getOptionCount() {
		return dao.getOptionCount();
	}
	@Override
	public int getRate() {
		return dao.getRate();
	}	
	@Override
	public void deleteReserveData(int resIdx) {
		dao.deleteReserveData(resIdx);		
	}
	@Override
	public void deleteOptionData(int opIdx) {
		dao.deleteOptionData(opIdx);	
	}
	@Override
	public void updateExchangeRate(int rate) {
		dao.updateExchangeRate(rate);	
		
	}


}
