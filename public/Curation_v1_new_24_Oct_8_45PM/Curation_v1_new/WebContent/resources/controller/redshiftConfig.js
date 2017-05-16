function saveConfiguration(){
	var config = ajaxFromForm($("#configForm input"));
	console.log(config);
	if(config){
		var result = $.ajax({
			contentType : 'application/json; charset=utf-8',
			type : "POST",
			url : "saveConfiguration",
			dataType : 'json',
			data : JSON.stringify(config), 
			success : function(data) {
				alert(data);
		    },
			error : function(data) {
				$("#saveResult").html("Unable to process request.");
			}
		});
	}
};

function ajaxFromForm(f) {
	var formData = {};
	f.each(function(i, v) {
		if(v.name){
			if (v.type == 'checkbox') {
				formData[v.name] = v.checked;
			} else {
				formData[v.name] = v.value;
			}
		}
	});
	return formData
};