package com.manage.biz.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.biz.dao.ProfileDao;
import com.manage.biz.vo.Activity;
import com.manage.biz.vo.Education;
import com.manage.biz.vo.Experience;
import com.manage.biz.vo.Objective;
import com.manage.biz.vo.Profile;
import com.manage.biz.vo.Skill;
import com.manage.biz.vo.Volunteer;

@Service
public class ProfileServiceImpl implements ProfileService{
	
	@Autowired
	private ProfileDao profileDao;

	public List<Profile> getAllList() throws Exception{
		
		List<Profile>rtnList = profileDao.selectList();
		
		return rtnList;
	}
	
	public Profile selectProfileInfo(Profile profile) throws Exception{
		return profileDao.selectprofileInfo(profile);
	}

	
	public List<Objective> Obj_List(int pro_id) throws Exception {
		// TODO Auto-generated method stub
		return profileDao.Obj_List(pro_id);
	}

	
	public List<Experience> Exp_List(int pro_id) throws Exception {
		// TODO Auto-generated method stub
		return profileDao.Exp_List(pro_id);
	}

	
	public List<Skill> Skill_List(int pro_id) throws Exception {
		// TODO Auto-generated method stub
		return profileDao.Skill_List(pro_id);
	}

	
	public List<Activity> Act_List(int pro_id) throws Exception {
		// TODO Auto-generated method stub
		return profileDao.Act_List(pro_id);
	}

	
	public List<Volunteer> Vol_List(int pro_id) throws Exception {
		// TODO Auto-generated method stub
		return profileDao.Vol_List(pro_id);
	}

	
	public Education selecteducationInfo(int pro_id) throws Exception {
		// TODO Auto-generated method stub
		return profileDao.selecteducationInfo(pro_id);
	}
	
	
	///////////////////////////////////////////////////////////////////////
	public void insertProfile(Profile profile) throws Exception{
		profileDao.insertprofile(profile);
	}
	
	public void insertEducation(Education education) throws Exception{
		profileDao.inserteducation(education);
	}
	
	public void insertOthers(HttpServletRequest req) throws Exception{
		// activity
		
		 int cntActivity= Integer.parseInt(req.getParameter("objNum"));
		 System.out.println("sdfasdfadsfasdfsdafdasf");
		// experience
		
		// objective
		
		//skill
		
		//volunteer
	}
}
