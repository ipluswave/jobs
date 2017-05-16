package com.neo4j.repository.propertyValue;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.support.Neo4jTemplate;
import org.springframework.data.neo4j.template.Neo4jOperations;

import com.neo4j.model.PropertyValueModel;
import com.neo4j.service.propertyValue.PropertyValueService;

public class PropertyValueRepositoryImpl implements PropertyValueService {

	@Autowired
	private Neo4jOperations neo4jOperations;
	@Autowired
	Neo4jTemplate neo4jTemplate;
	
	public PropertyValueModel create(PropertyValueModel relationModel) {
		return neo4jOperations.save(relationModel);
	}

	@Override
	public void delete(PropertyValueModel relationModel) {
		neo4jOperations.delete(relationModel);
	}

	public PropertyValueModel findById(long id) {
		return neo4jOperations.findOne(id, PropertyValueModel.class);
	}

	@Override
	public Result<PropertyValueModel> findAll() {
		return neo4jOperations.findAll(PropertyValueModel.class);
	}
}