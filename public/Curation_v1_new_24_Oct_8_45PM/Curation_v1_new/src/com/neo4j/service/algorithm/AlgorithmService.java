package com.neo4j.service.algorithm;

import org.springframework.data.neo4j.conversion.Result;
import org.springframework.transaction.annotation.Transactional;

import com.neo4j.model.AlgorithmModel;
import com.neo4j.model.AttributeModel;
import com.neo4j.model.AttributeRelationShip;

public interface AlgorithmService {

	AlgorithmModel create(AlgorithmModel algorithmModel);
	void delete(AlgorithmModel algorithmModel);		
	AlgorithmModel findById(long id);		
	Result<AlgorithmModel> findAll();
	@Transactional
	AttributeRelationShip addRelationShip(AttributeModel attributeModel, AlgorithmModel algorithmModel, String relationType);
}
