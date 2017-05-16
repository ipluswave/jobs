package com.neo4j.repository.relation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.support.Neo4jTemplate;
import org.springframework.data.neo4j.template.Neo4jOperations;

import com.neo4j.model.RelationModel;
import com.neo4j.service.relation.RelationService;

public class RelationRepositoryImpl implements RelationService {

	@Autowired
	private Neo4jOperations neo4jOperations;
	@Autowired
	Neo4jTemplate neo4jTemplate;
	
	public RelationModel create(RelationModel relationModel) {
		return neo4jOperations.save(relationModel);
	}

	@Override
	public void delete(RelationModel relationModel) {
		neo4jOperations.delete(relationModel);
	}

	public RelationModel findById(long id) {
		return neo4jOperations.findOne(id, RelationModel.class);
	}

	@Override
	public Result<RelationModel> findAll() {
		return neo4jOperations.findAll(RelationModel.class);
	}
}