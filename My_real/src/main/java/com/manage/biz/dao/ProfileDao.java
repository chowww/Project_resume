package com.manage.biz.dao;

import java.util.List;

import com.manage.biz.vo.Activity;
import com.manage.biz.vo.Education;
import com.manage.biz.vo.Experience;
import com.manage.biz.vo.Objective;
import com.manage.biz.vo.Profile;
import com.manage.biz.vo.Skill;
import com.manage.biz.vo.Volunteer;

public interface ProfileDao {
	List<Profile> selectList() throws Exception;
	Profile selectprofileInfo(Profile profile) throws Exception;
	Education selecteducationInfo(int pro_id) throws Exception;
	List<Objective> Obj_List(int pro_id) throws Exception;
	List<Experience> Exp_List(int pro_id) throws Exception;
	List<Skill> Skill_List(int pro_id) throws Exception;
	List<Activity> Act_List(int pro_id) throws Exception;
	List<Volunteer> Vol_List(int pro_id) throws Exception;
	
	
	int insertprofile(Profile profile) throws Exception;
	int inserteducation(Education education) throws Exception;
	int insertactivity(Activity activity) throws Exception;
	int insertexperience(Experience experience) throws Exception;
	int insertobjective(Objective objective) throws Exception;
	int insertskill(Skill skill) throws Exception;
	int insertvolunteer(Volunteer volunteer) throws Exception;
}