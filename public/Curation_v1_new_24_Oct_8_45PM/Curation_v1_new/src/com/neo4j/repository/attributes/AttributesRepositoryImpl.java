package com.neo4j.repository.attributes;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.support.Neo4jTemplate;
import org.springframework.data.neo4j.template.Neo4jOperations;

import com.neo4j.model.AttributeModel;

public class AttributesRepositoryImpl implements AttributeService {

	@Autowired
	private Neo4jOperations neo4jOperations;
	@Autowired
	Neo4jTemplate neo4jTemplate;
	
	public AttributeModel create(AttributeModel attributeModel) {
		return neo4jOperations.save(attributeModel);
	}

	public void delete(AttributeModel attributeModel) {
		neo4jOperations.delete(attributeModel);
	}

	public AttributeModel findById(long id) {
		return neo4jOperations.findOne(id, AttributeModel.class);
	}

	public Result<AttributeModel> findAll() {
		return neo4jOperations.findAll(AttributeModel.class);
	}
}