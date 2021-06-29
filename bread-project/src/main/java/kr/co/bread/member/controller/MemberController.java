package kr.co.bread.member.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bread.member.service.MemberService;
import kr.co.bread.member.vo.MemberVO;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@RequestMapping("/memberType")
	public String signUpType(Model model) {
		return "member/memberType";
	}
	
	@GetMapping("/signUp")
	public String signUpForm(Model model) {
		MemberVO member = new MemberVO();
		model.addAttribute("memberVO", member);
		return "member/signUp";
	}
	
	@PostMapping("/signUp")
	public String signUp(@Valid MemberVO member, BindingResult result) { 
		if(result.hasErrors()){
			System.out.println("오류발생.....");
			return "member/signUp";
		}
		service.signUp(member);
		return "redirect:/main";
	}
	
	@GetMapping("/login")
	public String login(MemberVO member) {
		return "member/login";
	}
	
	@PostMapping("/login")
	public String loginProcess(MemberVO loginVO, HttpSession session) { //id와 password를 가져와서 MemberVO에 저장
		MemberVO member = service.login(loginVO);
		if(member == null) {
			//로그인 실패
			return "redirect:/login";
		}else {
			//로그인 성공, session  저장
			session.setAttribute("userVO", member);
			return "redirect:/main";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate(); //세션삭제
		return "redirect:/main";
	}
	
	@GetMapping("/modify")
	public String modifyForm(Model model) {
		MemberVO member = new MemberVO();
		model.addAttribute("memberVO", member);
		return "member/modify";
	}
	
	@PostMapping("/modify")
	public String modifyProcess(MemberVO user, HttpSession session) {
		System.out.println(user);
		service.modify(user);
		MemberVO member = service.selectUser(user);
		session.setAttribute("userVO", member);
		return "redirect:/main";
	}
	
}
