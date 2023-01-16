package com.project.board;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data @Getter @Setter  @NoArgsConstructor
public class BoardDto {

	private int boardno;
	private int userid;
	private String boardtitle;
	private String boardcnt;
	private String username;
	
	public int getBoardno() {
		int boardno = this.boardno;
		return boardno;
	}
	public void setBoardno(int boardno) {
		this.boardno = boardno;
	}
	
	public int getUserid() {
		int userid = this.userid;
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	
	public String getBoardtitle() {
		String boardtitle = this.boardtitle;
		return boardtitle;
	}
	public void setBoardtitle(String boardtitle) {
		this.boardtitle = boardtitle;
	}
	
	public String getBoardcnt() {
		String boardcnt = this.boardcnt;
		return boardcnt;
	}
	public void setBoardcnt(String boardcnt) {
		this.boardcnt = boardcnt;
	}
	
	public String getUsername() {
		String username = this.username;
		return username;
	}
	public void serUsername(String username) {
		this.username = username;
	}
}
