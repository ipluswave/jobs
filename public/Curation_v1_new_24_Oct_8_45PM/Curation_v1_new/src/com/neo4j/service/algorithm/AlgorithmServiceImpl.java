package com.neo4j.service.algorithm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.template.Neo4jOperations;
import org.springframework.stereotype.Service;

import com.neo4j.model.AlgorithmModel;
import com.neo4j.model.AttributeModel;
import com.neo4j.model.AttributeRelationShip;

@Service
public class AlgorithmServiceImpl implements AlgorithmService {
	
	@Autowired 
	Neo4jOperations template;
	
	public AlgorithmModel create(AlgorithmModel algorithmModel) {
		return template.save(algorithmModel);
	}

	public void delete(AlgorithmModel algorithmModel) {
		template.delete(algorithmModel);
	}

	public AlgorithmModel findById(long id) {
		return template.findOne(id,AlgorithmModel.class);
	}

	public Result<AlgorithmModel> findAll() {
		return template.findAll(AlgorithmModel.class);
	}

	public AttributeRelationShip addRelationShip(AttributeModel attributeModel, AlgorithmModel algorithmModel, String relationshipType) {
		return template.createRelationshipBetween(algorithmModel ,attributeModel, AttributeRelationShip.class, relationshipType, false);
	}
}