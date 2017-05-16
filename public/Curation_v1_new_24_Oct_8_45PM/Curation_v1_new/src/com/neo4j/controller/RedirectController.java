package com.neo4j.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.neo4j.model.AlgorithmModel;
import com.neo4j.model.AttributeModel;
import com.neo4j.model.AttributeRegistrationModel;
import com.neo4j.model.RelationModel;
import com.neo4j.model.Status;
import com.neo4j.repository.algorithm.AlgorithmRepository;
import com.neo4j.repository.attributes.AttributesRepository;
import com.neo4j.repository.datasource.DataSourceRepository;
import com.neo4j.repository.relation.RelationRepository;

@Controller
public class RedirectController {

	private static String RELATION_JSON_FILE_LOCATION = "/resources/data/relation.json";
	private static String filename = "sampledata_report.csv";
	private static String filename1 = "sampledata_algorithm.csv";

	@Autowired
	AttributesRepository attributesRepository;

	@Autowired
	RelationRepository relationRepository;

	@Autowired
	DataSourceRepository dataSourceRepository;

	@Autowired
	AlgorithmRepository algorithmRepository;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView mainPage() {

		return new ModelAndView("redirect:/algorithmRegister");
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/addVocabulary", method = RequestMethod.GET)
	public ModelAndView addVocabulary() {
		ModelAndView model = new ModelAndView();
		model.setViewName("addVocabulary");
		model.addObject("relation", new RelationModel());
		model.addObject("attribute", new AttributeModel());
		model.addObject("list", relationRepository.findAll().as(Collection.class));
		return model;
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/viewAttributes", method = RequestMethod.GET)
	public ModelAndView attributes() {
		ModelAndView model = new ModelAndView("attributes");
		model.addObject("attributeList", attributesRepository.findAll().as(Collection.class));
		return model;
	}

	@RequestMapping(value = "/viewExcecution", method = RequestMethod.GET)
	public ModelAndView excecution() {
		return new ModelAndView("execution");
	}

	@RequestMapping(value = "/viewVisual", method = RequestMethod.GET)
	public ModelAndView visual() {
		return new ModelAndView("visual");
	}

	@RequestMapping(value = "/viweVocalbulary", method = RequestMethod.GET)
	public ModelAndView vocalbulary() {
		return new ModelAndView("viweVocalbulary");
	}

	@RequestMapping(value = "/dataSourceRegister", method = RequestMethod.GET)
	public ModelAndView dataSourceRegister() {
		return new ModelAndView("dataSourceRegister");
	}

	@RequestMapping(value = "/algorithmRegister", method = RequestMethod.GET)
	public ModelAndView algorithmRegister() {
		ModelAndView mv = new ModelAndView("algorithmRegister");
		mv.addObject("algorithm", new AlgorithmModel());
		return mv;
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/dataManagement", method = RequestMethod.GET)
	public ModelAndView dataManagement(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("dataManagement");
		try {
			JSONParser parser = new JSONParser();
			JSONArray object = (JSONArray) parser
					.parse(new FileReader(request.getServletContext().getRealPath("/") + RELATION_JSON_FILE_LOCATION));
			mv.addObject("algorithm", new AlgorithmModel());
			mv.addObject("attributeList", attributesRepository.findAll().as(Collection.class));
			mv.addObject("relationList", object);
			mv.addObject("dataSourceList", dataSourceRepository.findAll().as(Collection.class));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping(value = "/bulletChart", method = RequestMethod.GET)
	public ModelAndView bulletChart() {
		return new ModelAndView("bulletChart");
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/algorithmUpload1", method = RequestMethod.GET)
	public ModelAndView algorithmUpload() {
		ModelAndView modelAndView = new ModelAndView("algorithmUpload");
		modelAndView.addObject("algorithmList", this.algorithmRepository.findAll().as(ArrayList.class));
		return modelAndView;
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/algorithmAttribute", method = RequestMethod.GET)
	public ModelAndView algorithmAttribute() {
		ModelAndView modelAndView = new ModelAndView("algorithmAttribute");
		modelAndView.addObject("algorithmList", this.algorithmRepository.findAll().as(ArrayList.class));
		return modelAndView;
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/algorithmImageUpload", method = RequestMethod.GET)
	public ModelAndView algorithmImageUpload() {
		ModelAndView modelAndView = new ModelAndView("algorithmImageUpload");
		modelAndView.addObject("algorithmList", this.algorithmRepository.findAll().as(ArrayList.class));
		return modelAndView;
	}

	@RequestMapping(value = "/addCatalog", method = RequestMethod.GET)
	public ModelAndView addCatalog() {
		return new ModelAndView("api/add_catalog");
	}

	@RequestMapping(value = "/addGallery", method = RequestMethod.GET)
	public ModelAndView addGallery() {
		return new ModelAndView("api/add_gallery");
	}

	@RequestMapping(value = "/addObject", method = RequestMethod.GET)
	public ModelAndView addObject() {
		return new ModelAndView("api/add_object");
	}

	@RequestMapping(value = "/addObjectToCatalog", method = RequestMethod.GET)
	public ModelAndView addObjectToCatalog() {
		return new ModelAndView("api/add_object_to_catalog");
	}

	@RequestMapping(value = "/addPromoted", method = RequestMethod.GET)
	public ModelAndView addPromoted() {
		return new ModelAndView("api/add_promoted");
	}

	@RequestMapping(value = "/addUser", method = RequestMethod.GET)
	public ModelAndView addUser() {
		return new ModelAndView("api/add_user");
	}

	@RequestMapping(value = "/editCatalog", method = RequestMethod.GET)
	public ModelAndView editCatalog() {
		return new ModelAndView("api/editcatalog");
	}

	@RequestMapping(value = "/editUser", method = RequestMethod.GET)
	public ModelAndView editUser() {
		return new ModelAndView("api/edit_user");
	}

	@RequestMapping(value = "/ideate", method = RequestMethod.GET)
	public ModelAndView ideate() {
		return new ModelAndView("api/ideate");
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView apiIndex() {
		return new ModelAndView("api/index");
	}

	@RequestMapping(value = "/listOfCatalog", method = RequestMethod.GET)
	public ModelAndView listCatalog() {
		return new ModelAndView("api/list_of_catalog");
	}

	@RequestMapping(value = "/userCatalogs", method = RequestMethod.GET)
	public ModelAndView userCatalogs() {
		return new ModelAndView("api/list_of_catalogs_per_user");
	}

	@RequestMapping(value = "/contentList", method = RequestMethod.GET)
	public ModelAndView listOfContent() {
		return new ModelAndView("api/list_of_content");
	}

	@RequestMapping(value = "/objectList", method = RequestMethod.GET)
	public ModelAndView objects() {
		return new ModelAndView("api/list_of_object");
	}

	@RequestMapping(value = "/loginTest", method = RequestMethod.GET)
	public ModelAndView loginTest() {
		return new ModelAndView("api/login_test");
	}

	@RequestMapping(value = "/target", method = RequestMethod.GET)
	public ModelAndView target() {
		return new ModelAndView("api/target");
	}

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public ModelAndView test() {
		return new ModelAndView("api/test");
	}

	@RequestMapping(value = "/testAddGallery", method = RequestMethod.GET)
	public ModelAndView testAddGallery() {
		return new ModelAndView("api/test_add_gallery");
	}

	@RequestMapping(value = "/redshiftConfig", method = RequestMethod.GET)
	public ModelAndView redshiftConfig() {
		return new ModelAndView("redshiftConfiguration");
	}

	@RequestMapping(value = "/act", method = RequestMethod.GET)
	public ModelAndView act() throws IOException {
		return new ModelAndView("act");
		
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView home(HttpServletRequest request) throws FileNotFoundException, IOException, ParseException {
		ModelAndView mv = new ModelAndView("home");

		String path = request.getRealPath(request.getContextPath());
		String[] a = path.split(request.getContextPath());

		System.out.println("**** " + a[0] + "/" + request.getContextPath() + "/resources/data/" + filename);
		String filePath = a[0] + "/" + request.getContextPath() + "/resources/data/" + filename;
		String line = "";
		String[] arry = null;
		BufferedReader bufferedReader = new BufferedReader(new FileReader(new File(filePath)));

		Map<String, String> spendSummary = new HashMap<>();
		while ((line = bufferedReader.readLine()) != null) {
			arry = line.split(",");

			if (arry[0].equals("2")) {

				String label = arry[4].trim();
				String dollar = arry[5].trim();

				spendSummary.put(label, dollar);

			}
		}
		bufferedReader.close();
		mv.addObject("spendSummary", spendSummary);

		return mv;
	}

	@RequestMapping(value = "/homeChart", method = RequestMethod.GET)
	public ResponseEntity<?> homeChart(HttpServletRequest request)
			throws FileNotFoundException, IOException, ParseException {

		ModelAndView mv = new ModelAndView("home");
		Map<String, List<Map<String, String>>> mainMap = new HashMap<String, List<Map<String, String>>>();

		String path = request.getRealPath(request.getContextPath());
		String[] a = path.split(request.getContextPath());

		System.out.println("**** " + a[0] + "/" + request.getContextPath() + "/resources/data/" + filename);
		String filePath = a[0] + "/" + request.getContextPath() + "/resources/data/" + filename;
		String line = "";
		String[] arry = null;
		BufferedReader bufferedReader = new BufferedReader(new FileReader(new File(filePath)));

		Map<String, String> revenuePredictionsMap = new HashMap<>();
		List<Map<String, String>> revenuePredictionslist = new ArrayList<Map<String, String>>();
		List<Map<String, String>> channellist = new ArrayList<Map<String, String>>();
		List<Map<String, String>> shopperActivitieslist = new ArrayList<Map<String, String>>();
		while ((line = bufferedReader.readLine()) != null) {
			arry = line.split(",");

			if (arry[0].equals("1")) {

				String Label = arry[1].trim();
				String Score = arry[2].trim();
				String Month = arry[3].trim();
				String[] ScoreSplit = Score.split("/");

				Map<String, String> recordSet1Map = new HashMap<>();
				recordSet1Map.put("fromA", ScoreSplit[0]);
				recordSet1Map.put("toA", ScoreSplit[1]);
				recordSet1Map.put("day", Month);
				revenuePredictionslist.add(recordSet1Map);
			}

			if (arry[0].equals("3")) {

				String label = arry[4].trim();
				String dollars = arry[5].trim();
				String parcent = arry[6].trim();

				Map<String, String> recordSet3Map = new HashMap<>();
				recordSet3Map.put("category", label);
				recordSet3Map.put("value", parcent);
				channellist.add(recordSet3Map);
			}

			if (arry[0].equals("4")) {

				String label = arry[4].trim();
				String dollars = arry[5].trim();
				String parcent = arry[6].trim();

				Map<String, String> recordSet4Map = new HashMap<>();
				recordSet4Map.put("category", label);
				recordSet4Map.put("value", parcent);
				shopperActivitieslist.add(recordSet4Map);
			}

		}
		bufferedReader.close();
		mainMap.put("RecordSet1", revenuePredictionslist);
		mainMap.put("RecordSet3", channellist);
		mainMap.put("RecordSet4", shopperActivitieslist);

		return new ResponseEntity<Map<String, List<Map<String, String>>>>(mainMap, HttpStatus.OK);
	}

	@RequestMapping(value = "/status", method = RequestMethod.GET)
	public ModelAndView status(HttpServletRequest request) throws FileNotFoundException, IOException, ParseException {
		ModelAndView mv = new ModelAndView("status");

		String path = request.getRealPath(request.getContextPath());
		String[] a = path.split(request.getContextPath());

		System.out.println("**** " + a[0] + "/" + request.getContextPath() + "/resources/data/" + filename1);
		String filePath = a[0] + "/" + request.getContextPath() + "/resources/data/" + filename1;
		String line = "";
		String[] arry = null;
		BufferedReader bufferedReader = new BufferedReader(new FileReader(new File(filePath)));

		List<Status> statusTemp = new ArrayList<Status>();
		Status statusModel;
		while ((line = bufferedReader.readLine()) != null) {
			arry = line.split(",");
			statusModel = new Status();
			if (arry[4].equals("1")) {
				String algorithemId = arry[3].trim();
				String instanceId = arry[26].trim();
				String instanceType = arry[27].trim();
				String state = arry[28].trim();
				String status = arry[29].trim();
				String alarm = arry[30].trim();
				String use = arry[31].trim();

				statusModel.setAlgorithemId(algorithemId);
				statusModel.setInstanceId(instanceId);
				statusModel.setInstanceType(instanceType);
				statusModel.setState(state);
				statusModel.setStatus(status);
				statusModel.setUse(use);
				statusModel.setAlarm(alarm);

				statusTemp.add(statusModel);
			}
		}
		bufferedReader.close();

		mv.addObject("statusPrescription", statusTemp);

		return mv;
	}

	@RequestMapping(value = "/billing", method = RequestMethod.GET)
	public ModelAndView billing(HttpServletRequest request) throws FileNotFoundException, IOException, ParseException {
		ModelAndView mv = new ModelAndView("billing");

		String path = request.getRealPath(request.getContextPath());
		String[] a = path.split(request.getContextPath());

		System.out.println("**** " + a[0] + "/" + request.getContextPath() + "/resources/data/" + filename1);
		String filePath = a[0] + "/" + request.getContextPath() + "/resources/data/" + filename1;
		String line = "";
		String[] arry = null;
		BufferedReader bufferedReader = new BufferedReader(new FileReader(new File(filePath)));
		Status statusModel;
		List<Status> statusTemp = new ArrayList<Status>();
		HashSet<String> statusSet=new HashSet<>();
		Map<String, String> spendSummary = new HashMap<>();
		Map<String,HashSet<String>> setMap = new HashMap<>();
		while ((line = bufferedReader.readLine()) != null) {
			arry = line.split(",");
			statusModel = new Status();
			if (arry[4].equals("1")) {

				String algorithmId = arry[3].trim();
				String costPerDate = arry[25].trim();
				String monthtoDate = arry[19].trim();
				String monthtoDateHours = arry[21].trim();
				String datetoEnd = arry[20].trim();
				String datetoEndHours = arry[22].trim();
				String lastMonth = arry[32].trim();
				String thisMonth = arry[33].trim();
				String predictions = arry[34].trim();

				
				statusSet.add(predictions);
				statusSet.add(lastMonth);
				statusSet.add(thisMonth);
				
				
				statusModel.setAlgorithemId(algorithmId);
				statusModel.setMonthtoDate(monthtoDate);
				statusModel.setMonthtoDateHours(monthtoDateHours);
				statusModel.setDatetoEnd(datetoEnd);
				statusModel.setDatetoEndHours(datetoEndHours);
				statusModel.setLastMonth(lastMonth);
				statusModel.setThisMonth(thisMonth);
				statusModel.setPredictions(predictions);

				statusTemp.add(statusModel);

				spendSummary.put(algorithmId, costPerDate);
				

			}
		}
		bufferedReader.close();
		mv.addObject("spendSummary", spendSummary);
		mv.addObject("status", statusTemp);
		mv.addObject("statusSet", statusSet);

		return mv;
	}

	@RequestMapping(value = "/billingchart", method = RequestMethod.GET)
	public ResponseEntity<List<Map<String, String>>> billingchart(HttpServletRequest request)
			throws FileNotFoundException, IOException, ParseException {
		ModelAndView mv = new ModelAndView("billing");

		String path = request.getRealPath(request.getContextPath());
		String[] a = path.split(request.getContextPath());

		System.out.println("**** " + a[0] + "/" + request.getContextPath() + "/resources/data/" + filename1);
		String filePath = a[0] + "/" + request.getContextPath() + "/resources/data/" + filename1;
		String line = "";
		String[] arry = null;
		BufferedReader bufferedReader = new BufferedReader(new FileReader(new File(filePath)));

		List<Map<String, String>> revenuePredictionslist = new ArrayList<Map<String, String>>();

		while ((line = bufferedReader.readLine()) != null) {
			arry = line.split(",");

			if (arry[4].equals("1")) {

				String algorithmId = arry[3].trim();
				String costPerDate = arry[25].trim();
				costPerDate=costPerDate.replace("$", "");

				Map<String, String> recordSet1Map = new HashMap<>();
				recordSet1Map.put("category", algorithmId);
				recordSet1Map.put("value", costPerDate);
				revenuePredictionslist.add(recordSet1Map);
			}
		}
		bufferedReader.close();

		return new ResponseEntity<List<Map<String, String>>>(revenuePredictionslist, HttpStatus.OK);

	}

	@RequestMapping(value = "/play_opportunity", method = RequestMethod.GET)
	public ModelAndView play_opportunity() {
		return new ModelAndView("play_opportunity");
	}

	@RequestMapping(value = "/attribution", method = RequestMethod.GET)
	public ModelAndView attribution(HttpServletRequest request)
			throws FileNotFoundException, IOException, ParseException {
		ModelAndView mv = new ModelAndView("attribution");

		String path = request.getRealPath(request.getContextPath());
		String[] a = path.split(request.getContextPath());

		System.out.println("**** " + a[0] + "/" + request.getContextPath() + "/resources/data/" + filename1);
		String filePath = a[0] + "/" + request.getContextPath() + "/resources/data/" + filename1;
		String line = "";
		String[] arry = null;

		Status statusModel;
		List<Status> statusTemp = new ArrayList<Status>();
		// Map<String,String> spendSummary = new HashMap<>();

		BufferedReader bufferedReader = new BufferedReader(new FileReader(filePath));
		Set<String> setLable = new HashSet<>();
		while ((line = bufferedReader.readLine()) != null) {
			arry = line.split(",");
			statusModel = new Status();

			if (arry[4].equals("1")) {
				String label = new String();
				String algorithemId = new String();
				String abAvg = new String();
				String belAvg = new String();
				String avg = new String();
				String score = new String();
				String compsore = new String();

				if (!arry[7].trim().isEmpty()) {
					label = arry[7].trim();
					setLable.add(label);
					algorithemId = arry[3].trim();
					belAvg = arry[14].trim();
					abAvg = arry[15].trim();
					avg = arry[16].trim();
					score = arry[17].trim();
					compsore = arry[18].trim();
				}

				statusModel.setLabel(label);
				statusModel.setAlgorithemId(algorithemId);
				statusModel.setBelAvg(belAvg);
				statusModel.setAbAvg(abAvg);
				statusModel.setAvg(avg);
				statusModel.setScore(score);
				statusModel.setCompsore(compsore);

				statusTemp.add(statusModel);

			}

		}

		bufferedReader.close();
		mv.addObject("score", statusTemp);
		mv.addObject("setLabel", setLable);
		return mv;

	}

	@RequestMapping(value = "/dataSourceMApping", method = RequestMethod.GET)
	public ModelAndView dataSourceMApping() {
		return new ModelAndView("dataSourceMApping");
	}

	@RequestMapping(value = "/loadDataManagement", method = RequestMethod.GET)
	public ModelAndView loadDataManagement(HttpServletRequest request)
			throws FileNotFoundException, IOException, ParseException {
		ModelAndView mv = new ModelAndView();
		JSONParser parser = new JSONParser();
		JSONArray object = (JSONArray) parser
				.parse(new FileReader(request.getServletContext().getRealPath("/") + RELATION_JSON_FILE_LOCATION));
		mv.addObject("algorithm", new AlgorithmModel());
		mv.addObject("attributeList", attributesRepository.findAll().as(Collection.class));
		mv.addObject("relationList", object);
		mv.setViewName("loadDataManagement");
		mv.addObject("dataSourceList", dataSourceRepository.findAll().as(Collection.class));
		return mv;
	}

	@RequestMapping(value = "/newPage", method = RequestMethod.GET)
	public ModelAndView newPage() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("dataSourceList", dataSourceRepository.findAll().as(Collection.class));
		mv.setViewName("newPage");
		return mv;
	}

	@RequestMapping(value = "/algorithmDiscover", method = RequestMethod.GET)
	public ModelAndView algorithmDiscover(@RequestParam String  algorithm) {
		ModelAndView modelAndView = new ModelAndView("algorithmDiscover");
		modelAndView.addObject("algorithmList", this.algorithmRepository.findAll().as(ArrayList.class));
		return modelAndView;
	}

	@RequestMapping(value = "/attributeRegistration", method = RequestMethod.GET)
	public ModelAndView attributeRegistration() {
		ModelAndView mv = new ModelAndView("attributeRegistration");
		mv.addObject("attribute", new AttributeRegistrationModel());
		return mv;
	}

	@RequestMapping(value = "/attributeUpload", method = RequestMethod.GET)
	public ModelAndView attributeUpload() {
		return new ModelAndView("attributeUpload");
	}

	@RequestMapping(value = "/attributeDiscover", method = RequestMethod.GET)
	public ModelAndView attributeDiscover() {
		return new ModelAndView("attributeDiscover");
	}

}