package com.neo4j.model;

import java.util.Set;

import org.neo4j.graphdb.Direction;
import org.springframework.data.neo4j.annotation.GraphId;
import org.springframework.data.neo4j.annotation.Indexed;
import org.springframework.data.neo4j.annotation.NodeEntity;
import org.springframework.data.neo4j.annotation.RelatedTo;

@NodeEntity
public class UserMappingAttributeModel {

	@GraphId
	private Long id;
	@Indexed(unique = true)
	private String field;
	@RelatedTo(type = "IS_MAPPED_TO", direction = Direction.OUTGOING)
	private Set<AttributeModel> vocabulary;
	private Integer size;
	private String type;
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getField() {
		return field;
	}
	public void setField(String field) {
		this.field = field;
	}
	public Integer getSize() {
		return size;
	}
	public void setSize(Integer size) {
		this.size = size;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Set<AttributeModel> getVocabulary() {
		return vocabulary;
	}
	public void setVocabulary(Set<AttributeModel> vocabulary) {
		this.vocabulary = vocabulary;
	}
}