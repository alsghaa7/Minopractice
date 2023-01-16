package com.project.user;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	
	@GetMapping("/insertuser")
	public ModelAndView insertUser() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/user/insert");
		
		return mav;
	}
	
	@PostMapping("/insertok")
	public ModelAndView insertok(UserDto userDto) {
		ModelAndView mav = new ModelAndView();
		
		int cnt = userService.insertUser(userDto);
		
		if (cnt == 1) {
			mav.setViewName("/user/ok");
		}
		
		mav.addObject("cnt", cnt);
		
		return mav;
	}
	
	@GetMapping("/login")
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/user/login");
		
		return mav;
	}
	
	@PostMapping("/pwdcheck")
	public ModelAndView pwdcheck(HttpSession session,
			@Param("userid")int userid,
			@Param("pwd")String pwd) {
		ModelAndView mav = new ModelAndView();
		
		int cnt = userService.login(userid, pwd);
		
		if(cnt == 1) {
			mav.setViewName("/top");
			UserDto userDto = userService.selectUser(userid);
			session.setAttribute("userid", userDto.getUserid());
			session.setAttribute("username", userDto.getUsername());
			session.setAttribute("usertel", userDto.getUsertel());
			session.setAttribute("userage", userDto.getUserage());
		}
		
		return mav;
	}
	
	@GetMapping("/logout")
	public ModelAndView logout(HttpSession session){
		ModelAndView mav = new ModelAndView();
		session.invalidate(); // 모든 session 변수 삭제
		
		mav.setViewName("redirect:/login"); 
		
		return mav;
	}
	
	
}
