package com.neo4j.repository.attributeParameter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.support.Neo4jTemplate;
import org.springframework.data.neo4j.template.Neo4jOperations;

import com.neo4j.model.AlgorithmParameterModel;
import com.neo4j.model.AttributeParameterModel;
import com.neo4j.service.algorithmParameter.AlgorithmParameterService;
import com.neo4j.service.attributeParameter.AttributeParameterService;

public class AttributeParameterRepositoryImpl implements AttributeParameterService {

	@Autowired
	private Neo4jOperations neo4jOperations;
	@Autowired
	Neo4jTemplate neo4jTemplate;
	
	@Override
	public AttributeParameterModel create(AttributeParameterModel attributeParameterModel) {
		// TODO Auto-generated method stub
		return neo4jOperations.save(attributeParameterModel);
	}
	@Override
	public void delete(AttributeParameterModel attributeParameterModel) {
		// TODO Auto-generated method stub
		neo4jOperations.delete(attributeParameterModel);
	}
	@Override
	public AttributeParameterModel findById(long id) {
		// TODO Auto-generated method stub
		return neo4jOperations.findOne(id,AttributeParameterModel.class);
	}
	@Override
	public Result<AttributeParameterModel> findAll() {
		// TODO Auto-generated method stub
		return neo4jOperations.findAll(AttributeParameterModel.class);
	}
}