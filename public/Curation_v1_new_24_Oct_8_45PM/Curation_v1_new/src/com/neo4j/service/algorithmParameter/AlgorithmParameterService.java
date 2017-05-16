package com.neo4j.service.algorithmParameter;

import org.springframework.data.neo4j.conversion.Result;

import com.neo4j.model.AlgorithmParameterModel;

public interface AlgorithmParameterService {

	AlgorithmParameterModel create(AlgorithmParameterModel algorithmModel);
	void delete(AlgorithmParameterModel algorithmModel);		
	AlgorithmParameterModel findById(long id);		
	Result<AlgorithmParameterModel> findAll();
}
