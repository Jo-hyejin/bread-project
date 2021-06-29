package kr.co.bread.reply.dao;

import java.util.List;

import kr.co.bread.reply.vo.ReplyVO;

public interface ReplyDAO {

	public List<ReplyVO> selectByNo(int no);
	
	public void writeByNo(ReplyVO reply);
	
	public void deleteByNo(int no);
	
}
