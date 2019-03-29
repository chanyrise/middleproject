package com.photoboard.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.photoboard.dao.PBoardDaoImpl;
import com.photoboard.vo.PBoardVo;
@Service
public class PBoardBiz {

	@Autowired
	PBoardDaoImpl pBoardDaoImpl;
	
	public List<PBoardVo> getAll() {
		return pBoardDaoImpl.getAll();
	}

	public int getInsert(PBoardVo pBoardVo) {
		return pBoardDaoImpl.getInsert(pBoardVo);
	}

	public int getDelete(int no) {
		return pBoardDaoImpl.getDelete(no);
	}

	public int getUpdate(PBoardVo pBoardVo) {
		return pBoardDaoImpl.getUpdate(pBoardVo);
	}

	public List<PBoardVo> getFind(String n_id) {
		return pBoardDaoImpl.getFind(n_id);
	}
}
