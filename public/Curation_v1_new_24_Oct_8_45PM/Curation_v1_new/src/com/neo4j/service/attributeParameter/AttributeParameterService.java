package com.neo4j.service.attributeParameter;

import org.springframework.data.neo4j.conversion.Result;

import com.neo4j.model.AlgorithmParameterModel;
import com.neo4j.model.AttributeParameterModel;

public interface AttributeParameterService {

	AttributeParameterModel create(AttributeParameterModel attributeParameterModel);
	void delete(AttributeParameterModel attributeParameterModel);		
	AttributeParameterModel findById(long id);		
	Result<AttributeParameterModel> findAll();
}
