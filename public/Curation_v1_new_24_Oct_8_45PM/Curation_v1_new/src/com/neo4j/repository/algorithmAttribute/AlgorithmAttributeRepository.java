package com.neo4j.repository.algorithmAttribute;

import java.util.List;

import org.springframework.data.neo4j.annotation.Query;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.data.neo4j.repository.RelationshipOperationsRepository;

import com.neo4j.model.AlgorithmAttributeModel;

public interface AlgorithmAttributeRepository extends GraphRepository<AlgorithmAttributeModel>, RelationshipOperationsRepository<AlgorithmAttributeModel>{

	@Query("MATCH (n:AlgorithmAttributeModel) where n.attributeName CONTAINS {0} RETURN n")
	List<AlgorithmAttributeModel> findByAttributeName(String attributeName);
}