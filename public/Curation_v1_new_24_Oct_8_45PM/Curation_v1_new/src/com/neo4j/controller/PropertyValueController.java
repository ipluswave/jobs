package com.neo4j.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.neo4j.model.PropertyValueModel;
import com.neo4j.repository.propertyValue.PropertyValueRepository;

@Controller
public class PropertyValueController {
	
	@Autowired
	private PropertyValueRepository valueRepository;
	
	@RequestMapping(value="/saveProperty", method=RequestMethod.POST)
	public ModelAndView saveProperty(@ModelAttribute PropertyValueModel model) {
		valueRepository.save(model);
		return new ModelAndView("redirect:/addPropertyValue");
	}
}