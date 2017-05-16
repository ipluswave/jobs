package com.neo4j.service.datasource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.template.Neo4jOperations;
import org.springframework.stereotype.Service;

import com.neo4j.model.DataSourceModel;

@Service
public class DataSourceServiceImpl implements DataSourceService {
	
	@Autowired 
	Neo4jOperations template;
	
	public DataSourceModel create(DataSourceModel dataSourceModel) {
		return template.save(dataSourceModel);
	}

	public void delete(DataSourceModel dataSourceModel) {
		template.delete(dataSourceModel);
	}

	public DataSourceModel findById(long id) {
		return template.findOne(id,DataSourceModel.class);
	}

	public Result<DataSourceModel> findAll() {
		return template.findAll(DataSourceModel.class);
	}
}