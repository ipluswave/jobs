package com.neo4j.repository.attributes;

import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.stereotype.Repository;

import com.neo4j.model.AttributeRelationShip;

@Repository
public interface AttributesRelationShipRepository extends GraphRepository<AttributeRelationShip>{
	
	
}
