package com.neo4j.repository.algorithmAttributeRegistration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.support.Neo4jTemplate;
import org.springframework.data.neo4j.template.Neo4jOperations;

import com.neo4j.model.AlgorithmAttributeRegistrationModel;
import com.neo4j.service.algorithmAttributeRegistration.AlgorithmAttributeRegistrationService;

public class AlgorithmAttributeRegistrationRepositoryImpl implements AlgorithmAttributeRegistrationService {

	@Autowired
	private Neo4jOperations neo4jOperations;
	@Autowired
	Neo4jTemplate neo4jTemplate;
	
	@Override
	public AlgorithmAttributeRegistrationModel create(AlgorithmAttributeRegistrationModel algorithmAttributeRegistrationModel) {
		// TODO Auto-generated method stub
		return neo4jOperations.save(algorithmAttributeRegistrationModel);
	}
	@Override
	public void delete(AlgorithmAttributeRegistrationModel algorithmAttributeRegistrationModel) {
		// TODO Auto-generated method stub
		neo4jOperations.delete(algorithmAttributeRegistrationModel);
	}
	@Override
	public AlgorithmAttributeRegistrationModel findById(long id) {
		// TODO Auto-generated method stub
		return neo4jOperations.findOne(id, AlgorithmAttributeRegistrationModel.class);
	}
	@Override
	public Result<AlgorithmAttributeRegistrationModel> findAll() {
		// TODO Auto-generated method stub
		return neo4jOperations.findAll(AlgorithmAttributeRegistrationModel.class);
	
	}
	

}