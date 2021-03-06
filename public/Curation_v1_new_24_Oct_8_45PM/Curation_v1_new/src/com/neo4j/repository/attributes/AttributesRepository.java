package com.neo4j.repository.attributes;

import java.util.List;

import org.springframework.data.neo4j.annotation.Query;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.data.neo4j.repository.RelationshipOperationsRepository;
import org.springframework.transaction.annotation.Transactional;

import com.neo4j.model.AttributeModel;

/**
 * @author dev2
 *
 */
@Transactional
public interface AttributesRepository extends GraphRepository<AttributeModel>,RelationshipOperationsRepository<AttributeModel>{
	
	@Query("MATCH (n:AttributeModel) where n.term CONTAINS {0} RETURN n")
	List<AttributeModel> findByTerm(String term);

	@Query("MATCH (n:AttributeModel)<-[r:IS_MAPPED_TO]-(m:UserMappingModel) WHERE m.field = {0} RETURN n")
	List<AttributeModel> findByUserMapping(String field);
}