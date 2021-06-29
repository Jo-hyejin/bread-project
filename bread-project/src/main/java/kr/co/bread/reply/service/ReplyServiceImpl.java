package kr.co.bread.reply.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bread.reply.dao.ReplyDAO;
import kr.co.bread.reply.vo.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	private ReplyDAO replyDAO; 
	
	@Override
	public List<ReplyVO> selectByNo(int no) {
		List<ReplyVO> replyList = replyDAO.selectByNo(no);
		return replyList;
	}

	@Override
	public void writeByNo(ReplyVO reply) {
		replyDAO.writeByNo(reply);
	}

	@Override
	public void deleteByNo(int no) {
		replyDAO.deleteByNo(no);
	}

}
