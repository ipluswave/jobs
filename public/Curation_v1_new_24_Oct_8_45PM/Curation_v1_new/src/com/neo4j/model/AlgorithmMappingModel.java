package com.neo4j.model;

import java.util.Set;

import org.neo4j.graphdb.Direction;
import org.springframework.data.neo4j.annotation.GraphId;
import org.springframework.data.neo4j.annotation.Indexed;
import org.springframework.data.neo4j.annotation.NodeEntity;
import org.springframework.data.neo4j.annotation.RelatedTo;

@NodeEntity
public class AlgorithmMappingModel {

	@GraphId
	private Long id;
	@Indexed(unique = true)
	private String algorithmName;
	@RelatedTo(type = "Related-To", direction = Direction.OUTGOING)
	private Set<AlgorithmModel> algorithmMapping;
	
	private Long algorithmId;
	
	
	public Long getId() {
		return id;
	}


	public String getAlgorithmName() {
		return algorithmName;
	}


	public void setAlgorithmName(String algorithmName) {
		this.algorithmName = algorithmName;
	}


	public Set<AlgorithmModel> getAlgorithmMapping() {
		return algorithmMapping;
	}


	public void setAlgorithmMapping(Set<AlgorithmModel> algorithmMapping) {
		this.algorithmMapping = algorithmMapping;
	}


	public Long getAlgorithmId() {
		return algorithmId;
	}


	public void setAlgorithmId(Long algorithmId) {
		this.algorithmId = algorithmId;
	}


	public void setId(Long id) {
		this.id = id;
	}
	
}