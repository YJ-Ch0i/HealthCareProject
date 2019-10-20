package com.example.health.web.service.trainer;

import java.util.List;

import com.example.health.web.dto.user.TrainerDto;

public interface TrainerService {

	public TrainerDto getTrainer(String id) throws Exception;
	public List<TrainerDto> getTrainerList() throws Exception;
	public boolean loginTrainer(String id, String pass) throws Exception;	
}
