package com.neo4j.repository.userMapping;

import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.data.neo4j.repository.RelationshipOperationsRepository;

import com.neo4j.model.UserMappingModel;

public interface UserMappingRepository extends GraphRepository<UserMappingModel>, RelationshipOperationsRepository<UserMappingModel>{

}