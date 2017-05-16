package com.neo4j.model;

import java.util.Set;

import org.neo4j.graphdb.Direction;
import org.springframework.data.neo4j.annotation.GraphId;
import org.springframework.data.neo4j.annotation.Indexed;
import org.springframework.data.neo4j.annotation.NodeEntity;
import org.springframework.data.neo4j.annotation.RelatedTo;

@NodeEntity
public class AttributeRegistrationModel {

	@GraphId
	private Long id;
	private Integer attributeTypeId;
	@Indexed(unique=true)
	private String attributeName;
	private String description;
	private String usage;
	private String tags;
	@RelatedTo(type = "HAS_PARAMETERS", direction = Direction.OUTGOING)
	private Set<AttributeParameterModel> parameters;
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	
	public Integer getAttributeTypeId() {
		return attributeTypeId;
	}
	public void setAttributeTypeId(Integer attributeTypeId) {
		this.attributeTypeId = attributeTypeId;
	}
	public String getAttributeName() {
		return attributeName;
	}
	public void setAttributeName(String attributeName) {
		this.attributeName = attributeName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getUsage() {
		return usage;
	}
	public void setUsage(String usage) {
		this.usage = usage;
	}
	public String getTags() {
		return tags;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}
	public Set<AttributeParameterModel> getParameters() {
		return parameters;
	}
	public void setParameters(Set<AttributeParameterModel> parameters) {
		this.parameters = parameters;
	}
	
}