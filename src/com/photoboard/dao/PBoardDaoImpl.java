package com.photoboard.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.inter.SqlInter;
import com.member.vo.MemberVo;
import com.photoboard.vo.PBoardVo;
@Repository
public class PBoardDaoImpl implements PBoardDao, SqlInter {

	
	@Override
	public List<PBoardVo> getAll() {
		return null;
	}

	@Override
	public int getInsert(PBoardVo pBoardVo) {
		return 0;
	}

	@Override
	public int getDelete(int no) {
		return 0;
	}

	@Override
	public int getUpdate(PBoardVo pBoardVo) {
		return 0;
	}

	@Override
	public List<PBoardVo> getFind(String n_id) {
		return null;
	}

}
