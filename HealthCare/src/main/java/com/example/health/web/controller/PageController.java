package com.example.health.web.controller;

import java.text.SimpleDateFormat;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class PageController {

	@RequestMapping("/11")
	public @ResponseBody String indexing1() throws Exception {
		return "index";
	}
	
	@RequestMapping("/main")
	public String index() throws Exception {
		return "index";
	}
	
	@RequestMapping("/trainerRegist")
	public String registAdmin() throws Exception {
		return "user/trainer/trainerRegist";
	}
	
	@RequestMapping("/memberLogin")
	public String memberIndex() throws Exception {
		return "user/member/memberIndex";
	}	
	
	@RequestMapping(value="/trainer/memberRegist")
	public String registMember(Model model) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String date = format.format(System.currentTimeMillis());
		model.addAttribute("nowDate", date);
		
		return "user/trainer/memberRegist";
	}
}
