package com.neo4j.service.userAttributeMapping;

import org.springframework.data.neo4j.conversion.Result;

import com.neo4j.model.UserMappingAttributeModel;

public interface UserAttributeMappingService {

	UserMappingAttributeModel create(UserMappingAttributeModel userMappingAttributeModel);
	void delete(UserMappingAttributeModel userMappingAttributeModel);		
	UserMappingAttributeModel findById(long id);		
	Result<UserMappingAttributeModel> findAll();
}
