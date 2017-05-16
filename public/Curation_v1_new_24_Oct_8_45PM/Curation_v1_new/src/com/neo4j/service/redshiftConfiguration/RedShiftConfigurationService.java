package com.neo4j.service.redshiftConfiguration;

import org.springframework.data.neo4j.conversion.Result;

import com.neo4j.model.RedShiftConfigurationModel;

public interface RedShiftConfigurationService {
	RedShiftConfigurationModel create(RedShiftConfigurationModel redShiftConfigurationModel);
	void delete(RedShiftConfigurationModel redShiftConfigurationModel);		
	RedShiftConfigurationModel findById(long id);		
	Result<RedShiftConfigurationModel> findAll();
}