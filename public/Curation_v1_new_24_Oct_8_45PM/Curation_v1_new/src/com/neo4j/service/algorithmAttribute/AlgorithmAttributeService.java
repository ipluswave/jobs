package com.neo4j.service.algorithmAttribute;

import org.springframework.data.neo4j.conversion.Result;

import com.neo4j.model.AlgorithmAttributeModel;

public interface AlgorithmAttributeService {

	AlgorithmAttributeModel create(AlgorithmAttributeModel algorithmAttributeModel);
	void delete(AlgorithmAttributeModel algorithmAttributeModel);		
	AlgorithmAttributeModel findById(long id);		
	Result<AlgorithmAttributeModel> findAll();
}
