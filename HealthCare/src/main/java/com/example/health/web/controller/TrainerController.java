package com.example.health.web.controller;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.health.common.CommonUtil;
import com.example.health.web.dto.user.MemberDto;
import com.example.health.web.dto.user.TrainerDto;
import com.example.health.web.service.trainer.TrainerServiceImpl;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

/**
 * Trainer Controller
 * @author yeong
 *
 */
@Controller
public class TrainerController {

	@Autowired
	private TrainerServiceImpl trainerService;

	@RequestMapping(value="/trainer/Login", method=RequestMethod.POST)	
	public @ResponseBody String trainerLogin(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		JsonObject obj = new JsonObject();
		String json = "";
		TrainerDto dto = new TrainerDto();
		TrainerDto trainer = new TrainerDto();
		if(CommonUtil.isNotNullString(request.getParameter("adId")) &&
				CommonUtil.isNotNullString(request.getParameter("adPass"))) {
			
			dto.setUserId(request.getParameter("adId"));
			dto.setUserPw(request.getParameter("adPass"));
			
			trainer = trainerService.getTrainer(dto.getUserId());
			boolean isProcessing = trainerService.loginTrainer(dto.getUserId(), dto.getUserPw());
			
			if(isProcessing) {			
//				session.setAttribute("loginInfo", dto.getUserId());
				session.setAttribute("loginInfo", trainer);
				obj.addProperty("result", "/trainer/main");
				json = new Gson().toJson(obj);
			}
			else {
				obj.addProperty("result", false);
				json = new Gson().toJson(obj);
			}
		}
		else {
			obj.addProperty("result", false);
			json = new Gson().toJson(obj);
		}
		
		return json;
	}
	
	@RequestMapping(value="/trainer/main", method=RequestMethod.GET)
	public String trainerMain(HttpServletRequest request) {
		HttpSession session = request.getSession();
//		String trainerSession = (String) session.getAttribute("loginInfo");
		TrainerDto trainerSession = (TrainerDto) session.getAttribute("loginInfo");
		session.setAttribute("loginInfo", trainerSession);
		return "user/trainer/trainerMain";
	}
	
	@RequestMapping(value="/trainer/memberRegister", method=RequestMethod.POST)
	public @ResponseBody String registerMember(MemberDto dto, HttpServletRequest request) throws Exception {
		boolean isRegister = trainerService.registerMember(dto);
		JsonObject obj = new JsonObject();
		String json;
		if(isRegister) {
			obj.addProperty("result", "/trainer/main");
			json = new Gson().toJson(obj);
		}
		else {
			obj.addProperty("result", false);
			json = new Gson().toJson(obj);
		}
		return json;
	}
}
