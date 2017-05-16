package com.neo4j.controller;

import java.io.FileReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.neo4j.model.AttributeModel;
import com.neo4j.model.AttributeParameterModel;
import com.neo4j.model.AttributeRegistrationModel;
import com.neo4j.repository.algorithm.AlgorithmRepository;
import com.neo4j.repository.attributeParameter.AttributeParameterRepository;
import com.neo4j.repository.attributeRegistration.attributeRegistrationRepository;
import com.neo4j.repository.attributes.AttributesRepository;
import com.neo4j.repository.attributes.AttributesRepository2;
import com.neo4j.repository.propertyValue.PropertyValueRepository;

/**
 * @author dev2
 *
 */
@Controller
public class AttributeController {
	
	private static String RELATION_JSON_FILE_LOCATION = "/resources/data/relation.json";	
	@Autowired
	AttributesRepository attributesRepository;
	
	@Autowired
	AttributesRepository2 attributesRepository2;
	
	@Autowired
	AttributeParameterRepository attributeParameterRepository;
	
	@Autowired
	attributeRegistrationRepository attributeRegistration;
	
	@Autowired
	PropertyValueRepository valueRepository;
	
	@Autowired
	private AlgorithmRepository algorithmRepository;
	
	@RequestMapping(value="/saveVocabulary", method=RequestMethod.POST)
	public ResponseEntity<?> saveVocabulary(@RequestBody AttributeModel attribute) {
		if(attributesRepository.findByTerm(attribute.getTerm()).size()>0){
			return new ResponseEntity<AttributeModel>(attribute,HttpStatus.CONFLICT);
		}
		else if(attribute.getTerm()!=null && attribute.getRelationId()!=null){
			attribute = attributesRepository.save(attribute);
			return new ResponseEntity<AttributeModel>(attribute,HttpStatus.OK);
		}
		else{
			return new ResponseEntity<Integer>(400,HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(value="/searchAttributesByTerm", method=RequestMethod.POST)
	public ResponseEntity<?> searchAttributesByTerm(@RequestBody String attributeTerm) {
		
		System.err.println("here");
		try {
			return new ResponseEntity<List<AttributeModel>>(attributesRepository.findByTerm(attributeTerm),HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<Integer>(400,HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(value="/getAttributes", method=RequestMethod.POST)
	public ResponseEntity<?> getAttributes(@RequestBody String attributeTerm) {
		System.out.println(attributeTerm);
		return new ResponseEntity<List<AttributeModel>>(attributesRepository.findByTerm(attributeTerm),HttpStatus.OK);
	}
	
	@RequestMapping(value="/getTermsByAttribute", method=RequestMethod.POST)
	public ResponseEntity<?> getTermsByAttribute(@RequestBody String mapping) {
		try {
			return new ResponseEntity<List<AttributeModel>>(this.attributesRepository.findByUserMapping(mapping),HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<Integer>(400,HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(value="/getParamByAttributeRegistation", method=RequestMethod.POST)
	public ResponseEntity<?> getParamByAttributeRegistation(@RequestBody Long attributeId) {
		try {
			/*return new ResponseEntity<Set<AttributeParameterModel>>(this.attributeParameterRepository.findByAttributeId(attributeId),HttpStatus.OK);*/
			Set<AttributeParameterModel> set=this.attributeParameterRepository.findByAttributeId(attributeId);
			Set<Long> setOfAttributeId=new HashSet<Long>();
			for(AttributeParameterModel obj : set){
				List<AttributeModel> attributeModelList=this.attributesRepository2.findByUserMapping(String.valueOf(obj.getId()));
				for (AttributeModel attributeModel : attributeModelList){
					setOfAttributeId.add(attributeModel.getId());
				}
			}
			List<AttributeModel> finalTerm=new ArrayList<>();
			for(Long AttributeId:setOfAttributeId){
				finalTerm.add(this.attributesRepository.findOne(AttributeId));
			}
			return new ResponseEntity<List<AttributeModel>>(finalTerm,HttpStatus.OK);	
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<Integer>(400,HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(value="/addAttribute", method= RequestMethod.POST)
	public ModelAndView addAttribute(@ModelAttribute AttributeRegistrationModel attributeRegistrationModel,HttpServletRequest request){
		 ModelAndView modelAndView=new ModelAndView("attributeUpload");
		try{
			JSONParser parser = new JSONParser();
			JSONArray object = (JSONArray) parser
					.parse(new FileReader(request.getServletContext().getRealPath("/") + RELATION_JSON_FILE_LOCATION));
			
			this.attributeRegistration.save(attributeRegistrationModel);
			modelAndView.addObject("relationList",object);
			modelAndView.addObject("algorithmList", this.algorithmRepository.findAll().as(Collection.class));
			modelAndView.addObject("attributeList", this.attributeRegistration.findAll().as(Collection.class));
			modelAndView.addObject("newAttributeRegistrationModel", attributeRegistrationModel);
			
			return modelAndView;
		} catch(Exception e){
			e.printStackTrace();
			return modelAndView;
		}
		
	}
	
}