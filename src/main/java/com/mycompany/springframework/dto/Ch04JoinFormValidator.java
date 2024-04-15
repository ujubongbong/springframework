package com.mycompany.springframework.dto;

import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Ch04JoinFormValidator implements Validator {
	@Override
	public boolean supports(Class<?> clazz) {
		log.info("실행");
		return Ch04JoinForm.class.isAssignableFrom(clazz);
	}
	
	@Override
	public void validate(Object target, Errors errors) {
		Ch04JoinForm joinForm = (Ch04JoinForm) target;
		// 아이디 검사
		String mid = joinForm.getMid();
		if(mid == null || mid.equals("")) {
			errors.rejectValue("mid", null, "아이디는 반드시 입력해야 합니다."); // 에러 발생한 필드, 에러 코드, 기본 에러 메시지
		} else if(mid.length() < 6 || mid.length() > 12) {
			errors.rejectValue("mid", null, "아이디는 6자 이상, 12자 이하로 입력해야 합니다.");
		}
		
		// 이름 검사
		String mname = joinForm.getMname();
		String pattern1 = "[가-힣]+{2,5}";
		if(mname == null || mname.equals("")) {
			errors.rejectValue("mname", null, "이름 반드시 입력해야 합니다."); // 에러 발생한 필드, 에러 코드, 기본 에러 메시지
		} else if(mname.length() < 2 || mname.length() > 5) {
			errors.rejectValue("mname", null, "이름은 2자 이상, 5자 이하로 입력해야 합니다.");
		} else if(!Pattern.matches(pattern1, mname)) {
			errors.rejectValue("mname", null, "이름 형식에 맞추어 작성해야 합니다.");
		}
		
		// 비밀번호 검사
		String mpassword = joinForm.getMpassword();
		String pattern2 = "(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}";
		if(mpassword == null || mpassword.equals("")) {
			errors.rejectValue("mpassword", null, "비밀번호는 반드시 입력해야 합니다."); // 에러 발생한 필드, 에러 코드, 기본 에러 메시지
		} else if(mpassword.length() < 8 || mpassword.length() > 15) {
			errors.rejectValue("mpassword", null, "비밀번호는 8자 이상, 15자 이하로 입력해야 합니다.");
		} else if(!Pattern.matches(pattern2, mpassword)) {
			errors.rejectValue("mpassword", null, "비밀번호는 알파벳 대소문자 및 숫자를 포함해야 합니다.");
		}
		
		// 전화번호 검사
		String mphone = joinForm.getMphone();
		String pattern3 = "[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}";
		if(mphone == null || mphone.equals("")) {
			errors.rejectValue("mphone", null, "전화번호는 반드시 입력해야 합니다."); // 에러 발생한 필드, 에러 코드, 기본 에러 메시지
		} else if(!Pattern.matches(pattern3, mphone)) {
			errors.rejectValue("mphone", null, "전화번호 형식에 맞추어 작성해야 합니다.");
		}
		
		// 이메일 검사
		String memail = joinForm.getMemail();
		String pattern4 = "\\w+([\\.-]?\\w+)@\\w+([\\.-]?\\w+)(\\.\\w{2,3})+";
		if(memail == null || memail.equals("")) {
			errors.rejectValue("memail", null, "이메일은 반드시 입력해야 합니다."); // 에러 발생한 필드, 에러 코드, 기본 에러 메시지
		} else if(!Pattern.matches(pattern4, memail)) {
			errors.rejectValue("memail", null, "이메일 형식에 맞추어 작성해야 합니다.");
		}
		
		
	}
}
