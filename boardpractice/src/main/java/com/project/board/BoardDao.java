package com.project.board;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardDao {
	public List<BoardDto> boardList();
	
	public int boardWrite(BoardDto boardDto);
	
	public BoardDto boarddetail(int boardno);
	
	public int boardupdate(BoardDto boardDto);
	
	public int boarddelete(int boardno);
}
