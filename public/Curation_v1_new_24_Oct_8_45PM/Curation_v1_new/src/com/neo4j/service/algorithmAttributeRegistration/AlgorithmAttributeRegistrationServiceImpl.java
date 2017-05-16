package com.neo4j.service.algorithmAttributeRegistration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.template.Neo4jOperations;
import org.springframework.stereotype.Service;

import com.neo4j.model.AlgorithmAttributeRegistrationModel;

@Service
public class AlgorithmAttributeRegistrationServiceImpl implements AlgorithmAttributeRegistrationService {
	
	@Autowired 
	Neo4jOperations template;

	@Override
	public AlgorithmAttributeRegistrationModel create(AlgorithmAttributeRegistrationModel algorithmAttributeRegistrationModel) {
		// TODO Auto-generated method stub
		return template.save(algorithmAttributeRegistrationModel);
	}

	@Override
	public void delete(AlgorithmAttributeRegistrationModel algorithmAttributeRegistrationModel) {
		// TODO Auto-generated method stub
		template.delete(algorithmAttributeRegistrationModel);
	}

	@Override
	public AlgorithmAttributeRegistrationModel findById(long id) {
		// TODO Auto-generated method stub
		return template.findOne(id,AlgorithmAttributeRegistrationModel.class);
	}

	@Override
	public Result<AlgorithmAttributeRegistrationModel> findAll() {
		// TODO Auto-generated method stub
		return template.findAll(AlgorithmAttributeRegistrationModel.class);
	}
	
	

}