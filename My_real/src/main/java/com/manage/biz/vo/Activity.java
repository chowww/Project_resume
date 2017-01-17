package com.manage.biz.vo;

public class Activity{
	int		profile_id;
	int 	activity_id;
	String	a_contents;
	String	a_daystart;
	String 	a_dayend;
	
	public int getProfile_id() {
		return profile_id;
	}
	public String getA_daystart() {
		return a_daystart;
	}
	public void setA_daystart(String a_daystart) {
		this.a_daystart = a_daystart;
	}
	public String getA_dayend() {
		return a_dayend;
	}
	public void setA_dayend(String a_dayend) {
		this.a_dayend = a_dayend;
	}
	public void setProfile_id(int profile_id) {
		this.profile_id = profile_id;
	}
	public int getActivity_id() {
		return activity_id;
	}
	public void setActivity_id(int activity_id) {
		this.activity_id = activity_id;
	}
	public String getA_contents() {
		return a_contents;
	}
	public void setA_contents(String a_contents) {
		this.a_contents = a_contents;
	}
}
