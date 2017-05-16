package com.neo4j.service.userAttributeMapping;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.template.Neo4jOperations;
import org.springframework.stereotype.Service;

import com.neo4j.model.UserMappingAttributeModel;
import com.neo4j.model.UserMappingModel;

@Service
public class UserAttributeMappingServiceImpl implements UserAttributeMappingService {
	
	@Autowired 
	Neo4jOperations template;

	@Override
	public UserMappingAttributeModel create(UserMappingAttributeModel userMappingAttributeModel) {
		// TODO Auto-generated method stub
		return template.save(userMappingAttributeModel);
	}

	@Override
	public void delete(UserMappingAttributeModel userMappingAttributeModel) {
		// TODO Auto-generated method stub
		template.delete(userMappingAttributeModel);
	}

	@Override
	public UserMappingAttributeModel findById(long id) {
		// TODO Auto-generated method stub
		return template.findOne(id,UserMappingAttributeModel.class);
	}

	@Override
	public Result<UserMappingAttributeModel> findAll() {
		// TODO Auto-generated method stub
		return template.findAll(UserMappingAttributeModel.class);
	}
	
	
}