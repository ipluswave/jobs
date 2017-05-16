package com.neo4j.service.attributeRegistration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.template.Neo4jOperations;
import org.springframework.stereotype.Service;

import com.neo4j.model.AttributeRegistrationModel;

@Service
public class attributeRegistrationServiceImpl implements attributeRegistrationService {
	
	@Autowired 
	Neo4jOperations template;

	@Override
	public AttributeRegistrationModel create(AttributeRegistrationModel attributeRegistration) {
		return template.save(attributeRegistration);
	}

	@Override
	public void delete(AttributeRegistrationModel attributeRegistration) {
		template.delete(attributeRegistration);
		
	}

	@Override
	public AttributeRegistrationModel findById(long id) {
		return template.findOne(id,AttributeRegistrationModel.class);
	}

	@Override
	public Result<AttributeRegistrationModel> findAll() {
		return template.findAll(AttributeRegistrationModel.class);
	}
	
	
}