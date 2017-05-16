package com.neo4j.model;

import org.springframework.data.neo4j.annotation.GraphId;
import org.springframework.data.neo4j.annotation.Indexed;
import org.springframework.data.neo4j.annotation.NodeEntity;

@NodeEntity
public class AlgorithmParameterModel {

	@GraphId
	private Long id;
	@Indexed(unique=true,failOnDuplicate=true)
	private String parameterName;
	private String parameterType;
	
	//@RelatedTo(type = "HAS_PARAMETERS", direction = Direction.INCOMING)
	private Long algorithmId;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getParameterName() {
		return parameterName;
	}
	public void setParameterName(String parameterName) {
		this.parameterName = parameterName;
	}
	public String getParameterType() {
		return parameterType;
	}
	public void setParameterType(String parameterType) {
		this.parameterType = parameterType;
	}
	public Long getAlgorithmId() {
		return algorithmId;
	}
	public void setAlgorithmId(Long algorithmId) {
		this.algorithmId = algorithmId;
	}
}