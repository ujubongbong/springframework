package com.mycompany.springframework.service;

import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;

@Service("service4")	// 기본적으로 클래스의 첫자를 소문자로 한 이름으로 관리(service4)
@Slf4j	
public class Ch12Service4 {
	 public Ch12Service4() {	// 매개변수가 없는 생성자만 객체 생성 가능
		log.info("실행");
	}
}
