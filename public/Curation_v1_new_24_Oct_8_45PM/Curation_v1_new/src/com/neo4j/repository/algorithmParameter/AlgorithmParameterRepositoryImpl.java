package com.neo4j.repository.algorithmParameter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.support.Neo4jTemplate;
import org.springframework.data.neo4j.template.Neo4jOperations;

import com.neo4j.model.AlgorithmParameterModel;
import com.neo4j.service.algorithmParameter.AlgorithmParameterService;

public class AlgorithmParameterRepositoryImpl implements AlgorithmParameterService {

	@Autowired
	private Neo4jOperations neo4jOperations;
	@Autowired
	Neo4jTemplate neo4jTemplate;
	
	@Override
	public AlgorithmParameterModel create(AlgorithmParameterModel algorithmModel) {
		return neo4jOperations.save(algorithmModel);
	}

	@Override
	public void delete(AlgorithmParameterModel algorithmModel) {
		neo4jOperations.delete(algorithmModel);
	}

	@Override
	public AlgorithmParameterModel findById(long id) {
		return neo4jOperations.findOne(id, AlgorithmParameterModel.class);
	}

	@Override
	public Result<AlgorithmParameterModel> findAll() {
		return neo4jOperations.findAll(AlgorithmParameterModel.class);
	}

}