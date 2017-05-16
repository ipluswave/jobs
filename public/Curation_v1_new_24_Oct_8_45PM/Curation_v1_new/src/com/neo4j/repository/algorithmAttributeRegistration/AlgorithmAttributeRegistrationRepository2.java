package com.neo4j.repository.algorithmAttributeRegistration;

import java.util.List;

import org.springframework.data.neo4j.annotation.Query;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.data.neo4j.repository.RelationshipOperationsRepository;

import com.neo4j.model.AlgorithmAttributeRegistrationModel;

public interface AlgorithmAttributeRegistrationRepository2 extends GraphRepository<AlgorithmAttributeRegistrationModel>, RelationshipOperationsRepository<AlgorithmAttributeRegistrationModel>{

	List<AlgorithmAttributeRegistrationModel> findByAttributeName(String attributeName);

}