$("#menu-toggle").click(function(e) {
    e.preventDefault();
    $("#wrapper").toggleClass("toggled");
});
jQuery(document).ready(function($) {
    $('select').comboSelect();
});
jQuery(document).ready(function($) {
	$("#dataSourceForm").submit(
		function(){
			$("#loader").html("<img src='resources/images/ajax_loader.gif' height='50px' width='50px' align='middle'>");
			$("#uploadDataSource").prop('disabled', true);
			var dataSource = {};
			dataSource["description"] = $('#description').val();
			dataSource["sourceName"] = $('#sourceName').val();
			dataSource["tags"] = $('#tags').val();
			dataSource["usage"] = $('#usage').val();
			var result = $.ajax({
				contentType : 'application/json; charset=utf-8',
				type : "POST",
				url : "saveDataSource",
				dataType : 'json',
				data: JSON.stringify(dataSource),
				success : function(results) {
					window.location = "newPage";
			    },
				error : function(results) {
					if(results.status==409){
						$("#loader").html("Duplicate data source.");
					}
					else{
						$("#loader").html("Failed to upload data source.");
					}
					$("#uploadDataSource").prop('disabled', false);
				}
			});
		}
	);
});
jQuery(document).ready(function($) {
	$("#dataSourceForm1").submit(
		function(){
			$("#loader").html("<img src='resources/images/ajax_loader.gif' height='50px' width='50px' align='middle'>");
			$("#uploadDataSource").prop('disabled', true);
			var dataSource = {};
			dataSource["description"] = $('#description').val();
			dataSource["sourceName"] = $('#sourceName').val();
			dataSource["tags"] = $('#tags').val();
			dataSource["usage"] = $('#usage').val();
			console.log("dataSource :: "+dataSource);
			console.log("dataSourceForm1 :: "+JSON.stringify(dataSource));
			var result = $.ajax({
				contentType : 'application/json; charset=utf-8',
				type : "POST",
				url : "saveDataSource",
				dataType : 'json',
				data: JSON.stringify(dataSource),
				success : function(results) {
					window.location = "dataManagement";
					$("#loader").html("Data source uploaded.");
					$("#uploadDataSource").prop('disabled', false);
			    },
				error : function(results) {
					if(results.status==409){
						$("#loader").html("Duplicate data source.");
					}
					else{
						$("#loader").html("Failed to upload data source.");
					}
					$("#uploadDataSource").prop('disabled', false);
				}
			});
		}
	);
});

