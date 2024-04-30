package com.mycompany.springframework.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.springframework.dao.mybatis.Ch13BoardDao;
import com.mycompany.springframework.dto.Ch13Board;
import com.mycompany.springframework.service.Ch13Service;

import lombok.extern.slf4j.Slf4j;
import oracle.net.aso.b;

@Controller
@Slf4j
@RequestMapping("/ch13")
public class Ch13Controller {
	@Autowired
	private Ch13Service service;
	
	@Autowired
	private Ch13BoardDao boardDao;
	
	@GetMapping("/writeBoardForm")
	public String writeBoardForm() {
		return "ch13/writeBoardForm";
	}
	
	@PostMapping("/writeBoard")
	public String writeBoard(Ch13Board board) {
		// 요청 데이터의 유효성 검사
		// 로그인이 필요한지 조사
		board.setMid("user");
		// 비즈니스 로직 처리를 서비스로 위임
		int rowNum = boardDao.insert(board);;
		return "redirect:/";
	}
}
