package com.spring.member.vo;

public class MemberVo {

	private String name;
	private int sid;
	private String major;
	private String subject;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	@Override
	public String toString() {
		return "MemberVo [name=" + name + ", sid=" + sid + ", major=" + major + ", subject=" + subject + "]";
	}
	
}
