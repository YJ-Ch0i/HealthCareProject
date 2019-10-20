package com.example.health.web.dao.trainer;

import java.util.List;

import com.example.health.web.dto.user.MemberDto;
import com.example.health.web.dto.user.TrainerDto;

public interface TrainerDao {

	/**
	 * id값으로 트레이너 객체 가져오기
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public TrainerDto getTrainer(String id) throws Exception;
	
	public int registerMember(MemberDto dto) throws Exception;
	
	public List<TrainerDto> getTrainerList() throws Exception;
}
