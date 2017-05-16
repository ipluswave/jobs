package com.neo4j.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.neo4j.model.AlgorithmMappingModel;
import com.neo4j.model.AlgorithmModel;
import com.neo4j.model.AttributeRegistrationModel;
import com.neo4j.model.DataSourceModel;
import com.neo4j.model.UserMappingAttributeModel;
import com.neo4j.model.UserMappingModel;
import com.neo4j.repository.AlgorithmMapping.AlgorithmMappingRepository;
import com.neo4j.repository.algorithm.AlgorithmRepository;
import com.neo4j.repository.datasource.DataSourceRepository;
import com.neo4j.repository.userAttributeMapping.UserMappingAttributeRepository;
import com.neo4j.repository.userMapping.UserMappingRepository;

@RestController
public class DataManagementController {

	@Autowired
	private DataSourceRepository dataSourceRepository;
	
	@Autowired
	private UserMappingRepository mappingRepository;
	
	@Autowired
	private UserMappingAttributeRepository userMappingAttributeRepository;
	
	@Autowired
	private AlgorithmMappingRepository algorithmMappingRepository;
	
	@Autowired 
	private AlgorithmRepository algorithmRepository;
	
	@RequestMapping(value = "/parseCSV", method = RequestMethod.POST)
	public ResponseEntity<?> parseCSV(HttpServletRequest request, MultipartHttpServletRequest multipartRequest) {
		try {
			String dataSourceId = multipartRequest.getParameter("dataSourceId");
			System.out.println("dataSourceId :: "+dataSourceId);
			MultipartFile file = multipartRequest.getFile("document");
			if(file.getContentType().equals("text/csv")){
				File file2 = File.createTempFile(file.getName(), "tmp");
				file.transferTo(file2);
				BufferedReader br = new BufferedReader(new FileReader(file2));
				String line = br.readLine().replaceAll("\"", "");
				Set<String> fields = new HashSet<String>();
				for(String field : line.split("\t")){
					fields.add(field);
				}
				br.close();
				DataSourceModel sourceModel = dataSourceRepository.findOne(Long.parseLong(dataSourceId));
				sourceModel.setFields(fields);
				dataSourceRepository.save(sourceModel);
				file2.deleteOnExit();
				return new ResponseEntity<Set<String>>(sourceModel.getFields(), HttpStatus.OK);
			}
			else{
				return new ResponseEntity<Integer>(415, HttpStatus.OK);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<Integer>(400, HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(value = "/saveUserMappings", method = RequestMethod.POST)
	public ResponseEntity<?> saveUserMappings(@RequestBody UserMappingModel[] userMappings ,HttpServletRequest request) {
		try {
			for(UserMappingModel model : userMappings){
				mappingRepository.save(model);
			}
			return new ResponseEntity<Integer>(200, HttpStatus.OK);
			
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<Integer>(400, HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(value = "/algorithmToAlgorithmMapping", method = RequestMethod.POST)
	public ResponseEntity<?> algorithmMappings(@RequestBody AlgorithmModel[] algorithmModels ,HttpServletRequest request) {
		try {	int lastIndex=(algorithmModels.length - 1);
				Set<AlgorithmModel> setOfAlgo=new HashSet<AlgorithmModel>();
				
				AlgorithmMappingModel mappingModel=new AlgorithmMappingModel();
				
				for(AlgorithmModel model : algorithmModels){
					if((algorithmModels[lastIndex].getId()).equals(model.getId())){
						AlgorithmModel findInfoAlgorithm1=this.algorithmRepository.findOne(model.getId());
						mappingModel.setAlgorithmId(findInfoAlgorithm1.getId());
						mappingModel.setAlgorithmName(findInfoAlgorithm1.getAlgorithmName());
					}else{
						AlgorithmModel findInfoAlgorithm=this.algorithmRepository.findOne(model.getId());
						setOfAlgo.add(findInfoAlgorithm);
						
					}
				}
				
				System.out.println(setOfAlgo.size());
				mappingModel.setAlgorithmMapping(setOfAlgo);
				
				this.algorithmMappingRepository.save(mappingModel);
				//return new ResponseEntity<List<AlgorithmMappingModel>>(this.algorithmMappingRepository.findAll().as(ArrayList.class),HttpStatus.OK);
				return new ResponseEntity<Integer>(200, HttpStatus.OK);
		} catch (Exception e) {
			System.out.println("into save user mapping");
			e.printStackTrace();
			return new ResponseEntity<Integer>(400, HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(value = "/saveUserMappingsAttribute", method = RequestMethod.POST)
	public ResponseEntity<?> saveUserMappingsAttribute(@RequestBody UserMappingAttributeModel[] userMappings ,HttpServletRequest request) {
		try {
			for(UserMappingAttributeModel model : userMappings){
				userMappingAttributeRepository.save(model);
			}
			return new ResponseEntity<Integer>(200, HttpStatus.OK);
			
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<Integer>(400, HttpStatus.BAD_REQUEST);
		}
	}
}