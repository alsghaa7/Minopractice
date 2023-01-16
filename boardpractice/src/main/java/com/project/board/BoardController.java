package com.project.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.user.UserDto;
import com.project.user.UserService;

@Controller
public class BoardController {
	@Autowired
	BoardService boardService;
	@Autowired
	UserService userService;
	
	@GetMapping("/main")
	public ModelAndView boardList() {
		ModelAndView mav = new ModelAndView();
		
		List<BoardDto> list = boardService.boardList();
		for(int i=0; i<list.size();i++) {
			int userid = list.get(i).getUserid();
			UserDto userDto = userService.selectUser(userid);
			list.get(i).setUsername(userDto.getUsername());
		}
		
		mav.setViewName("/board/main");
		mav.addObject("list", list);

		return mav;
	}
	
	@GetMapping("/write")
	public ModelAndView Write(BoardDto boardDto) {
		ModelAndView mav = new ModelAndView();
		
		
		mav.setViewName("/board/write");
		
		return mav;
	}
	
	@PostMapping("/boardwrite")
	public ModelAndView boardwrite(BoardDto boardDto) {
		ModelAndView mav = new ModelAndView();
		
		int cnt = boardService.boardWrite(boardDto);
		if(cnt == 1) {
			mav.setViewName("redirect:/main");
		}
		
		return mav;
	}
	
	@GetMapping("/boarddetail")
	public ModelAndView detail(int boardno) {
		ModelAndView mav = new ModelAndView();
		
		BoardDto boardDto = boardService.boarddetail(boardno);
		
		int userid = boardDto.getUserid();
		UserDto userDto = userService.selectUser(userid);
		mav.setViewName("/board/detail");
		
		mav.addObject("boardDto", boardDto);
		mav.addObject("userDto", userDto);
		return mav;
	}
	
	@PostMapping("/boardupdate")
	public ModelAndView update(BoardDto boardDto) {
		ModelAndView mav = new ModelAndView();
		
		int cnt = boardService.boardupdate(boardDto);
		
		if(cnt == 1) {
			mav.setViewName("redirect:/main");
		}
		
		return mav;
	}
	
	@PostMapping("/boarddelete")
	public ModelAndView delete(int boardno) {
		ModelAndView mav = new ModelAndView();
		
		int cnt = boardService.boarddelete(boardno);
		
		if(cnt == 1) {
			mav.setViewName("redirect:/main");
		}
		return mav;
	}
}
