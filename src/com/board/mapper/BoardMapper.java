package com.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.board.vo.BoardVo;

public interface BoardMapper {

	@Select("select * from boarder where no > 0")
	public List<BoardVo> getAll();

}
