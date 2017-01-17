package com.manage.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.manage.biz.vo.Activity;
import com.manage.biz.vo.Education;
import com.manage.biz.vo.Experience;
import com.manage.biz.vo.Objective;
import com.manage.biz.vo.Profile;
import com.manage.biz.vo.Skill;
import com.manage.biz.vo.Volunteer;

@Repository
public class ProfileDaoImpl implements ProfileDao{
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public List<Profile> selectList() throws Exception{
		return sqlSession.selectList("ProfileDao.selectAllList");
	}

	
	public Profile selectprofileInfo(Profile profile) throws Exception{
		//System.out.println(profile.getName());
		//System.out.println(profile.getEmail());
		return sqlSession.selectOne("ProfileDao.selectProfile", profile);
	}

	
	public List<Objective> Obj_List(int pro_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("ProfileDao.selectObjective", pro_id);
	}

	
	public List<Experience> Exp_List(int pro_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("ProfileDao.selectExperience", pro_id);
	}

	
	public List<Skill> Skill_List(int pro_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("ProfileDao.selectSkill", pro_id);
	}

	
	public List<Activity> Act_List(int pro_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("ProfileDao.selectActivity", pro_id);
	}

	
	public List<Volunteer> Vol_List(int pro_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("ProfileDao.selectVolunteer", pro_id);
	}

	
	public Education selecteducationInfo(int pro_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("ProfileDao.selectEducation", pro_id);
	}

	//////////////////////////////////////////////////////////////////////////////////////
	public int insertprofile(Profile profile) throws Exception{
		return sqlSession.insert("ProfileDao.insertProfile", profile);
}
	
	
	public int inserteducation(Education education) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert("ProfileDao.insertEducation", education);
	}

	
	public int insertactivity(Activity activity) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert("ProfileDao.insertActivity", activity);
	}

	
	public int insertexperience(Experience experience) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert("ProfileDao.insertExperience", experience);
	}

	
	public int insertobjective(Objective objective) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert("ProfileDao.insertObjective", objective);
	}

	
	public int insertskill(Skill skill) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert("ProfileDao.insertSkill", skill);
	}

	
	public int insertvolunteer(Volunteer volunteer) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert("ProfileDao.insertVolunteer", volunteer);
	}
}
