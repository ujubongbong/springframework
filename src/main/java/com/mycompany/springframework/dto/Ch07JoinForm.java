package com.mycompany.springframework.dto;

import lombok.Data;

@Data
public class Ch07JoinForm {
	private String mid;
	private String mname;
	private String mpassword;
	private String mjob = "은행원";
	private String mcity ="제주";
}
