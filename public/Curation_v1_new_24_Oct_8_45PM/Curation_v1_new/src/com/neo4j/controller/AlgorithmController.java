package com.neo4j.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.rosuda.REngine.Rserve.RConnection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.neo4j.model.AlgorithmAttributeRegistrationModel;
import com.neo4j.model.AlgorithmModel;
import com.neo4j.model.AlgorithmParameterModel;
import com.neo4j.model.PropertyValueModel;
import com.neo4j.model.RedShiftConfigurationModel;
import com.neo4j.repository.algorithm.AlgorithmRepository;
import com.neo4j.repository.algorithmAttributeRegistration.AlgorithmAttributeRegistrationRepository;
import com.neo4j.repository.algorithmAttributeRegistration.AlgorithmAttributeRegistrationRepository2;
import com.neo4j.repository.algorithmParameter.AlgorithmParameterRepository;
import com.neo4j.repository.attributes.AttributesRepository;
import com.neo4j.repository.datasource.DataSourceRepository;
import com.neo4j.repository.propertyValue.PropertyValueRepository;
import com.neo4j.repository.redshiftConfiguration.RedshiftConfigurationRepository;

import logic.main.Step_2_RedshiftFetch;
import vo.ymal.RedShiftConfiguration;
import vo.ymal.RedShiftTableVO;
import vo.ymal.YAMLAlgorithmVO;
/**
 * 
 * @author Lavesh Katariya
 * @Controller - Algorithm controller
 *
 */
@Controller
public class AlgorithmController {
	
	private static String RELATION_JSON_FILE_LOCATION = "/resources/data/relation.json";

	@Autowired
	AlgorithmRepository algorithmRepository;
	
	@Autowired
	AttributesRepository attributesRepository;
	
	@Autowired
	PropertyValueRepository valueRepository;
	
	@Autowired
	RedshiftConfigurationRepository configurationRepository;
	
	@Autowired
	AlgorithmParameterRepository algorithmParameterRepository;
	
	@Autowired
	AlgorithmAttributeRegistrationRepository algorithmAttributeRegistrationRepository;
	
	@Autowired
	private AlgorithmAttributeRegistrationRepository2 algorithmAttributeRegistrationRepository2;
	
	@Autowired
	DataSourceRepository dataSourceRepository;
	
	private AlgorithmModel algorithmModel;
	
	@Autowired
	

	private static Logger logger = Logger.getLogger("AlgorithmController");

	/**
	 * @method execute algorithm
	 * @param request
	 * @return
	 * @Version 1.0
	 */

