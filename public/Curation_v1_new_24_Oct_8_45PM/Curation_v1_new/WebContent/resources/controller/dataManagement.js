var terms;
var fieldMappings = [];
var checkedAttribute = [];
var checkedAlgorithm;
var fields = [];
$("#menu-toggle").click(function(e) {
	e.preventDefault();
	$("#wrapper").toggleClass("toggled");
});
jQuery(document).ready(
		function($) {
			$('a[data-toggle="collapse"]').click(
					function() {
						$(this).find('i.fa').toggleClass(
								'fa-chevron-right fa-chevron-up');
					});
			$('select').comboSelect();

			$('#rootwizard')
					.bootstrapWizard(
							{
								'nextSelector' : '.button-next',
								'previousSelector' : '.button-previous',
								onTabChange : function(tab, navigation, index) {
									var total = navigation.find('li').length;
									var current = index + 1;
									navigation.find('li.active').prevAll()
											.addClass('visited');
									navigation.find('li.active').nextAll()
											.removeClass('visited');
									navigation.find('li.active').removeClass(
											'visited');
								}
							});

			function toggleChevron(e) {
				$(e.target).prev('.panel-heading').find("a i.cus").toggleClass(
						'cus-close cus-open');
			}
			$('#accordion').on('hidden.bs.collapse', toggleChevron);
			$('#accordion').on('shown.bs.collapse', toggleChevron);
			$('#accordion2').on('hidden.bs.collapse', toggleChevron);
			$('#accordion2').on('shown.bs.collapse', toggleChevron);
			$('#accordions').on('hidden.bs.collapse', toggleChevron);
			$('#accordions').on('shown.bs.collapse', toggleChevron);

		});

function uploadFormData() {
	var file = document.getElementById("inputFile");
	console.log("hie :: ");
	var fd = new FormData();
	console.log("dataSource :: " + $("#dataSource").val());
	fd.append("dataSourceId", $("#dataSource").val());
	if (file.value != "") {
		console.log("file :: " + file.files[0]);
		var doc = file.files[0];
		fd.append("document", doc);
	}
	$.ajax({
		url : 'parseCSV',
		data : fd,
		dataType : 'text',
		processData : false,
		contentType : false,
		type : 'POST',
		success : function(response) {
			if (response == 415) {
				alert("Please select csv file");
			} else {
				var resp = JSON.parse(response);
				for ( var res in resp) {
					fields.push({
						id : resp[res],
						field : resp[res],
						ref : "#" + resp[res],
						selectName : "select" + res,
						selectId : "select" + res,
						sizeName : "sizeName" + res,
						sizeId : "sizeId" + res
					});
				}
				buildTemplate(fields);
			}
		}
	});
}

function allowDrop(ev) {
	ev.preventDefault();
}

function drag(ev) {
	ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev, dom) {
	var replaceExisting = false;
	var existIndex;
	if (fieldMappings.length > 0) {
		var mapping;
		$.grep(fieldMappings, function(fieldMapping) {
			if (fieldMapping.field === dom.id) {
				mapping = fieldMapping;
			} else {
				mapping = {
					"field" : dom.id,
					"vocabulary" : []
				};
			}
		});
		existIndex = fieldMappings.indexOf(mapping);
		console.log(existIndex);
		if (existIndex > -1) {
			replaceExisting = true;
		} else {
			replaceExisting = false;
		}
	} else {
		var mapping = {
			"field" : dom.id,
			"vocabulary" : []
		};
	}
	ev.preventDefault();
	// TODO: Id of selected term
	var termId = ev.dataTransfer.getData("text");
	// TODO : dom.id is id of receiving field
	var finalData = $.grep(terms, function(term) {
		return term.id == termId;
	});
	var vocArray = $.grep(mapping.vocabulary, function(voc) {
		return voc.id == termId;
	});
	if (vocArray.length > 0) {
		alert("Duplicate term");
	} else {
		$('#' + dom.id + ' ul:last').append(
				"<br><li>" + finalData[0].term + "</li>");
		mapping.vocabulary.push(finalData[0]);
	}
	var properties = ajaxFromForm($('#' + dom.id + ' :input'));
	mapping["size"] = properties["sizeName"];
	mapping["type"] = properties["selectName"];
	if (replaceExisting) {
		fieldMappings[existIndex] = mapping;
	} else {
		fieldMappings.push(mapping);
	}
	console.log(fieldMappings);
}

