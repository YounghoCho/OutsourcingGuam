package com.guam.guam.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.guam.guam.bo.GuamBO;

@Controller
public class GuamController {
	@Resource
	private GuamBO service;
	//ajax DB insertion
	@RequestMapping(value="/makeReserve", method = RequestMethod.POST)
	@ResponseBody
	public void makeReserve(@RequestBody Map<String, Object> map) throws Exception{
		System.out.println("컨트롤러 인(삽입)");
		System.out.println(map.toString());
		service.inserReserveData(map);
	}

	//home
	@RequestMapping(value="/")
	public String goHome() {
		return "home";
	}
	//admin
	@RequestMapping(value="/admin")
	public String goAdmin() {
		return "admin";
	}
	//admin item addition
	@RequestMapping(value="/setOptions")
	public String SetOptions() {
		return "setting_option";
	}
	//admin item set exchange ration
	@RequestMapping(value="/setExchangeRate")
	public String setExchangeRate() {
		return "setting_exchange";
	}	
}
