package com.neo4j.service.AlgorithmMapping;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.data.neo4j.template.Neo4jOperations;
import org.springframework.stereotype.Service;

import com.neo4j.model.AlgorithmMappingModel;
import com.neo4j.model.UserMappingModel;

@Service
public class AlgorithmMappingServiceImpl implements AlgorithmMappingService {
	
	@Autowired 
	Neo4jOperations template;

	@Override
	public AlgorithmMappingModel create(AlgorithmMappingModel algorithmMappingModel) {
		// TODO Auto-generated method stub
		return template.save(algorithmMappingModel);
	}

	@Override
	public void delete(AlgorithmMappingModel algorithmMappingModel) {
		// TODO Auto-generated method stub
		template.delete(algorithmMappingModel);
	}

	@Override
	public AlgorithmMappingModel findById(long id) {
		// TODO Auto-generated method stub
		return template.findOne(id,AlgorithmMappingModel.class);
	}

	@Override
	public Result<AlgorithmMappingModel> findAll() {
		// TODO Auto-generated method stub
		return template.findAll(AlgorithmMappingModel.class);
	}
	
	
	
	
}