function buildTemplate(fields) {
	$(".data-fields-container").html();
	$(".data-fields-container").loadTemplate("#template", fields, {
		error : function(e) {
			console.log(e);
		}
	});
};

function saveVocabulary() {
	var jsonData = {};
	jsonData["term"] = $("#term").val();
	jsonData["relationId"] = $("#relationId").val();
	var result = $.ajax({
		contentType : 'application/json; charset=utf-8',
		type : "POST",
		url : "saveVocabulary",
		dataType : 'json',
		data : JSON.stringify(jsonData),
		success : function(results) {
			$("#saveResult").html("Vocabulary added.");
			window.location.reload();
		},
		error : function(response) {
			if (response.status == 409) {
				$("#saveResult").html("Duplicate vocabulary.");
			} else {
				$("#saveResult").html("Failed to add vocabulary.");
			}
		}
	});
};
function searchAttributesByTerm() {
	var term = $("#searchTerm").val();

	console.log(" in method :: " + term);
	if (term) {
		var result = $
				.ajax({
					contentType : 'application/json; charset=utf-8',
					type : "POST",
					url : "searchAttributesByTerm",
					dataType : 'json',
					data : term,
					success : function(data) {
						if (data.length > 0) {
							terms = data;
							console.log(terms);
							buildVocabulary(data);
							$("#searchResult").html("");
						} else {
							$(".vocabulary-container").html("");
							$("#searchResult")
									.html(
											"No vocabulary found by this name please add new.");
						}
					},
					error : function(data) {
						$("#searchResult").html("Unable to process request.");
					}
				});
	}
};
function searchAttributesByTerm111() {
	var term = $("#dropDown1").val();
	if (term) {
		var result = $
				.ajax({
					contentType : 'application/json; charset=utf-8',
					type : "POST",
					url : "searchAttributesByTerm",
					dataType : 'json',
					data : term,
					success : function(data) {
						if (data.length > 0) {
							terms = data;
							console.log(terms);
							buildVocabulary(data);
							$("#searchResult").html("");
						} else {
							$(".vocabulary-container").html("");
							$("#searchResult")
									.html(
											"No vocabulary found by this name please add new.");
						}
					},
					error : function(data) {
						$("#searchResult").html("Unable to process request.");
					}
				});
	}
};
function searchBySourceName() {
	var term = "a"; /* $("#searchTerm").val(); */
	console.log(" in method :: " + term);
	if (term) {
		var result = $.ajax({
			contentType : 'application/json; charset=utf-8',
			type : "POST",
			url : "SearchDataSource",
			dataType : 'json',
			data : term,
			success : function(data) {
				if (data.length > 0) {
					terms = data;
					console.log(terms);

				} else {

				}
			},
			error : function(data) {
			}
		});
	}
};
function buildVocabulary(data) {
	$(".vocabulary-container").loadTemplate("#template1", data, {
		error : function(e) {
			console.log(e);
		}
	});
};
function ajaxFromForm(f) {
	var formData = {}
	f.each(function(i, v) {
		if (v.type == 'checkbox') {
			formData[v.name] = v.checked;
		} else {
			formData[v.name] = v.value;
		}
	});
	return formData
};
function saveUserMappings() {
	if (fieldMappings.length > 0) {
		var existIndex;
		for (ind in fields) {
			var mapping;
			$.grep(fieldMappings, function(fieldMapping) {
				if (fieldMapping.field === fields[ind].field) {
					mapping = fieldMapping;
					mapping.size = $("#" + fields[ind].sizeId).val();
					mapping.type = $("#" + fields[ind].selectId).val();
				} else {
					mapping = {
						"field" : fields[ind].field,
						"vocabulary" : []
					};
					mapping.size = $("#" + fields[ind].sizeId).val();
					mapping.type = $("#" + fields[ind].selectId).val();
				}
			});
			existIndex = fieldMappings.indexOf(mapping);
			if (existIndex > -1) {
				fieldMappings[existIndex] = mapping;
			} else {
				fieldMappings.push(mapping);
			}
		}
		var result = $.ajax({
			contentType : 'application/json; charset=utf-8',
			type : "POST",
			url : "saveUserMappings",
			dataType : 'json',
			data : JSON.stringify(fieldMappings),
			success : function(data) {
				window.location = "home";
				activateNextTab('.nav-wizard li.active');
			},

			error : function(data) {
				alert("Something went wrong");
			}
		});
	} else {
		alert("Please add fields for mapping.");
	}
};

