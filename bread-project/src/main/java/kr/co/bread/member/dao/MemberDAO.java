package kr.co.bread.member.dao;

import kr.co.bread.member.vo.MemberVO;

public interface MemberDAO {

	public void signUp(MemberVO signUp);
	
	public MemberVO login(MemberVO login);
	
	public void modify(MemberVO modify);
	
	public MemberVO selectUser(MemberVO user);
	
}
