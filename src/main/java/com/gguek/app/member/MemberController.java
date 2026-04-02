package com.gguek.app.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//annotaion 설명 + 기능
@Controller
@RequestMapping("/member/*")
public class MemberController {

	@RequestMapping("join")
	public String join() {
		System.out.println("회원가입");
		
		return "member/join";
	}

	@RequestMapping("login")
	public String login() {
		System.out.println("로그인");
		
		return "member/login";
	}

}
