package com.project.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardService {
	@Autowired
	BoardDao boardDao;
	public List<BoardDto> boardList() {
		List<BoardDto> list = boardDao.boardList();
		
		return list;
	}
	
	public int boardWrite(BoardDto boardDto) {
		int cnt = boardDao.boardWrite(boardDto);
		
		return cnt;
	}
	
	public BoardDto boarddetail(int boardno) {
		BoardDto boardDto = boardDao.boarddetail(boardno);
		
		return boardDto;		
	}
	
	public int boardupdate(BoardDto boardDto) {
		int cnt = boardDao.boardupdate(boardDto);
		
		return cnt;
	}
	
	public int boarddelete(int boardno) {
		int cnt = boardDao.boarddelete(boardno);
		
		return cnt;
	}
}
