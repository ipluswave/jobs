package com.neo4j.repository.AlgorithmMapping;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.support.Neo4jTemplate;
import org.springframework.data.neo4j.template.Neo4jOperations;

import com.neo4j.model.AlgorithmMappingModel;
import com.neo4j.model.UserMappingModel;
import com.neo4j.service.AlgorithmMapping.AlgorithmMappingService;
import com.neo4j.service.userMapping.UserMappingService;

public class AlgorithmMappingRepositoryImpl implements AlgorithmMappingService {

	@Autowired
	private Neo4jOperations neo4jOperations;
	@Autowired
	Neo4jTemplate neo4jTemplate;
	@Override
	
	public AlgorithmMappingModel create(AlgorithmMappingModel algorithmMappingModel) {
		// TODO Auto-generated method stub
		return neo4jOperations.save(algorithmMappingModel);
	}
	@Override
	public void delete(AlgorithmMappingModel algorithmMappingModel) {
		// TODO Auto-generated method stub
		neo4jOperations.delete(algorithmMappingModel);
	}
	@Override
	public AlgorithmMappingModel findById(long id) {
		// TODO Auto-generated method stub
		return neo4jOperations.findOne(id, AlgorithmMappingModel.class);
	}
	@Override
	public Result<AlgorithmMappingModel> findAll() {
		// TODO Auto-generated method stub
		return neo4jOperations.findAll(AlgorithmMappingModel.class);
	}
	
	
}