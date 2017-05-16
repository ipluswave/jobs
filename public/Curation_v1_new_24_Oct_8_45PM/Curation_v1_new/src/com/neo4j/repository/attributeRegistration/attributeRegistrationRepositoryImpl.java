package com.neo4j.repository.attributeRegistration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.support.Neo4jTemplate;
import org.springframework.data.neo4j.template.Neo4jOperations;

import com.neo4j.model.AttributeRegistrationModel;
import com.neo4j.service.attributeRegistration.attributeRegistrationService;

public class attributeRegistrationRepositoryImpl implements attributeRegistrationService {

	@Autowired
	private Neo4jOperations neo4jOperations;
	@Autowired
	Neo4jTemplate neo4jTemplate;
	@Override
	public AttributeRegistrationModel create(AttributeRegistrationModel attributeRegistration) {
		return neo4jOperations.save(attributeRegistration);
	}
	@Override
	public void delete(AttributeRegistrationModel attributeRegistration) {
		neo4jOperations.delete(attributeRegistration);
		
	}
	@Override
	public AttributeRegistrationModel findById(long id) {
		return neo4jOperations.findOne(id, AttributeRegistrationModel.class);
	}
	@Override
	public Result<AttributeRegistrationModel> findAll() {
		return neo4jOperations.findAll(AttributeRegistrationModel.class);
	}
	
}