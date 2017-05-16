package com.neo4j.service.attributeParameter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.template.Neo4jOperations;
import org.springframework.stereotype.Service;

import com.neo4j.model.AlgorithmParameterModel;
import com.neo4j.model.AttributeParameterModel;

@Service
public class AttributeParameterServiceImpl implements AttributeParameterService {
	
	@Autowired 
	Neo4jOperations template;

	@Override
	public AttributeParameterModel create(AttributeParameterModel attributeParameterModel) {
		return template.save(attributeParameterModel);
	}

	@Override
	public void delete(AttributeParameterModel attributeParameterModel) {
		template.delete(attributeParameterModel);
		
	}

	@Override
	public AttributeParameterModel findById(long id) {
		// TODO Auto-generated method stub
		return template.findOne(id,AttributeParameterModel.class);
	}

	@Override
	public Result<AttributeParameterModel> findAll() {
		// TODO Auto-generated method stub
		return template.findAll(AttributeParameterModel.class);
	}
	

}