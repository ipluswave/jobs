package com.neo4j.service.AlgorithmMapping;

import org.springframework.data.neo4j.conversion.Result;

import com.neo4j.model.AlgorithmMappingModel;

public interface AlgorithmMappingService {

	AlgorithmMappingModel create(AlgorithmMappingModel algorithmMappingModel);
	void delete(AlgorithmMappingModel algorithmMappingModel);		
	AlgorithmMappingModel findById(long id);		
	Result<AlgorithmMappingModel> findAll();
}
