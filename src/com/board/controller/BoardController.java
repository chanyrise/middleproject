package com.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.board.biz.BoardBiz;

@Controller
public class BoardController {

	@Autowired
	BoardBiz boardBiz;
}
