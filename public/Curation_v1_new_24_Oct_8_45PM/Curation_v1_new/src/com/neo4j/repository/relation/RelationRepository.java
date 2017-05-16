package com.neo4j.repository.relation;

import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.data.neo4j.repository.RelationshipOperationsRepository;

import com.neo4j.model.AlgorithmModel;
import com.neo4j.model.RelationModel;

public interface RelationRepository extends GraphRepository<RelationModel>,RelationshipOperationsRepository<AlgorithmModel>{

}
