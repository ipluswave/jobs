package com.neo4j.repository.algorithm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.support.Neo4jTemplate;
import org.springframework.data.neo4j.template.Neo4jOperations;

import com.neo4j.model.AlgorithmModel;
import com.neo4j.model.AttributeModel;
import com.neo4j.model.AttributeRelationShip;
import com.neo4j.service.algorithm.AlgorithmService;

public class AlgorithmRepositoryImpl implements AlgorithmService {

	@Autowired
	private Neo4jOperations neo4jOperations;
	@Autowired
	Neo4jTemplate neo4jTemplate;
	
	@Override
	public AlgorithmModel create(AlgorithmModel algorithmModel) {
		return neo4jOperations.save(algorithmModel);
	}

	@Override
	public void delete(AlgorithmModel algorithmModel) {
		neo4jOperations.delete(algorithmModel);
	}

	@Override
	public AlgorithmModel findById(long id) {
		return neo4jOperations.findOne(id, AlgorithmModel.class);
	}

	@Override
	public Result<AlgorithmModel> findAll() {
		return neo4jOperations.findAll(AlgorithmModel.class);
	}

	@Override
	public AttributeRelationShip addRelationShip(AttributeModel attributeModel, AlgorithmModel algorithmModel, String relationType) {
		return algorithmModel.addRelationShip(neo4jTemplate, attributeModel, relationType);
	}
}