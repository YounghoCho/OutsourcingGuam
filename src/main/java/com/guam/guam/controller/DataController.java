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
		System.out.println("컨트롤러 인(옵션)");
		System.out.println(map.toString());
		service.insertOptions(map);
	}
	
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
