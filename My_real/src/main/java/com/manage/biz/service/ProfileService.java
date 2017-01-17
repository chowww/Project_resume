package com.manage.biz.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.manage.biz.vo.Education;
import com.manage.biz.vo.Activity;
import com.manage.biz.vo.Experience;
import com.manage.biz.vo.Objective;
import com.manage.biz.vo.Profile;
import com.manage.biz.vo.Skill;
import com.manage.biz.vo.Volunteer;

public interface ProfileService {
	List<Profile> getAllList() throws Exception;
	Profile selectProfileInfo(Profile profile) throws Exception;
	Education selecteducationInfo(int pro_id) throws Exception;
	List<Objective> Obj_List(int pro_id) throws Exception;
	List<Experience> Exp_List(int pro_id) throws Exception;
	List<Skill> Skill_List(int pro_id) throws Exception;
	List<Activity> Act_List(int pro_id) throws Exception;
	List<Volunteer> Vol_List(int pro_id) throws Exception;
	
	void insertProfile(Profile profile) throws Exception;
	void insertEducation(Education education) throws Exception;
	void insertOthers(HttpServletRequest req) throws Exception;
}
