package com.neo4j.repository.algorithm;

import java.util.List;

import org.springframework.data.neo4j.annotation.Query;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.data.neo4j.repository.RelationshipOperationsRepository;

import com.neo4j.model.AlgorithmModel;
import com.neo4j.model.AttributeModel;
import com.neo4j.model.AttributeRelationShip;

public interface AlgorithmRepository extends GraphRepository<AlgorithmModel>, RelationshipOperationsRepository<AlgorithmModel>{

	public AttributeRelationShip addRelationShip(AttributeModel attributeModel, AlgorithmModel algorithmModel, String relationType);
    // TODO : Implement this query
	@Query("START attribute=node(*) MATCH attribute-[r]-> algorithm Where attribute.term={0} return algorithm")
	public List<AlgorithmModel> findAlgorithmByTerm(String term);
	
	@Query("MATCH (algo:AlgorithmModel)-[r:HAS_ATTRIBUTES]->(attribute:AlgorithmAttributeModel) WHERE attribute.attributeName = {0} RETURN algo")
	public List<AlgorithmModel> findAlgorithmByAttributes(String attributeName);
	
	
}
