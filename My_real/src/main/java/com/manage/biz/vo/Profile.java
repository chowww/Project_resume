package com.manage.biz.vo;

public class Profile {
	int		profile_id;
	String 	name;
	String 	address;
	String 	email;
	public int getProfile_ID() {
		return profile_id;
	}
	public void setProfile_ID(int profile_id) {
		this.profile_id = profile_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

}
