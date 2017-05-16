$("#menu-toggle").click(function(e) {
	e.preventDefault();
	$("#wrapper").toggleClass("toggled");
});

jQuery(document).ready(function($) {
    $('a[data-toggle="collapse"]').click(function() {
        $(this).find('i.fa').toggleClass('fa-chevron-right fa-chevron-up');
    });
    $(".scroll").niceScroll({
        cursorcolor: "#004586",
        cursoropacitymin: 0.3,
        cursoropacitymax: 1,
        cursorborderradius: "5px",
        cursorwidth: "10px",
        cursorminheight: 32
    }).resize();
    $('select').comboSelect();

    $('#rootwizard').bootstrapWizard({
        'nextSelector': '.button-next',
        'previousSelector': '.button-previous',
        onTabChange: function(tab, navigation, index) {
            var total = navigation.find('li').length;
            var current = index + 1;
            navigation.find('li.active').prevAll().addClass('visited');
            navigation.find('li.active').nextAll().removeClass('visited');
            navigation.find('li.active').removeClass('visited');
        }
    });

    function toggleChevron(e) {
        $(e.target).prev('.panel-heading').find("a i.cus").toggleClass('cus-close cus-open');
    }
    $('#accordion').on('hidden.bs.collapse', toggleChevron);
    $('#accordion').on('shown.bs.collapse', toggleChevron);
    $('#accordion2').on('hidden.bs.collapse', toggleChevron);
    $('#accordion2').on('shown.bs.collapse', toggleChevron);
    $('#accordions').on('hidden.bs.collapse', toggleChevron);
    $('#accordions').on('shown.bs.collapse', toggleChevron);



    $( ".sortable" ).sortable({
      connectWith: ".subSortable",
      handle: ".cus",
      placeholder: "ui-state-highlight"
    },"refreshPositions").disableSelection();

    $( ".secsortable" ).sortable({
      connectWith: ".mainSortable",
      handle: ".drag .cus",
      placeholder: "ui-state-highlight ui-state-highlight-main"
    },"refreshPositions").disableSelection();

    /*$.ajax({
		contentType : 'application/json; charset=utf-8',
		type : "POST",
		url : "/Neo4J-webapp/getAttributes",
		dataType : 'json',
		data : {"attributeTerm":"Test"}, 
		success : function(results) {
			// TODO: Handle failure here, allow user to force configuration
			console.log(results);
			//$("#saveResult").html(results.explanation);
	    },
		error : function() {
			alert("Error!");
		}
	});*/
    
    //ajaxFromForm($('#reportForm input[type=text],input[type=checkbox],textarea'));
    
$("#saveButton").click(
		function(){
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
				error : function() {
					$("#saveResult").html("Failed to add vocabulary.");
				}
			});
		}
);

$("#executeButton").click(
		function(){
			$("#algorithmLoader").html("<img src='resources/images/ajax_loader.gif' height='50px' width='50px' align='middle'>");
			$("#executeButton").prop('disabled', true);
			var result = $.ajax({
				contentType : 'application/json; charset=utf-8',
				type : "GET",
				url : "executeAlgorithm",
				dataType : 'json',
				success : function(results) {
					// TODO: Handle failure here, allow user to force configuration
					console.log(results);
					$("#algorithmLoader").html("Algorithm executed.");
					$("#executeButton").prop('disabled', false);
					//$("#saveResult").html(results.explanation);
			    },
				error : function() {
					$("#algorithmLoader").html("Failed to executed Algorithm.");
					$("#executeButton").prop('disabled', false);
				}
			});
		}
);


$("#uploadDataSource").click(
		function(){
			alert("ge");
			$("#loader").html("<img src='resources/images/ajax_loader.gif' height='50px' width='50px' align='middle'>");
			$("#uploadDataSource").prop('disabled', true);
			var dataSource = ajaxFromForm($('#dataSourceForm input[type=text],textarea,select'));
			console.log(dataSource);
			var result = $.ajax({
				contentType : 'application/json; charset=utf-8',
				type : "POST",
				url : "uploadDataSource",
				dataType : 'json',
				data:{"dataSource" : dataSource},
				success : function(results) {
					// TODO: Handle failure here, allow user to force configuration
					console.log(results);
					alert("hell");
					window.location("dataManagement");
					/*$("#loader").html("Data source uploaded.");
					$("#uploadDataSource").prop('disabled', false);*/
					//$("#saveResult").html(results.explanation);
			    },
				error : function() {
					$("#loader").html("Failed to upload data source.");
					$("#uploadDataSource").prop('disabled', false);
				}
			});
		}
);


function ajaxFromForm(f) {
	var formData = {}
	f.each(function(i, v) {
		console.log("ajaxFromForm: name "+ v.name  +" type " +v.type) ;
		if (v.type == 'checkbox') {
			formData[v.name] = v.checked;
		} else {
			formData[v.name] = v.value;
		}
	});
	return formData
}
});