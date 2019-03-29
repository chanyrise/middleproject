package com.board.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.board.vo.BoardVo;
import com.inter.SqlInter;
import com.member.vo.MemberVo;

@Repository
public class BoardDaoImpl implements BoardDao, SqlInter{

	@Override
	public List<BoardVo> getAll() {
		return null;
	}

	@Override
	public int getInsert(BoardVo boardVo) {
		return 0;
	}

	@Override
	public int getDelete(int no) {
		return 0;
	}

	@Override
	public int getUpdate(BoardVo boardVo) {
		return 0;
	}

	@Override
	public List<BoardVo> getFind(String n_id) {
		return null;
	}
}
