package com.soccer.project.javabean;

public class MemberBean {
	
	String email;
	String password;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email=email;
	}
	public String toString() {
		String concatStr = email + ", "+ password;
		return concatStr;
	}
	public boolean getRightAccount(String email, String password) {
		boolean result;
		if(email.equals("otter.oh@gmail.com")) {
			result = true;
		} else {
			result = false;
		}
		return result;
	}

}
