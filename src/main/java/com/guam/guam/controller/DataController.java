package com.guam.guam.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.guam.guam.bo.GuamBO;

@RestController
public class DataController {
	@Resource
	private GuamBO service;
	
	@RequestMapping(value = "/getListCount", method = RequestMethod.GET)
	public int getListCount() throws Exception{
		int count = service.getListCount();
		return count;
	}
	@RequestMapping(value = "/getReserveList", method = RequestMethod.GET)
	public Object getReserveList() throws Exception{
		Map<String, Object> result = new HashMap<>();
		result.put("guamData", service.getReserveList());
		return result;
	}	
	@RequestMapping(value = "/deleteReserveData", method = RequestMethod.PUT)
	public void deleteReserveData(@RequestParam int resIdx) throws Exception{
		System.out.println("controller in");
		service.deleteReserveData(resIdx);
	}
}
