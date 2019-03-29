package com.board.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.board.biz.BoardBiz;
import com.board.vo.BoardVo;

import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

import javax.activation.CommandMap;
import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.biz.BoardBiz;

@Controller
public class BoardController {

	@Autowired
	private BoardBiz boardBiz;

	@RequestMapping(value = "board.do", method = RequestMethod.GET)
	public ModelAndView openBoardList() throws Exception {
		List<BoardVo> list = boardBiz.getAll();

		ModelAndView mav = new ModelAndView("/View/Board/Board");// 이동할 페이지 지정
		mav.addObject("list",list ); // 데이터 저장
		return mav; // 페이지 이동(출력)
	}

	@RequestMapping(value = "boardcontent.do", method = RequestMethod.GET)
	public ModelAndView insertBoardList(BoardVo vo) throws Exception{
		int result = boardBiz.getInsert(vo);
		ModelAndView mav = new ModelAndView("/View/Board/BoardPost"); //이동할 페이지 지정
		return mav;
			
	}
	
	@RequestMapping(value = "readcontent.do", method = RequestMethod.GET)
	public ModelAndView readBoardList(String no) throws Exception{
		BoardVo result = boardBiz.readContent(no);
		
		ModelAndView mav = new ModelAndView("/View/Board/BoardContent"); //이동할 페이지 지정
		mav.addObject("result", result);
		return mav;
	}
}