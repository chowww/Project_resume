package com.manage.biz.vo;

public class Education {
	int		education_id;
	int		profile_id;
	String 	school;
	String 	city;
	String 	major_gpa_honor;
	String 	g_date;
	
	public int getEducation_id() {
		return education_id;
	}
	public void setEducation_id(int education_id) {
		this.education_id = education_id;
	}
	public int getProfile_id() {
		return profile_id;
	}
	public void setProfile_id(int profile_id) {
		this.profile_id = profile_id;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getMajor_gpa_honor() {
		return major_gpa_honor;
	}
	public void setMajor_gpa_honor(String major_gpa_honor) {
		this.major_gpa_honor = major_gpa_honor;
	}
	public String getG_date() {
		return g_date;
	}
	public void setG_date(String g_date) {
		this.g_date = g_date;
	}
	
	
	
}
