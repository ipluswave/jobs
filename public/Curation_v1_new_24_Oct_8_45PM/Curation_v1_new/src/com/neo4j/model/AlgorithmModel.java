package com.neo4j.model;

import java.util.Set;

import org.neo4j.graphdb.Direction;
import org.springframework.data.neo4j.annotation.GraphId;
import org.springframework.data.neo4j.annotation.Indexed;
import org.springframework.data.neo4j.annotation.NodeEntity;
import org.springframework.data.neo4j.annotation.RelatedTo;
import org.springframework.data.neo4j.template.Neo4jOperations;

@NodeEntity
public class AlgorithmModel {

	@GraphId
	private Long id;
	private Integer algorithmTypeId;
	@Indexed(unique=true)
	private String algorithmName;
	private String description;
	private String usage;
	private String tags;
	@RelatedTo(type = "HAS_PARAMETERS", direction = Direction.OUTGOING)
	private Set<AlgorithmParameterModel> parameters;
	
	@RelatedTo(type = "HAS_ATTRIBUTES", direction = Direction.OUTGOING)
	private Set<AlgorithmAttributeModel> attributes;
	
	@RelatedTo(type = "OUTPUT_PARAMETERS", direction = Direction.OUTGOING)
	private Set<AlgorithmParameterModel> outputParameters;
	
	private Integer cost;
	private String fileName;
	private String originalFileName;
	private String filePath;
	
	@RelatedTo(type = "INPUT_ATTRIBUTES", direction = Direction.INCOMING)
	private Set<AttributeRelation> attributeRelation;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Integer getAlgorithmTypeId() {
		return algorithmTypeId;
	}
	public void setAlgorithmTypeId(Integer algorithmTypeId) {
		this.algorithmTypeId = algorithmTypeId;
	}
	public String getAlgorithmName() {
		return algorithmName;
	}
	public void setAlgorithmName(String algorithmName) {
		this.algorithmName = algorithmName;
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
	public Integer getCost() {
		return cost;
	}
	public void setCost(Integer cost) {
		this.cost = cost;
	}
	public Set<AttributeRelation> getAttributeRelation() {
		return attributeRelation;
	}
	public void setAttributeRelation(Set<AttributeRelation> attributeRelation) {
		this.attributeRelation = attributeRelation;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public Set<AlgorithmParameterModel> getParameters() {
		return parameters;
	}
	public void setParameters(Set<AlgorithmParameterModel> parameters) {
		this.parameters = parameters;
	}
	public AttributeRelationShip addRelationShip(Neo4jOperations template, AttributeModel attributeModel, String relationType) {
        final AttributeRelationShip attributeRelationShip = template.createRelationshipBetween(attributeModel, this, AttributeRelationShip.class,relationType,false);
        return template.save(attributeRelationShip);
    }
	public Set<AlgorithmAttributeModel> getAttributes() {
		return attributes;
	}
	public void setAttributes(Set<AlgorithmAttributeModel> attributes) {
		this.attributes = attributes;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getOriginalFileName() {
		return originalFileName;
	}
	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}
	public Set<AlgorithmParameterModel> getOutputParameters() {
		return outputParameters;
	}
	public void setOutputParameters(Set<AlgorithmParameterModel> outputParameters) {
		this.outputParameters = outputParameters;
	}
}