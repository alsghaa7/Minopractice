package com.project.user;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data @Getter @Setter @NoArgsConstructor
public class UserDto {
	private int userid;
	private String username;
	private String usertel;
	private String pwd;
	private int userage;
	
	public int getUserid() {
		int id = this.userid;
		return id;
	}
	
	public void setUserid(int id) {
		this.userid = id;
	}
	
	public String getUsername() {
		String name = this.username;
		return name;
	}
	public void setUsername(String name) {
		this.username = name;
	}
	
	public String getUsertel() {
		String tel = this.usertel;
		return tel;
	}
	
	public void setUsertel(String tel) {
		this.usertel = tel;
	}
		
	public String getPwd() {
		String pwd = this.pwd;
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public int getUserage() {
		int age = this.userage;
		return age;
	}
	
	public void setUserage(int age) {
		this.userage = age;
	}
}
