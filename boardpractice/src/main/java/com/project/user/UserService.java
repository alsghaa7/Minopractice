package com.project.user;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
	@Autowired
	UserDao userDao;
	
	public int insertUser(UserDto userDto) {
		int cnt = userDao.insertUser(userDto);
		
		return cnt;
	}
	
	public int login(@Param("userid")int userid, @Param("pwd")String pwd) {
		int cnt = userDao.login(userid, pwd);
		
		return cnt;
	}
	
	public UserDto selectUser(int userid) {
		UserDto userDto = userDao.selectUser(userid);
		
		return userDto;
	}
}
