package kr.co.bread.store.dao;

import java.util.List;

import kr.co.bread.store.vo.StoreVO;

public interface StoreDAO {

	public List<StoreVO> selectAllStore();
	
}
