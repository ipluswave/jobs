package com.neo4j.service.relation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.stereotype.Service;

import com.neo4j.model.RelationModel;
import com.neo4j.repository.relation.RelationRepository;

@Service
public class RelationServiceImpl implements RelationService {

	@Autowired
	private RelationRepository relationRepository;
	
	public RelationModel create(RelationModel relationModel) {
		return relationRepository.save(relationModel);
	}

	public void delete(RelationModel relationModel) {
		relationRepository.delete(relationModel);
	}
	
	public RelationModel findById(long id) {
		return relationRepository.findOne(id);
	}

	public Result<RelationModel> findAll() {
		return relationRepository.findAll();
	}
}