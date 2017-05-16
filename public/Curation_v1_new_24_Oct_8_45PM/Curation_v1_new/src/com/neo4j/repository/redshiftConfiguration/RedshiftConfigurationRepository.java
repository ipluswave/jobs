package com.neo4j.repository.redshiftConfiguration;

import java.util.List;

import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.data.neo4j.repository.RelationshipOperationsRepository;

import com.neo4j.model.DataSourceModel;
import com.neo4j.model.RedShiftConfigurationModel;

public interface RedshiftConfigurationRepository extends GraphRepository<RedShiftConfigurationModel>, RelationshipOperationsRepository<RedShiftConfigurationModel>{

	
	List<RedShiftConfigurationModel> findByUrl(String url);

	
}