package com.neo4j.repository.userAttributeMapping;

import java.util.Map;

import org.neo4j.graphdb.traversal.TraversalDescription;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.support.Neo4jTemplate;
import org.springframework.data.neo4j.template.Neo4jOperations;

import com.neo4j.model.UserMappingAttributeModel;
import com.neo4j.model.UserMappingModel;
import com.neo4j.service.userAttributeMapping.UserAttributeMappingService;
import com.neo4j.service.userMapping.UserMappingService;

public class UserMappingAttributeRepositoryImpl implements UserAttributeMappingService {

	@Autowired
	private Neo4jOperations neo4jOperations;
	@Autowired
	Neo4jTemplate neo4jTemplate;
	@Override
	public UserMappingAttributeModel create(UserMappingAttributeModel userMappingAttributeModel) {
		// TODO Auto-generated method stub
		return neo4jOperations.save(userMappingAttributeModel);
	}
	@Override
	public void delete(UserMappingAttributeModel userMappingAttributeModel) {
		// TODO Auto-generated method stub
		neo4jOperations.delete(userMappingAttributeModel);
	}
	@Override
	public UserMappingAttributeModel findById(long id) {
		// TODO Auto-generated method stub
		return neo4jOperations.findOne(id, UserMappingAttributeModel.class);
	}
	@Override
	public Result<UserMappingAttributeModel> findAll() {
		// TODO Auto-generated method stub
		return neo4jOperations.findAll(UserMappingAttributeModel.class);
	}

	
	
	
}