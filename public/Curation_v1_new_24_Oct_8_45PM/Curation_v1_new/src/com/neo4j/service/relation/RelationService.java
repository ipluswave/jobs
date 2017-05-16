package com.neo4j.service.relation;

import org.springframework.data.neo4j.conversion.Result;

import com.neo4j.model.RelationModel;

public interface RelationService {

	RelationModel create(RelationModel relationModel);
	void delete(RelationModel relationModel);		
	RelationModel findById(long id);		
	Result<RelationModel> findAll();
}
