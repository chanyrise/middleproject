package com.board.biz;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.board.dao.BoardDaoImpl;
import com.board.vo.BoardVo;
import com.member.vo.MemberVo;

@Service
public class BoardBiz {

	@Autowired
	BoardDaoImpl boardDaoImpl;
	
	public List<BoardVo> getAll() {
		return boardDaoImpl.getAll();
	}

	public int getInsert(BoardVo boardVo) {
		return boardDaoImpl.getInsert(boardVo);
	}

	public int getDelete(int no) {
		return boardDaoImpl.getDelete(no);
	}

	public int getUpdate(BoardVo boardVo) {
		return boardDaoImpl.getUpdate(boardVo);
	}

	public List<BoardVo> getFind(String n_id) {
		return boardDaoImpl.getFind(n_id);
	}
	
	public BoardVo readContent(String no) {
		return boardDaoImpl.readContent(no);
	}
}
