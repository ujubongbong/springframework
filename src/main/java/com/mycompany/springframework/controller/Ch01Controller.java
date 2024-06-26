package com.mycompany.springframework.controller;

// import org.slf4j.LoggerFactory;
// import org.slf4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/ch01")
public class Ch01Controller {
	// private static final Logger LOGGER = LoggerFactory.getLogger(ch01Controller.class);
	@RequestMapping("/content")
	public String content(String chNum, Model model) {
//		LOGGER.info("content() 실행");
		log.info("content() 실행");
		model.addAttribute("chNum", "ch01");
		return "ch01/content";
	}
}
