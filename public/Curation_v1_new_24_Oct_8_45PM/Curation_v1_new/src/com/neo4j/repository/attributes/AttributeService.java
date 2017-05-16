package com.neo4j.repository.attributes;

import org.springframework.data.neo4j.conversion.Result;

import com.neo4j.model.AttributeModel;

public interface AttributeService {

	AttributeModel create(AttributeModel attributeModel);
	void delete(AttributeModel attributeModel);		
	AttributeModel findById(long id);		
	Result<AttributeModel> findAll();
}
