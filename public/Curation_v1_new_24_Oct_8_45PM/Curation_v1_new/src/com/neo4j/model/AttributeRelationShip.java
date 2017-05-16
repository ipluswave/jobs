package com.neo4j.model;

import org.springframework.data.neo4j.annotation.EndNode;
import org.springframework.data.neo4j.annotation.Fetch;
import org.springframework.data.neo4j.annotation.GraphId;
import org.springframework.data.neo4j.annotation.RelationshipEntity;
import org.springframework.data.neo4j.annotation.StartNode;

@RelationshipEntity(type="INPUT_ATTRIBUTES")
public class AttributeRelationShip {
	@GraphId
	private Long id;
	@Fetch
	@StartNode
	private AttributeModel attributeModel;
	@EndNode
	private AlgorithmModel algorithmModel;
	
	private String relationShipType;
	
	public AttributeRelationShip(){
	}
	
	public AttributeRelationShip(AttributeModel attributeModel,AlgorithmModel algorithmModel,String relation){
		this.algorithmModel = algorithmModel;
		this.attributeModel = attributeModel;
		this.relationShipType = relation;
	}
	
	public AlgorithmModel getAlgorithmModel() {
		return algorithmModel;
	}
	public void setAlgorithmModel(AlgorithmModel algorithmModel) {
		this.algorithmModel = algorithmModel;
	}
	public AttributeModel getAttributeModel() {
		return attributeModel;
	}
	public void setAttributeModel(AttributeModel attributeModel) {
		this.attributeModel = attributeModel;
	}
	public String getRelationShipType() {
		return relationShipType;
	}
	public void setRelationShipType(String relationShipType) {
		this.relationShipType = relationShipType;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	@Override
    public String toString() {
        return String.format("%s acts as %s in %s", attributeModel, relationShipType, algorithmModel);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        AttributeRelationShip relationShip = (AttributeRelationShip) o;
        if (id == null) return super.equals(o);
        return id.equals(relationShip.id);

    }

    @Override
    public int hashCode() {
        return id != null ? id.hashCode() : super.hashCode();
    }
}