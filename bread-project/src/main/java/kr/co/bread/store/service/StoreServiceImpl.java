package kr.co.bread.store.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bread.store.dao.StoreDAO;
import kr.co.bread.store.vo.StoreVO;

@Service
public class StoreServiceImpl implements StoreService {

	@Autowired
	private StoreDAO storeDAO;
	
	@Override
	public List<StoreVO> selectAllStore() {
		List<StoreVO> storeList = storeDAO.selectAllStore();
		return storeList;
	}

}
