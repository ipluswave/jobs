package com.neo4j.repository.attributeParameter;

import java.util.List;
import java.util.Set;

import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.data.neo4j.repository.RelationshipOperationsRepository;

import com.neo4j.model.AlgorithmParameterModel;
import com.neo4j.model.AttributeParameterModel;

public interface AttributeParameterRepository extends GraphRepository<AttributeParameterModel>, RelationshipOperationsRepository<AttributeParameterModel>{

	Set<AttributeParameterModel> findByAttributeId(Long attributeId);

}
