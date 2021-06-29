package kr.co.bread.reply.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bread.reply.vo.ReplyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<ReplyVO> selectByNo(int no) {
		List<ReplyVO> replyList = sqlSession.selectList("reply.dao.ReplyDAO.selectByNo", no);
		return replyList;
	}

	@Override
	public void writeByNo(ReplyVO reply) {
		sqlSession.insert("reply.dao.ReplyDAO.writeByNo" ,reply);
	}

	@Override
	public void deleteByNo(int no) {
		sqlSession.delete("reply.dao.ReplyDAO.deleteByNo" ,no);
	}

}
