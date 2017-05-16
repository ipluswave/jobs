package com.neo4j.repository.datasource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.support.Neo4jTemplate;
import org.springframework.data.neo4j.template.Neo4jOperations;

import com.neo4j.model.DataSourceModel;
import com.neo4j.service.datasource.DataSourceService;

public class DataSourceRepositoryImpl implements DataSourceService {

	@Autowired
	private Neo4jOperations neo4jOperations;
	@Autowired
	Neo4jTemplate neo4jTemplate;
	
	@Override
	public DataSourceModel create(DataSourceModel dataSourceModel) {
		return neo4jOperations.save(dataSourceModel);
	}

	@Override
	public void delete(DataSourceModel dataSourceModel) {
		neo4jOperations.delete(dataSourceModel);
	}

	@Override
	public DataSourceModel findById(long id) {
		return neo4jOperations.findOne(id, DataSourceModel.class);
	}

	@Override
	public Result<DataSourceModel> findAll() {
		return neo4jOperations.findAll(DataSourceModel.class);
	}

}