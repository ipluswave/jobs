package com.neo4j.repository.userAttributeMapping;

import java.util.List;

import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.data.neo4j.repository.RelationshipOperationsRepository;

import com.neo4j.model.DataSourceModel;
import com.neo4j.model.UserMappingAttributeModel;
import com.neo4j.model.UserMappingModel;

public interface UserMappingAttributeRepository extends GraphRepository<UserMappingAttributeModel>, RelationshipOperationsRepository<UserMappingAttributeModel>{

	List<UserMappingAttributeModel> findByfield(String field);
}