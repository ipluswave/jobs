package com.neo4j.service.propertyValue;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.neo4j.conversion.Result;
import org.springframework.stereotype.Service;

import com.neo4j.model.PropertyValueModel;
import com.neo4j.repository.propertyValue.PropertyValueRepository;

@Service
public class PropertyValueServiceImpl implements PropertyValueService {

	@Autowired 
	private PropertyValueRepository propertyValueRepository;
	
	public PropertyValueModel create(PropertyValueModel propertyValueModel) {
		return propertyValueRepository.save(propertyValueModel);
	}

	public void delete(PropertyValueModel propertyValueModel) {
		propertyValueRepository.delete(propertyValueModel);
	}

	public PropertyValueModel findById(long id) {
		return propertyValueRepository.findOne(id);
	}

	public Result<PropertyValueModel> findAll() {
		return propertyValueRepository.findAll();
	}
}