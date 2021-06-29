package kr.co.bread.store.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bread.store.vo.StoreVO;

@Repository
public class StoreDAOImpl implements StoreDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<StoreVO> selectAllStore() {
		List<StoreVO> storeList = sqlSession.selectList("store.dao.StoreDAO.selectAllStore");
		return storeList;
	}

}
