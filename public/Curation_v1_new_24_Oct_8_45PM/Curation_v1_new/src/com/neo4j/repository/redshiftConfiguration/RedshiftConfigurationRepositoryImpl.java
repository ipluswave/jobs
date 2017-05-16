package com.neo4j.repository.redshiftConfiguration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.support.Neo4jTemplate;
import org.springframework.data.neo4j.template.Neo4jOperations;

import com.neo4j.model.RedShiftConfigurationModel;
import com.neo4j.service.redshiftConfiguration.RedShiftConfigurationService;

public class RedshiftConfigurationRepositoryImpl implements RedShiftConfigurationService {

	@Autowired
	private Neo4jOperations neo4jOperations;
	@Autowired
	Neo4jTemplate neo4jTemplate;
	
	@Override
	public RedShiftConfigurationModel create(RedShiftConfigurationModel RedShiftConfigurationModel) {
		return neo4jOperations.save(RedShiftConfigurationModel);
	}

	@Override
	public void delete(RedShiftConfigurationModel RedShiftConfigurationModel) {
		neo4jOperations.delete(RedShiftConfigurationModel);
	}

	@Override
	public RedShiftConfigurationModel findById(long id) {
		return neo4jOperations.findOne(id, RedShiftConfigurationModel.class);
	}

	@Override
	public Result<RedShiftConfigurationModel> findAll() {
		return neo4jOperations.findAll(RedShiftConfigurationModel.class);
	}
}