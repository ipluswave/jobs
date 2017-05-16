package com.neo4j.repository.attributeRegistration;

import java.util.List;

import org.springframework.data.neo4j.annotation.Query;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.data.neo4j.repository.RelationshipOperationsRepository;

import com.neo4j.model.AlgorithmModel;
import com.neo4j.model.AttributeModel;
import com.neo4j.model.AttributeRegistrationModel;
import com.neo4j.model.AttributeRelationShip;



public interface attributeRegistrationRepository extends GraphRepository<AttributeRegistrationModel>, RelationshipOperationsRepository<AttributeRegistrationModel>{

	@Query("MATCH (n:AttributeRegistrationModel) where n.attributeName CONTAINS {0} RETURN n")
	List<AttributeRegistrationModel> findByAttributeName(String attributeName);

	
}
