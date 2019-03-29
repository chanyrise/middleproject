package com.photoboard.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.photoboard.biz.PBoardBiz;

@Controller
public class PBoardController {

	@Autowired
	PBoardBiz pBoardBiz;
}
