package com.neo4j.service.redshiftConfiguration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.template.Neo4jOperations;
import org.springframework.stereotype.Service;

import com.neo4j.model.RedShiftConfigurationModel;
import com.neo4j.model.AttributeModel;
import com.neo4j.model.AttributeRelationShip;

@Service
public class RedShiftConfigurationServiceImpl implements RedShiftConfigurationService {
	
	@Autowired 
	Neo4jOperations template;
	
	public RedShiftConfigurationModel create(RedShiftConfigurationModel redShiftConfigurationModel) {
		return template.save(redShiftConfigurationModel);
	}

	public void delete(RedShiftConfigurationModel redShiftConfigurationModel) {
		template.delete(redShiftConfigurationModel);
	}

	public RedShiftConfigurationModel findById(long id) {
		return template.findOne(id,RedShiftConfigurationModel.class);
	}

	public Result<RedShiftConfigurationModel> findAll() {
		return template.findAll(RedShiftConfigurationModel.class);
	}

	public AttributeRelationShip addRelationShip(AttributeModel attributeModel, RedShiftConfigurationModel redShiftConfigurationModel, String relationshipType) {
		return template.createRelationshipBetween(redShiftConfigurationModel ,attributeModel, AttributeRelationShip.class, relationshipType, false);
	}
}