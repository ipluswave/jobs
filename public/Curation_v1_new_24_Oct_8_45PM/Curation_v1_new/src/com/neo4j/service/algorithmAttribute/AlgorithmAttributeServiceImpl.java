package com.neo4j.service.algorithmAttribute;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.template.Neo4jOperations;
import org.springframework.stereotype.Service;

import com.neo4j.model.AlgorithmAttributeModel;

@Service
public class AlgorithmAttributeServiceImpl implements AlgorithmAttributeService {
	
	@Autowired 
	Neo4jOperations template;
	
	public AlgorithmAttributeModel create(AlgorithmAttributeModel algorithmAttributeModel) {
		return template.save(algorithmAttributeModel);
	}

	public void delete(AlgorithmAttributeModel algorithmAttributeModel) {
		template.delete(algorithmAttributeModel);
	}

	public AlgorithmAttributeModel findById(long id) {
		return template.findOne(id,AlgorithmAttributeModel.class);
	}

	public Result<AlgorithmAttributeModel> findAll() {
		return template.findAll(AlgorithmAttributeModel.class);
	}

}