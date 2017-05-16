package com.neo4j.service.propertyValue;

import org.springframework.data.neo4j.conversion.Result;

import com.neo4j.model.PropertyValueModel;

public interface PropertyValueService {

	PropertyValueModel create(PropertyValueModel propertyValueModel);
	void delete(PropertyValueModel propertyValueModel);		
	PropertyValueModel findById(long id);		
	Result<PropertyValueModel> findAll();
}
