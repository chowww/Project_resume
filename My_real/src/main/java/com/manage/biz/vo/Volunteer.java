package com.manage.biz.vo;

public class Volunteer {
	int		volunteer_id;
	int		profile_id;
	String 	v_contents;
	
	
	public int getVolunteer_id() {
		return volunteer_id;
	}
	public void setVolunteer_id(int volunteer_id) {
		this.volunteer_id = volunteer_id;
	}
	public int getProfile_id() {
		return profile_id;
	}
	public void setProfile_id(int profile_id) {
		this.profile_id = profile_id;
	}
	public String getV_contents() {
		return v_contents;
	}
	public void setV_contents(String v_contents) {
		this.v_contents = v_contents;
	}
}
