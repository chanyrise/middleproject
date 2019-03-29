package com.board.dao;

import java.util.List;

import com.board.vo.BoardVo;

public interface BoardDao {

	public List<BoardVo> getAll();
	public int getInsert(BoardVo boardVo);
	public int getDelete(int no);
	public int getUpdate(BoardVo boardVo);
	public List<BoardVo> getFind(String n_id);
}
