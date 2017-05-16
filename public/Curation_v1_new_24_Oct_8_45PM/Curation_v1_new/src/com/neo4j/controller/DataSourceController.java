package com.neo4j.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.neo4j.model.DataSourceModel;
import com.neo4j.model.RedShiftConfigurationModel;
import com.neo4j.repository.datasource.DataSourceRepository;
import com.neo4j.repository.redshiftConfiguration.RedshiftConfigurationRepository;

@RestController
public class DataSourceController {

	@Autowired
	private DataSourceRepository dataSourceRepository;
		
	@Autowired 
	private RedshiftConfigurationRepository redshiftConfigurationRepository;
	
	@RequestMapping(value = "/saveDataSource", method = RequestMethod.POST)
	public ResponseEntity<?> createDataSource(HttpServletRequest request, @RequestBody DataSourceModel dataSource) {
		try {
			if(dataSourceRepository.findBySourceName(dataSource.getSourceName()).size()>0){
				return new ResponseEntity<Integer>(409, HttpStatus.CONFLICT);
			}
			else{
				dataSourceRepository.save(dataSource);
			}
			return new ResponseEntity<Integer>(200, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<Integer>(400, HttpStatus.BAD_REQUEST);
		}
	}
	@RequestMapping(value = "/saveDriver", method = RequestMethod.POST)
	public ResponseEntity<?> saveDriver(HttpServletRequest request, @RequestBody RedShiftConfigurationModel redShiftConfigurationModel) {
		try {
			if(redshiftConfigurationRepository.findByUrl(redShiftConfigurationModel.getUrl()).size()>0){
				redshiftConfigurationRepository.save(redShiftConfigurationModel);
			}
			else{
				redshiftConfigurationRepository.save(redShiftConfigurationModel);
			}
			return new ResponseEntity<Integer>(200, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<Integer>(400, HttpStatus.BAD_REQUEST);
		}
	}
	@RequestMapping(value = "/uploadDataSource", method = RequestMethod.POST)
	public ResponseEntity<?> uploadDataSource(HttpServletRequest request, @RequestBody DataSourceModel dataSource, MultipartHttpServletRequest multipartRequest) {
		try {
			if(dataSourceRepository.findBySourceName(dataSource.getSourceName()).size()>0){
				return new ResponseEntity<Integer>(409, HttpStatus.CONFLICT);
			}
			else{
				dataSourceRepository.save(dataSource);
			}
			return new ResponseEntity<Integer>(200, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<Integer>(400, HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(value = "/SearchDataSource", method = RequestMethod.POST)
	public ResponseEntity<?> SearchDataSource(HttpServletRequest request,@RequestBody String attributeName) {
		System.out.println("in COntroller");
		try {
				return new ResponseEntity<List<DataSourceModel>>(this.dataSourceRepository.findBysourceName(attributeName),HttpStatus.OK);
		
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<Integer>(400, HttpStatus.BAD_REQUEST);
		}
	}
}