package com.neo4j.service.attributeRegistration;

import org.springframework.data.neo4j.conversion.Result;
import org.springframework.transaction.annotation.Transactional;

import com.neo4j.model.AlgorithmModel;
import com.neo4j.model.AttributeModel;
import com.neo4j.model.AttributeRegistrationModel;
import com.neo4j.model.AttributeRelationShip;

public interface attributeRegistrationService {

	AttributeRegistrationModel create(AttributeRegistrationModel attributeRegistration);
	void delete(AttributeRegistrationModel attributeRegistration);		
	AttributeRegistrationModel findById(long id);		
	Result<AttributeRegistrationModel> findAll();
	/*@Transactional
	AttributeRelationShip addRelationShip(AttributeModel attributeModel, AlgorithmModel algorithmModel, String relationType);*/
}
