package com.mycompany.springframework.controller;

import javax.validation.Valid;

import org.junit.internal.runners.ErrorReportingRunner;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.springframework.dto.Ch04JoinForm;
import com.mycompany.springframework.dto.Ch04JoinFormValidator;
import com.mycompany.springframework.dto.Ch04LoginForm;
import com.mycompany.springframework.dto.Ch04LoginFormValidator;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/ch04")
public class Ch04Controller {
	@GetMapping("/loginForm")
	public String loginForm(Model model) {
		model.addAttribute("chNum", "ch04");
		return "ch04/loginForm";
	}
	
	@InitBinder("ch04LoginForm")
	public void ch04LoginFormValidator(WebDataBinder binder) {
		binder.setValidator(new Ch04LoginFormValidator());
	}
	@RequestMapping("/login")
	public String login(@Valid Ch04LoginForm loginForm, Errors errors, Model model) {
		model.addAttribute("chNum", "ch04");
		log.info("실행");
		// 유효성 검사 실패시 다시 로그인 폼 보여주기
		if(errors.hasErrors()) {
			log.info("실패");
			return "ch04/loginForm";
		} else {
			log.info("성공");
		}
		
		// 로그인 처리 
		return "redirect:/";
	}
	
	@GetMapping("/joinForm")
	public String joinForm(Model model) {
		model.addAttribute("chNum", "ch04");
		return "ch04/joinForm";
	}
	
	@InitBinder("ch04JoinForm")
	public void ch04JoinFormValidator(WebDataBinder binder) {
		binder.setValidator(new Ch04JoinFormValidator());
	}
	@RequestMapping("/join")
	public String join(@Valid Ch04JoinForm joinForm, Errors errors, Model model) {
		model.addAttribute("chNum", "ch04");
		log.info("실행");
		// 유효성 검사 실패시 다시 로그인 폼 보여주기
		if(errors.hasErrors()) {
			log.info("실패");
			return "ch04/joinForm";
		} else {
			log.info("성공");
		}
		
		// 로그인 처리 
		return "redirect:/";
	}
}
