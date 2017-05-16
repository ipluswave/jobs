package com.neo4j.repository.algorithmParameter;

import java.util.Set;

import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.data.neo4j.repository.RelationshipOperationsRepository;

import com.neo4j.model.AlgorithmParameterModel;

public interface AlgorithmParameterRepository extends GraphRepository<AlgorithmParameterModel>, RelationshipOperationsRepository<AlgorithmParameterModel>{

	Set<AlgorithmParameterModel> findByAlgorithmId(Long algorithmId);
}
