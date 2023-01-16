package com.project.user;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserDao {
	public int insertUser(UserDto userDto);
	
	public int login(@Param("userid")int userid, @Param("pwd")String pwd);
	
	public UserDto selectUser(int userid);

}
