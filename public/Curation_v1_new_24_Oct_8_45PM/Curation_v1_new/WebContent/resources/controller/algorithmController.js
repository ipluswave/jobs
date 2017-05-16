var terms;
var fieldMappings = [];
var fields = [];
$("#menu-toggle").click(function(e) {
	e.preventDefault();
	$("#wrapper").toggleClass("toggled");
});
jQuery(document).ready(function($) {
	$('select').comboSelect();
});
function uploadFormData() {
	// $('#result').html('');
	var file = document.getElementById("inputFile");
	var fd = new FormData();
	fd.append("algorithmId", $("#algorithmSource").val());
	if (file.value != "") {
		var doc = file.files[0];
		fd.append("document", doc);
	}
	$.ajax({
		url : 'parseParameters',
		data : fd,
		dataType : 'text',
		processData : false,
		contentType : false,
		type : 'POST',
		success : function(response) {
			// $('#result').html(data);
			if (response == 415) {
				console.log(response);
				alert("Please select csv file");
			} else {
				var fields = [];
				var resp = JSON.parse(response);
				for ( var res in resp) {
					// fields.push({id:resp[res],field:resp[res],ref:"#"+resp[res]});
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
function buildTemplate(fields) {
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
			// TODO: Handle failure here, allow user to force configuration
			console.log(results);
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
	if (term) {
		var result = $
				.ajax({
					contentType : 'application/json; charset=utf-8',
					type : "POST",
					url : "searchAttributesByTerm",
					dataType : 'json',
					data : term,
					success : function(data) {
						// alert(JSON.stringify(data));
						if (data.length > 0) {
							terms = data;
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

function searchAttributesByTerm() {
	var term = $("#searchTerm").val();
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

function searchAttributesByTerm11() {
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

function buildVocabulary(data) {
	$(".vocabulary-container").loadTemplate("#template1", data, {
		error : function(e) {
			console.log(e);
		}
	});
};

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
	if (replaceExisting) {
		fieldMappings[existIndex] = mapping;
	} else {
		fieldMappings.push(mapping);
	}
	console.log(fieldMappings);
}
function ajaxFromForm(f) {
	var formData = {}
	f.each(function(i, v) {
		if (v.name) {
			if (v.type == 'checkbox') {
				formData[v.name] = v.checked;
			} else {
				formData[v.name] = v.value;
			}
		}
	});
	return formData
};
function saveParameter() {
	var parameter = ajaxFromForm($("#parameterForm input,select"));
	console.log(JSON.stringify(parameter));
	// TODO : Write code to insert parameter for selected algorithm
	if (parameter) {
		var result = $
				.ajax({
					contentType : 'application/json; charset=utf-8',
					type : "POST",
					url : "saveParameter",
					dataType : 'json',
					data : JSON.stringify(parameter),
					success : function(data) {
						fields.push({
							id : data["id"],
							field : data["parameterName"],
							ref : "#" + data["id"]
						});
						buildTemplate(fields);
						var selectedAlgo = $("#algorithmId");
						$("#addParameterResult")
								.html(
										"<span class='alert alert-success'>Parameter added.</span>");
						$('#parameterForm').each(function() {
							this.reset();
						});
						setTimeout(function() {
							$("#addParameterResult").html("");
						}, 1500);
					},
					error : function(response) {
						if (response.status == 409) {
							$("#addParameterResult")
									.html(
											"<span class='alert alert-danger'>Duplicate parameter.</span>");
							setTimeout(function() {
								$("#addParameterResult").html("");
							}, 1500);
						} else {
							$("#addParameterResult")
									.html(
											"<span class='alert alert-danger'>Unable to process request.</span>");
							setTimeout(function() {
								$("#addParameterResult").html("");
							}, 1500);
						}
					}
				});
	}
};
function saveParameter11() {
	var jsonData = {};
	jsonData["algorithmId"] = $("#algorithmId").val();
	jsonData["parameterName"] = $("#parameterName").val();
	jsonData["parameterType"] = $("#parameterType").val();
	var result = $
			.ajax({
				contentType : 'application/json; charset=utf-8',
				type : "POST",
				url : "saveParameter",
				dataType : 'json',
				data : JSON.stringify(jsonData),
				success : function(data) {
					fields.push({
						id : data["id"],
						field : data["parameterName"],
						ref : "#" + data["id"]
					});
					buildTemplate(fields);
					var selectedAlgo = $("#algorithmId");
					$("#addParameterResult")
							.html(
									"<span class='alert alert-success'>Parameter added.</span>");
					$('#parameterForm').each(function() {
						this.reset();
					});
					setTimeout(function() {
						$("#addParameterResult").html("");
					}, 1500);
				},
				error : function(response) {
					if (response.status == 409) {
						$("#addParameterResult")
								.html(
										"<span class='alert alert-danger'>Duplicate parameter.</span>");
						setTimeout(function() {
							$("#addParameterResult").html("");
						}, 1500);
					} else {
						$("#addParameterResult")
								.html(
										"<span class='alert alert-danger'>Unable to process request.</span>");
						setTimeout(function() {
							$("#addParameterResult").html("");
						}, 1500);
					}
				}
			});
};
function saveParameterInAttribute() {
	var parameter = ajaxFromForm($("#parameterForm input,select"));
	// TODO : Write code to insert parameter for selected algorithm
	if (parameter) {
		var result = $
				.ajax({
					contentType : 'application/json; charset=utf-8',
					type : "POST",
					url : "saveParameterInAttribute",
					dataType : 'json',
					data : JSON.stringify(parameter),
					success : function(data) {
						fields.push({
							id : data["id"],
							field : data["parameterName"],
							ref : "#" + data["id"]
						});
						buildTemplate(fields);
						var selectedAlgo = $("#algorithmId");
						$("#addParameterResult")
								.html(
										"<span class='alert alert-success'>Parameter added.</span>");
						$('#parameterForm').each(function() {
							this.reset();
						});
						setTimeout(function() {
							$("#addParameterResult").html("");
						}, 1500);
					},
					error : function(response) {
						if (response.status == 409) {
							$("#addParameterResult")
									.html(
											"<span class='alert alert-danger'>Duplicate parameter.</span>");
							setTimeout(function() {
								$("#addParameterResult").html("");
							}, 1500);
						} else {
							$("#addParameterResult")
									.html(
											"<span class='alert alert-danger'>Unable to process request.</span>");
							setTimeout(function() {
								$("#addParameterResult").html("");
							}, 1500);
						}
					}
				});
	}
};

function saveParameterInAttribute11() {
	var jsonData = {};
	jsonData["attributeId"] = $("#attributeId").val();
	jsonData["parameterName"] = $("#parameterName").val();
	jsonData["parameterType"] = $("#parameterType").val();
	/* var parameter = ajaxFromForm($("#parameterForm input,select")); */
	// TODO : Write code to insert parameter for selected algorithm
	console.log("jsonData ::" + jsonData["attributeId"]);

	var result = $
			.ajax({
				contentType : 'application/json; charset=utf-8',
				type : "POST",
				url : "saveParameterInAttribute",
				dataType : 'json',
				data : JSON.stringify(jsonData),
				success : function(data) {
					saveAttributeMaapingWithAlgorithm();
					fields.push({
						id : data["id"],
						field : data["parameterName"],
						ref : "#" + data["id"]
					});
					buildTemplate(fields);
					var selectedAlgo = $("#algoid");
					$("#addParameterResult")
							.html(
									"<span class='alert alert-success'>Parameter added.</span>");
					$('#parameterForm').each(function() {
						this.reset();
					});
					setTimeout(function() {
						$("#addParameterResult").html("");
					}, 1500);
				},
				error : function(response) {
					if (response.status == 409) {
						$("#addParameterResult")
								.html(
										"<span class='alert alert-danger'>Duplicate parameter.</span>");
						setTimeout(function() {
							$("#addParameterResult").html("");
						}, 1500);
					} else {
						$("#addParameterResult")
								.html(
										"<span class='alert alert-danger'>Unable to process request.</span>");
						setTimeout(function() {
							$("#addParameterResult").html("");
						}, 1500);
					}
				}
			});
};

function saveAttributeMaapingWithAlgorithm() {
	var jsonData = {};
	jsonData["algorithmId"] = $("#algoid").val();
	jsonData["attributeName"] = document.getElementById("attributeId").options[document
			.getElementById("attributeId").selectedIndex].text;
	console.log(jsonData);
	console.log(jsonData);
	var result = $.ajax({
		contentType : 'application/json; charset=utf-8',
		type : "POST",
		url : "saveAttributeRegistration",
		dataType : 'json',
		data : JSON.stringify(jsonData),
		success : function(data) {

		},
		error : function(response) {

		}
	});
};
function saveAttributeRegistration() {
	// var attribute = ajaxFromForm($("#attributeForm input,select"));
	var jsonData = {};
	jsonData["algorithmId"] = $("#algorithmId").val();
	jsonData["attributeName"] = $("#attributeName").val();
	if (jsonData) {
		var result = $.ajax({
			contentType : 'application/json; charset=utf-8',
			type : "POST",
			url : "saveAttributeRegistration",
			dataType : 'json',
			data : JSON.stringify(jsonData),
			success : function(data) {
				fields.push({
					id : data["id"],
					field : data["attributeName"],
					ref : "#" + data["id"]
				});
				buildTemplate(fields);
				$('#attributeForm').each(function() {
					this.reset();
				});
			},
			error : function(data) {
				$("#addResult").html("Unable to process request.");
			}
		});
	}
};

$("#nextBtn").click(function() {
	var submitData = fieldMappings;
	console.log(JSON.stringify(submitData));
	var result = $.ajax({
		contentType : 'application/json; charset=utf-8',
		type : "POST",
		url : "saveUserMappings",
		dataType : 'json',
		data : JSON.stringify(submitData),
		success : function(data) {
			if (data == 200) {
				window.location.href = _path + "/home";
			} else {
				$("#searchResult").html("Unable to process request.");
			}
		},
		error : function(data) {
			$("#searchResult").html("Unable to process request.");
		}
	});
});
$("#doneBtn").click(function() {
	var submitData = fieldMappings;
	console.log("hi");
	console.log(submitData);
	var result = $.ajax({
		contentType : 'application/json; charset=utf-8',
		type : "POST",
		url : "saveUserMappingsAttribute",
		dataType : 'json',
		data : JSON.stringify(submitData),
		success : function(data) {
			if (data == 200) {
				window.location.href = _path + "/home";
			} else {
				$("#searchResult").html("Unable to process request.");
			}
		},
		error : function(data) {
			$("#searchResult").html("Unable to process request.");
		}
	});
});
function saveAttribute() {
	var attribute = ajaxFromForm($("#attributeForm input,select"));
	// TODO : Write code to insert parameter for selected algorithm
	if (attribute) {
		var result = $.ajax({
			contentType : 'application/json; charset=utf-8',
			type : "POST",
			url : "saveAttribute",
			dataType : 'json',
			data : JSON.stringify(attribute),
			success : function(data) {
				fields.push({
					id : data["id"],
					field : data["attributeName"],
					ref : "#" + data["id"]
				});
				buildTemplate(fields);
				$('#attributeForm').each(function() {
					this.reset();
				});
			},
			error : function(data) {
				$("#addResult").html("Unable to process request.");
			}
		});
	}
};

$("#finishBtn").click(function() {
	var submitData = fieldMappings;
	var result = $.ajax({
		contentType : 'application/json; charset=utf-8',
		type : "POST",
		url : "saveUserMappings",
		dataType : 'json',
		data : JSON.stringify(submitData),
		success : function(data) {
			if (data == 200) {
				//window.location.href = _path + "/home";
			} else {
				$("#addResult").html("Unable to process request.");
			}
		},
		error : function(data) {
			$("#addResult").html("Unable to process request.");
		}
	});
});