package com.guam.guam.bo;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.guam.guam.model.Guam;

@Service
public interface GuamBO {
	
	public void inserReserveData(Map<String, Object> map);
	public void insertOptions(Map<String, Object> map);
	
	public List<Guam> getReserveList();
	public List<Guam> getOptionList();
	public int getListCount();
	public int getOptionCount();
	public int getRate();	
	
	public void deleteReserveData(int resIdx);
	public void deleteOptionData(int opIdx);
	
	public void updateExchangeRate(int rate);


}
