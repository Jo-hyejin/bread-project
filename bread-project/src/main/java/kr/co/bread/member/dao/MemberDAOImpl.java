package kr.co.bread.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bread.member.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public void signUp(MemberVO signUp) {
		sqlSession.insert("member.dao.MemberDAO.insert", signUp);
	}

	@Override
	public MemberVO login(MemberVO login) {
		MemberVO member = sqlSession.selectOne("member.dao.MemberDAO.login", login);
		return member;
	}

	@Override
	public void modify(MemberVO modify) {
		sqlSession.update("member.dao.MemberDAO.modify", modify);
	}

	@Override
	public MemberVO selectUser(MemberVO user) {
		MemberVO member = sqlSession.selectOne("member.dao.MemberDAO.selectUser", user);
		return member;
	}

}
