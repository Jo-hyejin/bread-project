package kr.co.bread.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bread.member.dao.MemberDAO;
import kr.co.bread.member.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired //자동주입
	private MemberDAO memberDAO;
	
	@Override
	public void signUp(MemberVO signUp) {
		memberDAO.signUp(signUp);
	}

	@Override
	public MemberVO login(MemberVO login) {
		MemberVO member = memberDAO.login(login);
		return member;
	}

	@Override
	public void modify(MemberVO modify) {
		memberDAO.modify(modify);
		
	}

	@Override
	public MemberVO selectUser(MemberVO user) {
		MemberVO member = memberDAO.selectUser(user);
		return member;
	}

}