function saveUserMappingsNew() {
	if (fieldMappings.length > 0) {
		var existIndex;
		for (ind in fields) {
			var mapping;
			$.grep(fieldMappings, function(fieldMapping) {
				if (fieldMapping.field === fields[ind].field) {
					mapping = fieldMapping;
					mapping.size = $("#" + fields[ind].sizeId).val();
					mapping.type = $("#" + fields[ind].selectId).val();
				} else {
					mapping = {
						"field" : fields[ind].field,
						"vocabulary" : []
					};
					mapping.size = $("#" + fields[ind].sizeId).val();
					mapping.type = $("#" + fields[ind].selectId).val();
				}
			});
			existIndex = fieldMappings.indexOf(mapping);
			if (existIndex > -1) {
				fieldMappings[existIndex] = mapping;
			} else {
				fieldMappings.push(mapping);
			}
		}
		var result = $.ajax({
			contentType : 'application/json; charset=utf-8',
			type : "POST",
			url : "saveUserMappings",
			dataType : 'json',
			data : JSON.stringify(fieldMappings),
			success : function(data) {
				window.location = "dataManagement";
				activateNextTab('.nav-wizard li.active');
			},

			error : function(data) {
				alert("Something went wrong");
			}
		});
	} else {
		alert("Please add fields for mapping.");
	}
};

function searchAttributesByName() {
	var attributeName = $("#searchName").val();
	$("#attributeSearchResult").html('');
	$("#attribuitesContainer").html("");
	$("#algorithmResult").html("");
	checkedArray = [];
	if (attributeName) {
		var result = $
				.ajax({
					contentType : 'application/json; charset=utf-8',
					type : "POST",
					url : "getAttributesByName",
					dataType : 'json',
					data : attributeName,
					success : function(data) {
						if (data.length > 0) {
							attributesNames = data;
							buildAttributes(data);
							$("#attributeSearchResult").html("");
						} else {
							// $(".vocabulary-container").html("");
							$("#attributeSearchResult")
									.html(
											"No attributes found by this name please add new.");
						}
					},
					error : function(data) {
						$("#attributeSearchResult").html(
								"Unable to process request.");
					}
				});
	} else {
		$("#algorithmResult,#termSearchResult").html("");
		checkedAttribute = null;
		$("#attributeSearchResult").html("Please enter some value.");
	}
};

function searchAttributesByNameAttribute() {
	var attributeName = $("#searchName").val();
	$("#attributeSearchResult").html('');
	$("#attribuitesContainer").html("");
	$("#algorithmResult").html("");
	checkedArray = [];
	if (attributeName) {
		var result = $
				.ajax({
					contentType : 'application/json; charset=utf-8',
					type : "POST",
					url : "getAttributesByNameAttribute",
					dataType : 'json',
					data : attributeName,
					success : function(data) {
						if (data.length > 0) {
							attributesNames = data;
							buildAttributes(data);
							$("#attributeSearchResult").html("");
						} else {
							$("#attributeSearchResult")
									.html(
											"No attributes found by this name please add new.");
						}
					},
					error : function(data) {
						$("#attributeSearchResult").html(
								"Unable to process request.");
					}
				});
	} else {
		$("#algorithmResult,#termSearchResult").html("");
		checkedAttribute = null;
		$("#attributeSearchResult").html("Please enter some value.");
	}
};

