package com.neo4j.service.datasource;

import org.springframework.data.neo4j.conversion.Result;

import com.neo4j.model.DataSourceModel;

public interface DataSourceService {

	DataSourceModel create(DataSourceModel dataSourceModel);
	void delete(DataSourceModel dataSourceModel);		
	DataSourceModel findById(long id);		
	Result<DataSourceModel> findAll();
}
