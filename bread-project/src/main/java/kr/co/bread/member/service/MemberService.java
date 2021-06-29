package kr.co.bread.member.service;

import kr.co.bread.member.vo.MemberVO;

public interface MemberService {

	public void signUp(MemberVO signUp);
	
	public MemberVO login(MemberVO login);
	
	public void modify(MemberVO modify);
	
	public MemberVO selectUser(MemberVO user);
	
}
