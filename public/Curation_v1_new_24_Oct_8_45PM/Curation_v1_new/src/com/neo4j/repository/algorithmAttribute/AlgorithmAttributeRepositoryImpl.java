package com.neo4j.repository.algorithmAttribute;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.support.Neo4jTemplate;
import org.springframework.data.neo4j.template.Neo4jOperations;

import com.neo4j.model.AlgorithmAttributeModel;
import com.neo4j.service.algorithmAttribute.AlgorithmAttributeService;

public class AlgorithmAttributeRepositoryImpl implements AlgorithmAttributeService {

	@Autowired
	private Neo4jOperations neo4jOperations;
	@Autowired
	Neo4jTemplate neo4jTemplate;
	
	@Override
	public AlgorithmAttributeModel create(AlgorithmAttributeModel algorithmAttributeModel) {
		return neo4jOperations.save(algorithmAttributeModel);
	}

	@Override
	public void delete(AlgorithmAttributeModel algorithmAttributeModel) {
		neo4jOperations.delete(algorithmAttributeModel);
	}

	@Override
	public AlgorithmAttributeModel findById(long id) {
		return neo4jOperations.findOne(id, AlgorithmAttributeModel.class);
	}

	@Override
	public Result<AlgorithmAttributeModel> findAll() {
		return neo4jOperations.findAll(AlgorithmAttributeModel.class);
	}

}