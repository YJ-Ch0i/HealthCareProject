package com.example.health.web.service.trainer;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.health.common.CommonUtil;
import com.example.health.web.dao.trainer.TrainerDao;
import com.example.health.web.dto.user.MemberDto;
import com.example.health.web.dto.user.TrainerDto;

/**
 * Trainer Service Class
 * @author yeong
 */
@Service
public class TrainerServiceImpl implements TrainerService {
	
	private SqlSession sqlSession;
	public SqlSession getSqlSession(){
		return sqlSession;
	}
	
	@Autowired
	TrainerDao trDao;
		
	/**
	 * Trainer 객체 리턴
	 */
	@Override
	public TrainerDto getTrainer(String adId) throws Exception {		
		TrainerDto trainer = trDao.getTrainer(adId);
		return trainer;
	}
	
	@Override
	public List<TrainerDto> getTrainerList() throws Exception{
		return trDao.getTrainerList();
	}

	/**
	 * Trainer Longin
	 */
	@Override
	public boolean loginTrainer(String id, String pass) throws Exception {
		
		TrainerDto trainer = getTrainer(id);

		if(CommonUtil.isNotNullString(id) && CommonUtil.isNotNullString(pass)) {
			if(CommonUtil.isEqualString(trainer.getUserPw(), pass)) {
				return true;
			}
		}
		else if(trainer.getUserId() == null) {
			return false;
		}
		return false;
	}
	
	public boolean registerMember(MemberDto dto) throws Exception{
		int isRegister = trDao.registerMember(dto);
		
		if(isRegister == 1) {
			return true;
		}
		else return false;
	}
}
