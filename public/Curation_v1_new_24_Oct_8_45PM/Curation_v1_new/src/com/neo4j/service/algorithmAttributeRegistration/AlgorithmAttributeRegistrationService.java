package com.neo4j.service.algorithmAttributeRegistration;

import org.springframework.data.neo4j.conversion.Result;

import com.neo4j.model.AlgorithmAttributeRegistrationModel;

public interface AlgorithmAttributeRegistrationService {

	AlgorithmAttributeRegistrationModel create(AlgorithmAttributeRegistrationModel algorithmAttributeRegistrationModel);
	void delete(AlgorithmAttributeRegistrationModel algorithmAttributeRegistrationModel);		
	AlgorithmAttributeRegistrationModel findById(long id);		
	Result<AlgorithmAttributeRegistrationModel> findAll();
}
