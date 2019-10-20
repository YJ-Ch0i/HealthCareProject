package com.example.health.web.dto.user;

import java.sql.Date;

/**
 * 회원 클래스
 * @author yeong
 *
 */
public class MemberDto {

	private int memberSeq;
	private String memberName;
	private String memberPhone;
	private String enrollFr;
	private String enrollTo;
	private int userSeq;
	private int psTrainSeq;
	private boolean psTrainCheck;
	private int lastUserSeq;
	private Date lastDate;
	
	public int getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(int memberSeq) {
		this.memberSeq = memberSeq;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberPhone() {
		return memberPhone;
	}
	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}
	public String getEnrollFr() {
		return enrollFr;
	}
	public void setEnrollFr(String enrollFr) {
		this.enrollFr = enrollFr;
	}
	public String getEnrollTo() {
		return enrollTo;
	}
	public void setEnrollTo(String enrollTo) {
		this.enrollTo = enrollTo;
	}
	public int getUserSeq() {
		return userSeq;
	}
	public void setUserSeq(int userSeq) {
		this.userSeq = userSeq;
	}
	public int getPsTrainSeq() {
		return psTrainSeq;
	}
	public void setPsTrainSeq(int psTrainSeq) {
		this.psTrainSeq = psTrainSeq;
	}
	public boolean isPsTrainCheck() {
		return psTrainCheck;
	}
	public void setPsTrainCheck(boolean psTrainCheck) {
		this.psTrainCheck = psTrainCheck;
	}
	public int getLastUserSeq() {
		return lastUserSeq;
	}
	public void setLastUserSeq(int lastUserSeq) {
		this.lastUserSeq = lastUserSeq;
	}
	public Date getLastDate() {
		return lastDate;
	}
	public void setLastDate(Date lastDate) {
		this.lastDate = lastDate;
	}
	
}
