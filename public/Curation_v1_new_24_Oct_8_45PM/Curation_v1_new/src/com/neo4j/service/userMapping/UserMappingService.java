package com.neo4j.service.userMapping;

import org.springframework.data.neo4j.conversion.Result;

import com.neo4j.model.UserMappingModel;

public interface UserMappingService {

	UserMappingModel create(UserMappingModel userMappingModel);
	void delete(UserMappingModel userMappingModel);		
	UserMappingModel findById(long id);		
	Result<UserMappingModel> findAll();
}