function beforeSearchAttributesByAlgorithmId(id) {
	$("#algoeithmWithMapId_List").html("");
	$("#mapbutton").val(id);
	$("#algoeithmWithMapId_List").append(
			"<input type='hidden' id='algoeithmWithMapId' value='" + id + "'>");
};
function searchAttributesByAlgorithmId(temp) {
	$("#mappling_algorithm_list").html("");
	var algorithmSource = "";
	var jsonData = {};
	jsonData["algorithmId"] = temp.value;
	var result = $
			.ajax({
				contentType : 'application/json; charset=utf-8',
				type : "POST",
				url : "searchAttributeByAlgorithmId",
				dataType : 'json',
				data : JSON.stringify(jsonData),
				success : function(data) {
					algorithmSource = '<div class="panel-body"><div role="tabpanel" class="scroll box-panel viz"><ul class="list-group"> <div id="algorithmId1">';
					for (i = 0; i < data.length; i++) {
						algorithmSource = algorithmSource
								+ '<li class="list-group-item"><ul class="viz-heading">';
						algorithmSource = algorithmSource
								+ '<li><div class="checkbox"><input id='
								+ data[i].id + ' type="checkbox" name='
								+ data[i].algorithmName + ' value='
								+ data[i].algorithmName + ' >';
						algorithmSource = algorithmSource
								+ '<label for='
								+ data[i].id
								+ '></label></div></li><li><a href="#" class="title">'
								+ data[i].algorithmName
								+ '</a></li><li class="pull-right">';
						algorithmSource = algorithmSource
								+ '<a href="#" class="viz-toggle pull-right"><i class="fa fa-chevron-right fa-lg"></i></a>';
						algorithmSource = algorithmSource
								+ '</li></ul><ul class="list-unstyled viz-body"><li>'
								+ data[i].description
								+ '</li><li>cost of algorithm: <span class="remove pull-right">'
								+ data[i].cost
								+ '</span></li><li>source of algorithm: <span class="add pull-right">7 504 56</span></li>';
						algorithmSource = algorithmSource + '</ul></li>';
					}
					algorithmSource = algorithmSource
							+ '<div></ul></div><br><div class="row" align="right"><div class="col-lg-6" align="left"><button id="" onclick="saveVocabularytest()" class="btn btn-navy btn-lg">&nbsp;&nbsp;&nbsp;NEXT&nbsp;&nbsp;&nbsp;</button></div></div></div>';
					$("#mappling_algorithm_list").html(algorithmSource);
				},
				error : function() {
				}
			});
};

function saveVocabularytest() {
	var jsonData = {};
	var id = [];
	$('div#algorithmId1 input[type=checkbox]').each(function() {
		if ($(this).is(":checked")) {
			id.push($(this).attr('id'));
		}
	});
	var json = "";
	for (i = 0; i < id.length; i++) {
		json = '{"id": ' + id[i] + "}" + "," + json;
	}

	json = json + '{"id": ' + $("#algoeithmWithMapId").val() + "}";
	var finaljson = "[" + json + "]";
	console.log(finaljson);
	var result = $.ajax({
		contentType : 'application/json; charset=utf-8',
		type : "POST",
		url : "algorithmToAlgorithmMapping",
		dataType : 'json',
		data : finaljson,
		success : function(results) {
			console.log(results);
		},
		error : function(response) {
		}
	});
};

function buildAttributes(data) {
	$("#attribuitesContainer").html("");
	var appendThisHTML;
	for ( var index in data) {
		appendThisHTML = appendThisHTML
				+ '<tr><td><div class="checkbox"> '
				+ '<input id='
				+ data[index].id
				+ ' type="checkbox" name="check" onclick="manageCheckedArray(this)" value="'
				+ data[index].attributeName
				+ '"><label for='
				+ data[index].id
				+ '></label>'
				+ '</div></td><td class="vert-align"><a href="javascript:;" class="title">'
				+ data[index].attributeName + '</a></td></tr>';
	}
	$("#attribuitesContainer").html(appendThisHTML);
};

