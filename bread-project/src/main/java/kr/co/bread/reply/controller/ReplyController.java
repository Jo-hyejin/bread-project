package kr.co.bread.reply.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.bread.member.vo.MemberVO;
import kr.co.bread.reply.service.ReplyService;
import kr.co.bread.reply.vo.ReplyVO;

@Controller
public class ReplyController {

	@Autowired
	private ReplyService replyService;
	
	@RequestMapping("/review/{no}")
	public String replyList(@PathVariable("no")int no, HttpServletRequest request) {
		List<ReplyVO> replyList = replyService.selectByNo(no);
		request.setAttribute("replyList", replyList);
		request.setAttribute("storeNo", no);
		return "store/review";
	}
	
	@GetMapping("/reply/{no}")
	public String replyForm(Model model) {
		ReplyVO reply = new ReplyVO();
		model.addAttribute("ReplyVO", reply);
		System.out.println(reply);
		return "store/review";
	}
	
	@PostMapping("/reply/{no}")
	public String replyProcess(@PathVariable("no")int no,ReplyVO reply, HttpSession session) {
		System.out.println(reply);
		replyService.writeByNo(reply);
		return "redirect:/review/{no}";
	}
	
	@RequestMapping(value="/reply/delete")
	public String deleteByNo(@RequestParam("replyNo")int replyNo,@RequestParam("storeNo") int storeNo ){
		System.out.println("ReplyController.deleteByNo.replyN: "+replyNo);
		System.out.println("ReplyController.deleteByNo.storeNo: "+storeNo);
		replyService.deleteByNo(replyNo);
		return "redirect:/review/"+storeNo;
	}
}
