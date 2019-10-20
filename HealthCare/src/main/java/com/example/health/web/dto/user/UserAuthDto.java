package com.example.health.web.dto.user;

public class UserAuthDto {
	
	private int userAuth;
	private String authName;
	
	public int getUserAuth() {
		return userAuth;
	}
	public void setUserAuth(int userAuth) {
		this.userAuth = userAuth;
	}
	public String getAuthName() {
		return authName;
	}
	public void setAuthName(String authName) {
		this.authName = authName;
	}
}
