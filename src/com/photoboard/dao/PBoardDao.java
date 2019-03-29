package com.photoboard.dao;

import java.util.List;

import com.photoboard.vo.PBoardVo;

public interface PBoardDao {

	public List<PBoardVo> getAll();
	public int getInsert(PBoardVo pBoardVo);
	public int getDelete(int no);
	public int getUpdate(PBoardVo pBoardVo);
	public List<PBoardVo> getFind(String n_id);
}
