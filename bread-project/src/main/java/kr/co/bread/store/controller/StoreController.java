package kr.co.bread.store.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.bread.store.service.StoreService;
import kr.co.bread.store.vo.StoreVO;

@Controller
public class StoreController {

	@Autowired
	private StoreService service;
	
	@RequestMapping("/main")
	public String selectAllStore(HttpServletRequest request){
		System.out.println("selectAllStore Start");
		List<StoreVO> storeList = service.selectAllStore();
		String strNo="";
		String strLat="";
		String strLng="";
		String strName="";
		for (int i=0;i<storeList.size()-2;i++) {
			strNo+=storeList.get(i).getNo()+",";
			strLat+=storeList.get(i).getLat()+",";
			strLng+=storeList.get(i).getLongi()+",";
			strName+="'"+storeList.get(i).getStoreName()+"',";
		}
		strNo+=storeList.get(storeList.size()-1).getNo();
		strLat+=storeList.get(storeList.size()-1).getLat();
		strLng+=storeList.get(storeList.size()-1).getLongi();
		strName+="'"+storeList.get(storeList.size()-1).getStoreName()+"'";
		
		request.setAttribute("strNo", strNo);
		request.setAttribute("strLng", strLng);
		request.setAttribute("strLat", strLat);
		request.setAttribute("strName", strName);
		
		System.out.println(strNo);
				
		return "main";
	}
	
}
