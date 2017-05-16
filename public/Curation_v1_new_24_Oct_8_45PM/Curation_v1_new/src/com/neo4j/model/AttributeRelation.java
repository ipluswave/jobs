package com.neo4j.model;

import java.util.Collection;

import org.springframework.data.neo4j.annotation.NodeEntity;
import org.springframework.data.neo4j.annotation.RelatedToVia;

@NodeEntity
public class AttributeRelation extends AttributeModel{

	public AttributeRelation(Long id, String name) {
        super(id, name);
    }

    public AttributeRelation() {
    }

    @RelatedToVia
	private Collection<AttributeRelationShip> attributeRelationShips;

    public AttributeRelation(Long id) {
        super(id,null);
    }
	
	public Iterable<AttributeRelationShip> getAttributeRelationShips() {
		return attributeRelationShips;
	}
    public AttributeRelationShip playedIn(AlgorithmModel algorithmModel, String relation) {
        final AttributeRelationShip relationShip = new AttributeRelationShip(this, algorithmModel, relation);
        attributeRelationShips.add(relationShip);
        return relationShip;
    }
}