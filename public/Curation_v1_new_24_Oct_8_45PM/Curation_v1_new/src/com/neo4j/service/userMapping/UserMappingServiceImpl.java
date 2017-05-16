package com.neo4j.service.userMapping;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.template.Neo4jOperations;
import org.springframework.stereotype.Service;

import com.neo4j.model.UserMappingModel;

@Service
public class UserMappingServiceImpl implements UserMappingService {
	
	@Autowired 
	Neo4jOperations template;
	
	public UserMappingModel create(UserMappingModel userMappingModel) {
		return template.save(userMappingModel);
	}

	public void delete(UserMappingModel userMappingModel) {
		template.delete(userMappingModel);
	}

	public UserMappingModel findById(long id) {
		return template.findOne(id,UserMappingModel.class);
	}

	public Result<UserMappingModel> findAll() {
		return template.findAll(UserMappingModel.class);
	}
}