function getAlgorithmsByAttribute() {
	if (checkedAttribute) {
		var result = $.ajax({
			contentType : 'application/json; charset=utf-8',
			type : "POST",
			url : "getAlgorithmsByAttribute",
			dataType : 'json',
			data : checkedAttribute.value,
			success : function(data) {
				buildAlgorithms(data);
				getTermsByAttribute();
			},
			error : function(data) {
				$("#algorithmResult").html("Somthing went wrong.");
			}
		});
	}
};

function getAttributesByAttribute1() {
	if (checkedAttribute) {
		var result = $.ajax({
			contentType : 'application/json; charset=utf-8',
			type : "POST",
			url : "getAlgorithmsByAttribute",
			dataType : 'json',
			data : checkedAttribute.value,
			success : function(data) {
				console.log("main data :: " + data);
				buildAlgorithms(data);
				getTermsByAttributeRegistation();
			},
			error : function(data) {
				$("#algorithmResult").html("Somthing went wrong.");
			}
		});
	}
};

function getTermsByAttributeRegistation() {
	console.log("checkedAttribute.id :: " + checkedAttribute.id);
	var result = $.ajax({
		contentType : 'application/json; charset=utf-8',
		type : "POST",
		url : "getParamByAttributeRegistation",
		dataType : 'json',
		data : checkedAttribute.id,
		success : function(data) {
			buildTerms(data);
		},
		error : function(data) {
			$("#termSearchResult").html("Somthing went wrong.");
		}
	});
};


function getAttributesByAttribute11() {
	if (checkedAttribute) {
		var result = $.ajax({
			contentType : 'application/json; charset=utf-8',
			type : "POST",
			url : "getAlgorithmsByAttribute",
			dataType : 'json',
			data : checkedAttribute.value,
			success : function(data) {
				console.log("main data :: " + data);
				for ( var index in data) {
				window.location.href = _path + "/algorithmDiscover?algorithm="+data[index].algorithmName+"&dscr="+data[index].description+"&cost="+data[index].cost;
				}
			},
			error : function(data) {
				//$("#algorithmResult").html("Somthing went wrong.");
			}
		});
	}
};

function buildTerms(data) {
	$("#termSearchResult").html("");
	var appendThisHTML = '';
	for ( var index in data) {
		appendThisHTML = appendThisHTML
				+ '<tr>'
				+ '<td><div class="checkbox"><input id='
				+ data[index].id
				+ ' type="checkbox" name="termCheck" value='
				+ data[index].id
				+ '><label for='
				+ data[index].id
				+ '></label></div></td>'
				+ '<td class="vert-align"><a href="#" class="title">'
				+ data[index].term
				+ '</a></td>'
				+ '<td><ul class="list-inline pull-right"><li></li><li></li></ul></td>'
				+ '</tr>';
	}
	$("#termSearchResult").html(appendThisHTML);
};

function buildAlgorithms(data) {
	$("#algorithmResult").html("");
	//$("#visualResult").html("");
	var appendThisHTML = '';
	for ( var index in data) {
		appendThisHTML = appendThisHTML
				+ '<li class="list-group-item"><ul class="viz-heading"><li><div class="checkbox">'
				+ '<input id='
				+ data[index].id
				+ ' type="checkbox" onclick="checkAlgorithm(this)" name="check1" value='
				+ data[index].id
				+ '><label for='
				+ data[index].id
				+ '></label></div>'
				+ '</li><li><a href="#" class="title">'
				+ data[index].algorithmName
				+ '</a></li>'
				+ '<li class="pull-right"><a href="#" class="viz-toggle pull-right"><i class="fa fa-chevron-right fa-lg"></i></a></li></ul>'
				+ '<ul class="list-unstyled viz-body"><li>'
				+ data[index].description
				+ '</li>'
				+ '<li>Cost of algorithm: <span class="remove pull-right">'
				+ data[index].cost
				+ '</span></li>'
				+ '<li>source of algorithm: <span class="add pull-right">7 504 56</span></li>'
				+ '</ul></li>';
		
		/*if(data[index].algorithmTypeId == 1)
			$("#visualResult").html(appendThisHTML);
		else
			$("#algorithmResult").html(appendThisHTML);*/
	}
	$("#algorithmResult").html(appendThisHTML);
};

