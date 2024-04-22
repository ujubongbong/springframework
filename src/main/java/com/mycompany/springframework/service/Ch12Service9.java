package com.mycompany.springframework.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.mycompany.springframework.dao.Ch12Dao3;
import com.mycompany.springframework.dao.Ch12Dao4;
import com.mycompany.springframework.dao.Ch12Dao5;
import com.mycompany.springframework.dao.Ch12DaoInterface;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class Ch12Service9 {
	// Field 주입
	@Autowired @Qualifier("ch12Dao6") private Ch12DaoInterface field1; // 관리 객체 ch12Dao6으로 관리 되는 이름이 있다면 ch12Dao에 주입
	@Resource(name="ch12Dao7") private Ch12DaoInterface field2; // 인터페이스 타입에 주입되는 객체가 여러개인 경우 name에 해당하는 객체만 주입 ***
																// name이 없으면 type으로 찾음(2개 이상이면 에러 발생 -> name 지정)
																// 인터페이스 타입 name 지정 ***
	@Autowired
	public Ch12Service9(@Qualifier("ch12Dao6") Ch12DaoInterface field1) {
		
	}

	@Resource(name="ch12Dao7")
	public void setField2(Ch12DaoInterface field2) {
		this.field2 = field2;
	}
}
