package com.neo4j.repository.userMapping;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.support.Neo4jTemplate;
import org.springframework.data.neo4j.template.Neo4jOperations;

import com.neo4j.model.UserMappingModel;
import com.neo4j.service.userMapping.UserMappingService;

public class UserMappingRepositoryImpl implements UserMappingService {

	@Autowired
	private Neo4jOperations neo4jOperations;
	@Autowired
	Neo4jTemplate neo4jTemplate;
	
	@Override
	public UserMappingModel create(UserMappingModel userMappingModel) {
		return neo4jOperations.save(userMappingModel);
	}

	@Override
	public void delete(UserMappingModel userMappingModel) {
		neo4jOperations.delete(userMappingModel);
	}

	@Override
	public UserMappingModel findById(long id) {
		return neo4jOperations.findOne(id, UserMappingModel.class);
	}

	@Override
	public Result<UserMappingModel> findAll() {
		return neo4jOperations.findAll(UserMappingModel.class);
	}
}