function manageCheckedArray(selected) {
	var th = $(selected);
	if (th.is(':checked')) {
		$(':checkbox[name="' + selected['name'] + '"]').not(th).prop('checked',
				false);
		checkedAttribute = selected;
	}
};
function checkAlgorithm(selected) {
	var th = $(selected);
	if (th.is(':checked')) {
		$(':checkbox[name="' + selected['name'] + '"]').not(th).prop('checked',
				false);
		checkedAlgorithm = selected;
	}
};
function getTermsByAttribute() {
	var result = $.ajax({
		contentType : 'application/json; charset=utf-8',
		type : "POST",
		url : "getTermsByAttribute",
		dataType : 'json',
		data : checkedAttribute.id,
		success : function(data) {
			buildTerms(data);
		},
		error : function(data) {
			$("#termSearchResult").html("Somthing went wrong.");
		}
	});
};

function activateNextTab(tab) {
	$('' + tab + '').next().children('a').click();
};
function getVisualization() {
	var result = $.ajax({
		contentType : 'application/json; charset=utf-8',
		type : "POST",
		url : "getAlgorithmById",
		dataType : 'json',
		data : checkedAlgorithm.id,
		success : function(data) {
			$("#algoTitle").html(data.algorithmName);
			$("#algoDesc").html(data.description);
			$("#algoCost").html(data.cost);
			activateNextTab('.nav-wizard li.active');
		},
		error : function(data) {
			alert("Something went wrong.");
		}
	});
};

jQuery(document)
		.ready(
				function($) {
					$("#dataSourceForm1")
							.submit(
									function() {
										$("#loader")
												.html(
														"<img src='resources/images/ajax_loader.gif' height='50px' width='50px' align='middle'>");
										$("#uploadDataSource").prop('disabled',
												true);
										var dataSource = {};
										dataSource["driver"] = $('#driver')
												.val();
										dataSource["url"] = $('#url').val();
										dataSource["userName"] = $('#user')
												.val();
										dataSource["password"] = $('#password')
												.val();
										var result = $
												.ajax({
													contentType : 'application/json; charset=utf-8',
													type : "POST",
													url : "saveDataSource",
													dataType : 'json',
													data : JSON
															.stringify(dataSource),
													success : function(results) {
														window.location = "dataManagement";
													},
													error : function(results) {
														if (results.status == 409) {
															$("#loader")
																	.html(
																			"Duplicate data source.");
														} else {
															$("#loader")
																	.html(
																			"Failed to upload data source.");
														}
														$("#uploadDataSource")
																.prop(
																		'disabled',
																		false);
													}
												});
									});
				});
function executeAlgorithm() {
	$("#algorithmLoader")
			.html(
					"<img src='resources/images/ajax_loader.gif' height='50px' width='50px' align='middle'>");
	$("#execute").prop('disabled', true);
	var dataSource = {};
	dataSource["driver"] = $('#driver').val();
	dataSource["url"] = $('#url').val();
	dataSource["userName"] = $('#user').val();
	dataSource["password"] = $('#password').val();
	console.log($('#driver').val());
	console.log($('#url').val());
	console.log($('#user').val());
	console.log($('#password').val());
	var result = $.ajax({

		contentType : 'application/json; charset=utf-8',
		type : "POST",
		url : "saveDriver",
		dataType : 'json',
		data : JSON.stringify(dataSource),
		success : function(results) {
			window.location = "loadDataManagement";
			$("#algorithmLoader").html("Algorithm executed.");
			$("#execute").prop('disabled', false);
		},
		error : function(results) {

			$("#execute").prop('disabled', false);
		}
	});
}
