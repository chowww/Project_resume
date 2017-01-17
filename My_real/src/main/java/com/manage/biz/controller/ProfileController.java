package com.manage.biz.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.manage.biz.service.ProfileService;
import com.manage.biz.vo.Education;
import com.manage.biz.vo.Profile;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ProfileController {
	
	@Autowired
	ProfileService profileService;
	
	private static final Logger logger = LoggerFactory.getLogger(ProfileController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping("/profileList")
	public String profileList(Locale locale, Model model) throws Exception {


	//	model.addAttribute("profileList", profileService.getAllList());
		
		return "emp/search";
	}
	
	@RequestMapping("/submit")
	public String addProfile(){
		return "emp/submit";
	}
	
	@RequestMapping("/insert")
	public String insertProfile(Profile profile, Education education, HttpServletRequest req) throws Exception{
		
		profileService.insertProfile(profile);
		profileService.insertEducation(education);
		profileService.insertOthers(req);
		return "redirect:profileList";
	}
	
	@RequestMapping("/schPerson")
	public String searchEmpName(Profile profile,  Model model, HttpServletRequest req) throws Exception{
		System.out.println(profile.getName());
		String name = req.getParameter("name");
		
		Profile rtnProfile = profileService.selectProfileInfo(profile);
		model.addAttribute("profile", profileService.selectProfileInfo(profile));
		
		int pro_id = rtnProfile.getProfile_ID();
			
		
		model.addAttribute("objectiveList", profileService.Obj_List(pro_id));
		model.addAttribute("experienceList", profileService.Exp_List(pro_id));
		model.addAttribute("activityList", profileService.Act_List(pro_id));
		model.addAttribute("skillList", profileService.Skill_List(pro_id));
		model.addAttribute("volunteerList", profileService.Vol_List(pro_id));
		
		return "emp/this";
	}
}
