package com.neo4j.service.algorithmParameter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.template.Neo4jOperations;
import org.springframework.stereotype.Service;

import com.neo4j.model.AlgorithmParameterModel;

@Service
public class AlgorithmParameterServiceImpl implements AlgorithmParameterService {
	
	@Autowired 
	Neo4jOperations template;
	
	public AlgorithmParameterModel create(AlgorithmParameterModel algorithmModel) {
		return template.save(algorithmModel);
	}

	public void delete(AlgorithmParameterModel algorithmModel) {
		template.delete(algorithmModel);
	}

	public AlgorithmParameterModel findById(long id) {
		return template.findOne(id,AlgorithmParameterModel.class);
	}

	public Result<AlgorithmParameterModel> findAll() {
		return template.findAll(AlgorithmParameterModel.class);
	}

}