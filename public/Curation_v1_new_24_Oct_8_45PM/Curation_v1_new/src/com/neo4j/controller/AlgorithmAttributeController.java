package com.neo4j.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.neo4j.model.AlgorithmAttributeModel;
import com.neo4j.model.AlgorithmAttributeRegistrationModel;
import com.neo4j.model.AlgorithmModel;
import com.neo4j.model.AttributeRegistrationModel;
import com.neo4j.repository.AlgorithmMapping.AlgorithmMappingRepository;
import com.neo4j.repository.algorithm.AlgorithmRepository;
import com.neo4j.repository.algorithmAttribute.AlgorithmAttributeRepository;
import com.neo4j.repository.algorithmAttributeRegistration.AlgorithmAttributeRegistrationRepository;
import com.neo4j.repository.attributeRegistration.attributeRegistrationRepository;

@Controller
public class AlgorithmAttributeController {

	private static Logger logger = Logger.getLogger(AlgorithmAttributeController.class.getName());
	
	@Autowired
	private AlgorithmAttributeRepository attributeRepository;
	
	@Autowired
	private AlgorithmRepository algorithmRepository;
	
	@Autowired
	private attributeRegistrationRepository attributeRegistrationRepository;
	
	@Autowired
	private AlgorithmAttributeRegistrationRepository algorithmAttributeRegistrationRepository;
	
	@Autowired
	private AlgorithmMappingRepository algorithmMappingRepository; 
	
	@RequestMapping(value = "/saveAttribute", method = RequestMethod.POST)
	public ResponseEntity<?> saveParameter(@RequestBody AlgorithmAttributeModel attributeModel, HttpServletRequest request) {
		try {
			attributeRepository.save(attributeModel);
			AlgorithmModel algorithmAttributeModel = algorithmRepository.findOne(attributeModel.getAlgorithmId());
			algorithmAttributeModel.getAttributes().add(attributeModel);
			algorithmRepository.save(algorithmAttributeModel);
			return new ResponseEntity<AlgorithmAttributeModel>(attributeModel, HttpStatus.OK);
		} catch (Exception e) {
			logger.info(e.toString());
			return new ResponseEntity<Integer>(409, HttpStatus.CONFLICT);
		}
	}
	
	
	@RequestMapping(value = "/saveAttributeRegistration", method = RequestMethod.POST)
	public ResponseEntity<?> saveAttributeRegistration(@RequestBody AlgorithmAttributeRegistrationModel algorithmAttributeRegistrationModel, HttpServletRequest request) {
		try {
			System.out.println(algorithmAttributeRegistrationModel.getId());
			algorithmAttributeRegistrationRepository.save(algorithmAttributeRegistrationModel);
			return new ResponseEntity<AlgorithmAttributeRegistrationModel>(algorithmAttributeRegistrationModel, HttpStatus.OK);
		} catch (Exception e) {
			logger.info(e.toString());
			return new ResponseEntity<Integer>(409, HttpStatus.CONFLICT);
		}
	}
	
	@RequestMapping(value="/getAttributesByName", method=RequestMethod.POST)
	public ResponseEntity<?> attributesByAtributeName(@RequestBody String attributeName) {
		try {
			return new ResponseEntity<List<AlgorithmAttributeModel>>(this.attributeRepository.findByAttributeName(attributeName),HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<Integer>(400,HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(value="/getAttributesByNameAttribute", method=RequestMethod.POST)
	public ResponseEntity<?> getAttributesByNameAttribute(@RequestBody String attributeName) {
		try {
			return new ResponseEntity<List<AttributeRegistrationModel>>(this.attributeRegistrationRepository.findByAttributeName(attributeName),HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<Integer>(400,HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(value = "/searchAttributeByAlgorithmId", method = RequestMethod.POST)
	public ResponseEntity<?> searchAttributeByAlgorithmId(@RequestBody AlgorithmAttributeRegistrationModel algorithmMappingModel, HttpServletRequest request) {
		try {
			List<AlgorithmAttributeRegistrationModel> list=this.algorithmAttributeRegistrationRepository.findByAlgorithmId(algorithmMappingModel.getAlgorithmId());
			Set<Long> uniqAlgoIdSet=new HashSet<Long>();
			for(AlgorithmAttributeRegistrationModel all:list){
				List<AlgorithmAttributeRegistrationModel> list4 =this.algorithmAttributeRegistrationRepository.findByAttributeName(all.getAttributeName());
				for(AlgorithmAttributeRegistrationModel algorithmAttributeRegistrationModel : list4){
					if(!(algorithmMappingModel.getAlgorithmId().equals(algorithmAttributeRegistrationModel.getAlgorithmId()))){	
						uniqAlgoIdSet.add(algorithmAttributeRegistrationModel.getAlgorithmId());
					}
				}
			}
			List<AlgorithmModel> listOfAlgorithmModel=new ArrayList<AlgorithmModel>(); 
			for(Long setFindAlgoId : uniqAlgoIdSet){
				AlgorithmModel algorithmModel= this.algorithmRepository.findOne(setFindAlgoId);
					listOfAlgorithmModel.add(algorithmModel);
				
			}
			return new ResponseEntity<List<AlgorithmModel>>(listOfAlgorithmModel,HttpStatus.OK);
		} catch (Exception e) {
			logger.info(e.toString());
			return new ResponseEntity<Integer>(409, HttpStatus.CONFLICT);
		}
	}
	
}