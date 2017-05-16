package com.neo4j.repository.propertyValue;

import org.springframework.data.neo4j.repository.GraphRepository;

import com.neo4j.model.PropertyValueModel;

public interface PropertyValueRepository extends GraphRepository<PropertyValueModel>{
	
	public PropertyValueModel getByPropertyKey(String propertyKey);
}