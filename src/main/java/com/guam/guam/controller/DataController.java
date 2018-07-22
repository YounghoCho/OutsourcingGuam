package com.guam.guam.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.guam.guam.bo.GuamBO;

@RestController
public class DataController {
	@Resource
	private GuamBO service;
	
	//home 예약정보 삽입
	@RequestMapping(value="/makeReserve", method = RequestMethod.POST)
	public void makeReserve(@RequestBody Map<String, Object> map) throws Exception{
		System.out.println("컨트롤러 인(삽입)");
		System.out.println(map.toString());
		service.inserReserveData(map);
	}
	//admin 옵션정보 삽입
	@RequestMapping(value="/insertOptions", method = RequestMethod.POST)
	public void insertOptions(@RequestBody Map<String, Object> map) throws Exception{
		service.insertOptions(map);
	}
	//환율 정보 업데이트
	@RequestMapping(value="/updateExchangeRate", method = RequestMethod.PUT)
	public void updateExchangeRate(@RequestParam int rate) throws Exception{
		System.out.println(rate);
		service.updateExchangeRate(rate);
	}
	
	@RequestMapping(value = "/getListCount", method = RequestMethod.GET)
	public int getListCount() throws Exception{
		int count = service.getListCount();
		return count;
	}
	@RequestMapping(value = "/getOptionCount", method = RequestMethod.GET)
	public int getOptionCount() throws Exception{
		int count = service.getOptionCount();
		return count;
	}
	@RequestMapping(value = "/getReserveList", method = RequestMethod.GET)
	public Object getReserveList() throws Exception{
		Map<String, Object> result = new HashMap<>();
		result.put("guamData", service.getReserveList());
		return result;
	}	
	@RequestMapping(value = "/getOptionList", method = RequestMethod.GET)
	public Object getOptionList() throws Exception{
		Map<String, Object> result = new HashMap<>();
		result.put("optionData", service.getOptionList());
		return result;
	}		
	@RequestMapping(value = "/getRate", method = RequestMethod.GET)
	public int getRate() throws Exception{
		int rate = service.getRate();
		return rate;
	}		
	
	@RequestMapping(value = "/deleteReserveData", method = RequestMethod.PUT)
	public void deleteReserveData(@RequestParam int resIdx) throws Exception{
		service.deleteReserveData(resIdx);
	}
	@RequestMapping(value = "/deleteOptionData", method = RequestMethod.PUT)
	public void deleteOptionData(@RequestParam int opIdx) throws Exception{
		System.out.println("controller in");
		service.deleteOptionData(opIdx);
	}	
}
