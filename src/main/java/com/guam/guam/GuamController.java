package com.guam.guam;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GuamController {
	@RequestMapping(value="/")
	public String goHome() {
		return "home";
	}
	@RequestMapping(value="/admin")
	public String goAdmin() {
		return "admin";
	}
}