	/**
	 * 
	 * @param algorithmId
	 * @return message
	 */
	@RequestMapping(value = "/executeAlgorithm", method = RequestMethod.POST)
	public ResponseEntity<?> executeAlgorithm(HttpServletRequest request, MultipartHttpServletRequest multipartRequest) {
		try {
			String algorithmId = multipartRequest.getParameter("algorithmId");
			System.out.println("algorithmId :: "+algorithmId);
			MultipartFile file = multipartRequest.getFile("document");
			System.out.println("file "+file.getName());
			String config = multipartRequest.getParameter("configuration");
			System.out.println("config :: "+config);
			String tableName = multipartRequest.getParameter("table");
			System.out.println("tableName :: "+tableName);
			
			RedShiftConfiguration configurationModel = new ObjectMapper().readValue(config, RedShiftConfiguration.class);
			
			String path1 = request.getSession().getServletContext().getRealPath("/") + "curation_upload";
			path1 = request.getServletContext().getRealPath("") + "/curation_upload";
			algorithmModel = this.algorithmRepository.findOne(Long.parseLong(algorithmId));
			algorithmModel.setParameters(algorithmParameterRepository.findByAlgorithmId(Long.parseLong(algorithmId)));
			if(file.getContentType().equals("text/csv")){
				File file2 = File.createTempFile(file.getName(), "tmp");
				file.transferTo(file2);
				executeAlgorithm(algorithmModel ,path1, file2, configurationModel, tableName);
				file2.deleteOnExit();
				return new ResponseEntity<Integer>(200, HttpStatus.OK);
			}
			else{
				return new ResponseEntity<Integer>(415, HttpStatus.OK);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<Integer>(500, HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/addAlgorithm", method = RequestMethod.POST)
	public ModelAndView addAlgorithm(@ModelAttribute AlgorithmModel algorithmModel, HttpServletRequest request) {
		ModelAndView modelAndView;
		try {
			modelAndView = new ModelAndView("algorithmImageUpload");
			this.algorithmRepository.save(algorithmModel);
			modelAndView.addObject("algorithmList", this.algorithmRepository.findAll().as(Collection.class));
			modelAndView.addObject("newAlgorithm", algorithmModel);
			return modelAndView;
		} catch (Exception e) {
			e.printStackTrace();
			modelAndView = new ModelAndView();
			return modelAndView;
		}
	}
	
	@RequestMapping(value = "/saveConfiguration", method = RequestMethod.POST)
	public ResponseEntity<?> saveConfiguration(@RequestBody RedShiftConfigurationModel configurationModel, HttpServletRequest request) {
		try {
			this.configurationRepository.save(configurationModel);
			return new ResponseEntity<Integer>(200,HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<Integer>(400,HttpStatus.BAD_REQUEST);
		}
	}
	
	
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/addAlgorithmImage", method = RequestMethod.POST)
	public ModelAndView addAlgorithmImage(HttpServletRequest request, MultipartHttpServletRequest multipartRequest) {
		ModelAndView modelAndView;
		try {
			MultipartFile file = multipartRequest.getFile("doc");
			String algorithmId = multipartRequest.getParameter("algorithmSource");
			AlgorithmModel algorithmModel = this.algorithmRepository.findOne(Long.parseLong(algorithmId));
			algorithmModel.setFileName(file.getName());
			algorithmModel.setOriginalFileName(file.getOriginalFilename());
			PropertyValueModel propertyValueModel = this.valueRepository.getByPropertyKey("r_script_upload_dir");
			String dirPath = propertyValueModel.getPropertyKey();
			File dir = new File("/home/dev/"+dirPath);
			System.out.println("dir: "+dir.toString());
			if(!dir.exists()){
				logger.info("Inside directory creation.");
				boolean created = dir.mkdirs();
				logger.info("Is directory created ? " + created);
			}
			else{
				logger.info("Directory already exists.");
			}
			if(algorithmModel.getFilePath()!=null){
				File oldFile = new File(algorithmModel.getFilePath());
				if(oldFile.exists()){
					FileUtils.deleteDirectory(oldFile.getParentFile());
				}
				else{
					logger.info("Directory doesn't exists");
				}
			}
			else{
				logger.info("No file uploaded yet for selected algorithm.");
			}
			File rScriptFile = new File("/home/dev13/"+dirPath + "/" + file.getOriginalFilename());
			file.transferTo(rScriptFile);
			algorithmModel.setFilePath(rScriptFile.getAbsolutePath());
			this.algorithmRepository.save(algorithmModel);
			modelAndView = new ModelAndView("algorithmUpload");
			modelAndView.addObject("algorithmList", this.algorithmRepository.findAll().as(Collection.class));
			modelAndView.addObject("newAlgorithm", algorithmModel);
			return modelAndView;
		} catch (Exception e) {
			e.printStackTrace();
			logger.info("Exception while adding algorithm. -> " + e);
			modelAndView = new ModelAndView();
			return modelAndView;
		}
	}
	
	@RequestMapping(value = "/parseParameters", method = RequestMethod.POST)
	public ResponseEntity<?> parseParameters(HttpServletRequest request, MultipartHttpServletRequest multipartRequest) {
		try {
			String algorithmId = multipartRequest.getParameter("algorithmId");
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
				AlgorithmModel algorithmModel = algorithmRepository.findOne(Long.parseLong(algorithmId));
				//algorithmModel.setParameters(fields);
				algorithmRepository.save(algorithmModel);
				file2.deleteOnExit();
				return new ResponseEntity<Set<AlgorithmParameterModel>>(algorithmModel.getParameters(), HttpStatus.OK);
			}
			else{
				return new ResponseEntity<Integer>(415, HttpStatus.OK);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<Integer>(400, HttpStatus.BAD_REQUEST);
		}
	}

	@RequestMapping(value="/getAlgorithmsByAttribute", method=RequestMethod.POST)
	public ResponseEntity<?> getAlgorithmsByAttribute(@RequestBody String attributeName) {
		try {
			List<AlgorithmAttributeRegistrationModel> attributelist=this.algorithmAttributeRegistrationRepository2.findByAttributeName(attributeName);
			List<AlgorithmModel> algoList=new ArrayList<AlgorithmModel>();
			for(AlgorithmAttributeRegistrationModel algorithmAttributeRegistrationModel : attributelist){
				AlgorithmModel algorithmModel=this.algorithmRepository.findOne(algorithmAttributeRegistrationModel.getAlgorithmId());
				algoList.add(algorithmModel);
			}
			
			return new ResponseEntity<List<AlgorithmModel>>(algoList,HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<Integer>(400,HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(value="/getAlgorithmById", method=RequestMethod.POST)
	public ResponseEntity<?> getAlgorithmById(@RequestBody Long algorithmId) {
		try {
			return new ResponseEntity<AlgorithmModel>(this.algorithmRepository.findOne(algorithmId),HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<Integer>(400,HttpStatus.BAD_REQUEST);
		}
	}

	public static String getFileExtension(String fileName) {
		if (fileName.lastIndexOf(".") != -1 && fileName.lastIndexOf(".") != 0)
			return fileName.substring(fileName.lastIndexOf(".") + 1);
		else
			return "";
	}

	private void executeAlgorithm(AlgorithmModel algorithmModel,String path, File clickStreamFile, RedShiftConfiguration configurationModel, String tableName) throws Exception {

		try {

			File current_folder_path = check_dir(new File(path));
			logger.info(current_folder_path.getAbsolutePath());

			//String yaml_file_path = path + "/yaml/Algorithm.yaml";
			//logger.info(yaml_file_path);

			//if (current_folder_path != null) {

				logger.info("Current Path: " + current_folder_path.getAbsolutePath());

				/*
				 * YAML Processing here
				 */

				//File ymal_input = new File(yaml_file_path);
				//System.out.println("ymal_input: "+ymal_input.getAbsolutePath());
				//logger.info(ymal_input.getAbsolutePath());
				/**
				 * @method execute algorithm
				 * @param request
				 * @return
				 * @Version 1.0
				 */
				//Step_1_YmalParsing step_1_YMAL_Run = new Step_1_YmalParsing();
				
				logger.info("Step 1");
				YAMLAlgorithmVO ymalAlgorithmVO = new YAMLAlgorithmVO();//step_1_YMAL_Run.RunYAMLProcessing(ymal_input, current_folder_path);
				ymalAlgorithmVO.setInputParametersVOs(algorithmModel.getParameters());

				/*
				 * Processing Red-shift Data for R Processing here
				 */

				Step_2_RedshiftFetch redshiftFetch = new Step_2_RedshiftFetch();
				logger.info("Step 2");
				File file_path = new File(current_folder_path.getAbsolutePath() + "/redshift");
				file_path.mkdir();
				logger.info(file_path.getAbsolutePath());
				RedShiftTableVO shiftTableVO = new RedShiftTableVO();
				shiftTableVO.setTableName(tableName);
				ymalAlgorithmVO.setRedShiftConfiguration(configurationModel);
				RedShiftTableVO redShiftTableVOs = redshiftFetch.runRunRedshiftFetch(ymalAlgorithmVO, file_path, shiftTableVO);
				ymalAlgorithmVO.setRedShiftTableVOs(redShiftTableVOs);
				logger.info("executed");
				/*
				 * Processing Data Preparation here
				 */

				// Step_3_DataPreparation step_3_DataPreparation = new
				// Step_3_DataPreparation();
				// R r = step_3_DataPreparation.dataPrepation(ymalAlgorithmVO,
				// clickstreamData_file, clickstreamData_delimiter,
				// current_folder_path);

				// ymalAlgorithmVO.setR(r);

				/*
				 * R Script call
				 */
				RConnection connection = null;
			    System.out.println("Creating connection.");
		        connection = new RConnection();
		        System.out.println("Connection completed.");
		        // Send file to be executed
		        System.out.println("clickStreamFile.getAbsolutePath()  ---> " + clickStreamFile.getAbsolutePath());
		        connection.eval("data<-read.csv(file = '"+clickStreamFile.getAbsolutePath()+"',sep = \"\t\")");
		        // Read input file
		        System.out.println(algorithmModel.getFilePath());
		        connection.eval("source('"+algorithmModel.getFilePath()+"')");
		        System.out.println("Executed");
		        
		        


		} catch (Exception exception) {
			logger.info("exception : " + exception.toString());
			exception.printStackTrace();
			throw exception;
		}

	}

	private static File check_dir(File output_folder_path) throws Exception {

		try {

			if (output_folder_path.exists())
				output_folder_path.delete();

			output_folder_path.mkdir();

			File output_folder = new File(output_folder_path.getAbsolutePath() + "/"
					+ new SimpleDateFormat("MM-dd-yyy_HH_MM_SS").format(new Date()) + "/");
			output_folder.mkdir();

			return output_folder;
		} catch (Exception exception) {
			throw exception;
		}

	}

	@SuppressWarnings({ "resource", "unused" })
	private static void copyFileUsingChannel(File source, File dest) throws IOException {

		FileChannel sourceChannel = null;
		FileChannel destChannel = null;
		try {
			sourceChannel = new FileInputStream(source).getChannel();
			destChannel = new FileOutputStream(dest).getChannel();
			destChannel.transferFrom(sourceChannel, 0, sourceChannel.size());
		} catch (Exception exception) {
			exception.printStackTrace();
		} finally {
			sourceChannel.close();
			destChannel.close();
		}
	}

	@RequestMapping(value = "/searchAlgorithmByVocabulary", method = RequestMethod.POST)
	public ModelAndView searchAlgorithmByVocabulary(@RequestParam String attribute) {
		attribute = attribute.replace(",", " XOR attribute.term=");
		System.out.println("attribute :::: " + attribute);
		List<AlgorithmModel> list = algorithmRepository.findAlgorithmByTerm(attribute);
		ModelAndView view = new ModelAndView("attributes");
		view.addObject("algorithms", list);
		return view;
	}

	public AlgorithmModel getAlgorithmModel() {
		return algorithmModel;
	}

	public void setAlgorithmModel(AlgorithmModel algorithmModel) {
		this.algorithmModel = algorithmModel;
	}
}