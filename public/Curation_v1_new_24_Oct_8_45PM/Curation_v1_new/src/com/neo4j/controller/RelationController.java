package com.neo4j.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.neo4j.model.RelationModel;
import com.neo4j.repository.relation.RelationRepository;

@Controller
public class RelationController {
	
	@Autowired
	RelationRepository relationRepository;
	
	@RequestMapping(value="/addRelation", method=RequestMethod.POST)
	public ModelAndView addRelation(@ModelAttribute RelationModel model) {
		relationRepository.save(model);
		return new ModelAndView("redirect:/addVocabulary");
	}
	
}