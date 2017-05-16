package com.neo4j.controller;

import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.neo4j.model.AlgorithmModel;
import com.neo4j.model.AlgorithmParameterModel;
import com.neo4j.model.AttributeParameterModel;
import com.neo4j.model.AttributeRegistrationModel;
import com.neo4j.repository.algorithm.AlgorithmRepository;
import com.neo4j.repository.algorithmParameter.AlgorithmParameterRepository;
import com.neo4j.repository.attributeParameter.AttributeParameterRepository;
import com.neo4j.repository.attributeRegistration.attributeRegistrationRepository;

@Controller
public class AlgorithmParameterController {

	private static Logger logger = Logger.getLogger(AlgorithmParameterController.class.getName());

	@Autowired
	private AlgorithmParameterRepository parameterRepository;

	@Autowired
	private AlgorithmRepository algorithmRepository;

	@Autowired
	private AttributeParameterRepository attributeParameterRepository;

	@Autowired
	private attributeRegistrationRepository attributeRegistrationRepository;

	@RequestMapping(value = "/saveParameter", method = RequestMethod.POST)
	public ResponseEntity<?> saveParameter(@RequestBody AlgorithmParameterModel parameterModel,
			HttpServletRequest request) {
		try {
			parameterRepository.save(parameterModel);
			AlgorithmModel algorithmModel = algorithmRepository.findOne(parameterModel.getAlgorithmId());
			algorithmModel.getParameters().add(parameterModel);
			algorithmRepository.save(algorithmModel);
			return new ResponseEntity<AlgorithmParameterModel>(parameterModel, HttpStatus.OK);
		} catch (Exception e) {
			logger.info(e.toString());
			return new ResponseEntity<Integer>(500, HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	@RequestMapping(value = "/saveParameterInAttribute", method = RequestMethod.POST)
	public ResponseEntity<?> saveParameterInAttribute(@RequestBody AttributeParameterModel attributeParameterModel,
			HttpServletRequest request) {
		try {
			attributeParameterRepository.save(attributeParameterModel);
			AttributeRegistrationModel attributeRegistrationModel = attributeRegistrationRepository
					.findOne(attributeParameterModel.getAttributeId());
			attributeRegistrationModel.getParameters().add(attributeParameterModel);
			attributeRegistrationRepository.save(attributeRegistrationModel);
			return new ResponseEntity<AttributeParameterModel>(attributeParameterModel, HttpStatus.OK);
		} catch (Exception e) {
			logger.info(e.toString());
			return new ResponseEntity<Integer>(500, HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
}