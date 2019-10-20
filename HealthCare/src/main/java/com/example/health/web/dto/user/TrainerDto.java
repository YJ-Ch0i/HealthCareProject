package com.example.health.web.dto.user;

import java.sql.Timestamp;

public class TrainerDto {
	private int userSeq;
	private String userId;
	private String userPw;
	private String trainName;
	private String trainPhone;
	private int userAuthSeq;
	private int lastChangeAuth;
	private Timestamp lastDate;
	
	public int getUserSeq() {
		return userSeq;
	}
	public void setUserSeq(int userSeq) {
		this.userSeq = userSeq;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getTrainerName() {
		return trainName;
	}
	public void setTrainerName(String trainerName) {
		this.trainName = trainerName;
	}
	public String getTrainerPhone() {
		return trainPhone;
	}
	public void setTrainerPhone(String trainerPhone) {
		this.trainPhone = trainerPhone;
	}
	public int getUserAuthSeq() {
		return userAuthSeq;
	}
	public void setUserAuthSeq(int userAuthSeq) {
		this.userAuthSeq = userAuthSeq;
	}
	public int getLastChangeAuth() {
		return lastChangeAuth;
	}
	public void setLastChangeAuth(int lastChangeAuth) {
		this.lastChangeAuth = lastChangeAuth;
	}
	public Timestamp getLastDate() {
		return lastDate;
	}
	public void setLastDate(Timestamp lastDate) {
		this.lastDate = lastDate;
	}
}
