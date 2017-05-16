package com.neo4j.repository.AlgorithmMapping;

import java.util.List;

import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.data.neo4j.repository.RelationshipOperationsRepository;

import com.neo4j.model.AlgorithmAttributeModel;
import com.neo4j.model.AlgorithmMappingModel;
import com.neo4j.model.UserMappingModel;

public interface AlgorithmMappingRepository extends GraphRepository<AlgorithmMappingModel>, RelationshipOperationsRepository<AlgorithmMappingModel>{
	List<AlgorithmMappingModel> findByalgorithmName(String algorithmName);

	List<AlgorithmMappingModel> findByAlgorithmId(Long algorithmId);
}