package kr.co.bread.reply.service;

import java.util.List;

import kr.co.bread.reply.vo.ReplyVO;

public interface ReplyService {

	public List<ReplyVO> selectByNo(int no);
	
	public void writeByNo(ReplyVO reply);
	
	public void deleteByNo(ReplyVO reply);
	
}
