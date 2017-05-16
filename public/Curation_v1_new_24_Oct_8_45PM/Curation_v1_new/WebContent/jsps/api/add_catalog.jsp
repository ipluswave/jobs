<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Tempo</title>
    <!-- Bootstrap -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="resources/css/style.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,700,500,300|Roboto+Condensed:400,300,700' rel='stylesheet' type='text/css'>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>

<body>
    <div id="wrapper">
        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav-brand">
                <li class="sidebar-brand">
                    <a href="#"><img src="resources/images/logo.png" alt="logo"></a>
                </li>
            </ul>
            <ul class="sidebar-nav">
                <li class="active"><a href="#"><i class="sprite sprite-cu-helmet"></i> Curator</a>
                </li>
                <li>
                    <a href="#"><i class="sprite sprite-cu-splash"></i> Curation</a>
                </li>
                <li>
                    <a href="#"><i class="sprite sprite-cu-storage"></i> ideate</a>
                </li>
                <li>
                    <a href="#"><i class="sprite sprite-cu-target"></i> target</a>
                </li>
            </ul>
            <!-- <button class="btn btn-navy btn-lg">&nbsp;&nbsp;&nbsp;<i class="fa fa-sign-out"></i>&nbsp;&nbsp;log out&nbsp;&nbsp;&nbsp;&nbsp;</button> -->
        </div>
        <!-- /#sidebar-wrapper -->
        <!-- Page Content -->
        <div id="page-content-wrapper">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li>
                                <a href="#" class="btn btn-menu"><i class="fa fa-bell fa-lg"></i></a></li>
                            <li><a href="#" class="btn btn-menu"><i class="fa fa-search fa-lg"></i></a></li>
                            <li><a href="#menu-toggle" class="btn btn-menu" id="menu-toggle"><i class="fa fa-bars fa-lg"></i></a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown">
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                    <span class="profile-ava">
                                        <img alt="" src="resources/images/avatar1_small.jpg" width="45">
                                    </span>
                                    <ul class="list-unstyled">
                                        <li><span class="username">Kyle Petterson</span></li>
                                        <li><span class="designation">Admin</span></li>
                                    </ul>
                                    <i class="fa fa-chevron-down"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">Another action</a></li>
                                    <li><a href="#">Something else here</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Separated link</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="btn btn-menu"><i class="fa fa-cog fa-lg"></i></a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <ol class="breadcrumb">
                <li><a href="#">curation</a></li>
                <li><a href="#">catalog curation</a></li>
            </ol>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <ul class="list-inline">
                                    <li>
                                        <h3 class="panel-title">Headline</h3></li>
                                    <li class="pull-right"><a href="#" data-toggle="collapse" data-target="#headline"><i class="fa fa-chevron-up"></i></a></li>
                                </ul>
                            </div>
                            <div class="panel-body collapse in" id="headline">
                                <form>
								<div class="form-group">
                                       
										<!-- <select class="form-control input-lg" id="ddlcategory" onchange="drpchange()"> -->
										<select class="form-control input-lg" id="ddlcategory">
										<option value="0">--Select Category--</option>
										<option value="1">--Category1--</option>
										</select>
                                        
                                    </div>
								<div class="form-group" id="dvothercategory" style="display:none">
                                       
                                        <input type="text" class="form-control input-lg" id="txtcategory" placeholder="Enter Category">
                                    </div>
                                    <div class="form-group">
                                       
                                        <input type="text" class="form-control input-lg" id="txtname" placeholder="Enter Name">
                                    </div>
									<div class="form-group">
                                        <label for="title" class="sr-only">Title</label>
                                        <input type="text" class="form-control input-lg" id="txttitle" placeholder="Enter Title">
                                    </div>
									
                                  
                                </form>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <ul class="list-inline">
                                    <li>
                                        <h3 class="panel-title">cover image</h3></li>
                                    <li class="pull-right"><a href="#" data-toggle="collapse" data-target="#cover"><i class="fa fa-chevron-right"></i></a></li>
                                </ul>
                            </div>
                            <div class="panel-body collapse" id="cover">
                                <div id="cs-tabs">
                                    <!-- Nav tabs -->
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Upload from your device</a></li>
                                        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Enter Image URL</a></li>
                                    </ul>
                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active" id="home">
                                            <form>
                                                <div class="form-group">
                                                    <input type="file" class="form-control input-lg" id="filetitle" placeholder="Select file">
                                                    <small>(Maximum size: 30 MB)</small>
                                                </div>
                                                <button class="btn btn-navy btn-sm">&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;upload image&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                            </form>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="profile">
                                            <form>
                                                <div class="form-group">
                                                    <input type="text" class="form-control input-lg" id="filetxtbox" placeholder="Enter Image URL">
                                                    <small>Support Services: Dropbox; Web Images; FTP; Flickr; Google Drive; Imgur; Instagram</small>
                                                </div>
                                                <button class="btn btn-navy btn-sm">&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;upload image&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <ul class="list-inline">
                                    <li>
                                        <h3 class="panel-title">Composition logic content</h3></li>
                                    <li class="pull-right"><a href="#" data-toggle="collapse" data-target="#clc"><i class="fa fa-chevron-right"></i></a></li>
                                </ul>
                            </div>
                            <div class="panel-body collapse" id="clc">
                                <form>
                                    <div class="form-group">
                                        <textarea name="" class="form-control input-lg" rows="3" cols="4" placeholder="Paste article"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control input-lg" id="title" placeholder="Enter article URL">
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <ul class="list-inline">
                                    <li>
                                        <h3 class="panel-title">Toxonomy</h3>
                                    </li>
                                    <li class="pull-right"><a href="#" data-toggle="collapse" data-target="#toxonomy" class="expander"><i class="fa fa-chevron-right"></i></a></li>
                                </ul>
                            </div>
                            <div class="panel-body collapse" id="toxonomy">
                                <form>
                                    <div class="form-group">
                                        <input type="text" class="form-control input-lg" id="title" placeholder="Enter subject">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control input-lg" id="title" placeholder="Enter activity">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control input-lg" id="title" placeholder="Enter topic">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">Catalog content</h3>
                            </div>
                            <div class="panel-body">
                                <ul class="nav nav-pills">
                                    <li role="presentation" class="active"><a href="#"><i class="sprites sprite-obj"></i><br>object</a></li>
                                    <li role="presentation"><a href="#"><i class="sprites sprite-gal"></i><br>Gallery</a></li>
                                    <li role="presentation"><a href="#"><i class="sprites sprite-prc"></i><br>promoted</a></li>
                                    <li role="presentation"><a href="#"><i class="sprites sprite-pro"></i><br>process</a></li>
                                </ul>
                                <br>
                                <a href="#" class="btn btn-navy btn-sm">&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;Recommended content&nbsp;&nbsp;&nbsp;&nbsp;</a>
                                <br>
                                <div>
                                <br>
                                    <form>
                                        <div class="form-group">
                                            <input type="text" class="form-control input-lg" id="title" placeholder="Enter title">
                                        </div>
                                        <div class="form-group">
                                            <textarea name="" class="form-control input-lg" rows="3" cols="4" placeholder="Enter description"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control input-lg" id="title" placeholder="Enter Image URL">
                                        </div>
                                        <button class="btn btn-blue btn-sm">&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;save changes&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                    </form>
                                    <br>
                                    <form>
                                        <div class="form-group">
                                            <input type="text" class="form-control input-lg" id="title" placeholder="Enter title">
                                        </div>
                                        <div class="form-group">
                                            <textarea name="" class="form-control input-lg" rows="3" cols="4" placeholder="Enter description"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control input-lg" id="title" placeholder="Enter Image URL">
                                        </div>
                                        <button class="btn btn-blue btn-sm">&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;save changes&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                    </form>
                                    <br>
                                    <button class="btn btn-white btn-sm">&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;add item&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 text-center">
                        <button class="btn btn-navy btn-lg" onclick="addcatalog()">&nbsp;&nbsp;&nbsp;<i class="fa fa-download"></i>&nbsp;&nbsp;save catalog detail&nbsp;&nbsp;&nbsp;&nbsp;</button>
                    </div>
                </div>
                <br>
            </div>
            <input type="hidden" name="_token" value="">

        </div>
        <!-- /#page-content-wrapper -->
    </div>
    <!-- /#wrapper -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="resources/js/jquery-2.1.4.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>
    <script>
	  var tk = "";
	  var userid="";
	
	 $( document ).ready( function() {
	
	 	//logout();
		getToken();
		login();
	 	
	});

	
/*
function drpchange()
{
var dvothercategory = document.getElementById("dvothercategory");
var e = document.getElementById("ddlcategory");
var category = e.options[e.selectedIndex].value;
if(category == "other")
{
dvothercategory.style.display="";
}
else
{
dvothercategory.style.display="none";
}
}

    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    jQuery(document).ready(function($) {
        $('a[data-toggle="collapse"]').click(function() {
            $(this).find('i.fa').toggleClass('fa-chevron-right fa-chevron-up');
        })
    });
*/	

    </script>
	
	
	<script>
	
	// LOGOUT
	function logout(){
	
	var logout = {
	  "async": true,
	  "crossDomain": true,
	  "url": "http://catalog-api-dev.elasticbeanstalk.com/auth/logout",
	  "method": "GET",
	  "xhrFields": {
			        "withCredentials": true
			    },
	            
	  "headers": {
		"cache-control": "no-cache"
		
	  }
	}
	
	$.ajax(logout).done(function (response) {
		
		console.log(response); 
	});
	}
	
	// GET TOKEN ID
	function getToken(){
			var getTokenArr = {
	  "async": true,
	  "crossDomain": true,
	  "url": "http://catalog-api-dev.elasticbeanstalk.com/auth/login",
	  "method": "GET",
	  "xhrFields": {
			        "withCredentials": true
			    },
	            
	  "headers": {
		"cache-control": "no-cache"
		
	  }
	}
	$.ajax(getTokenArr).done(function (response) {
		tk = response._token;
		console.log(tk); 
	});
	}
	
	// LOGIN WITH TOKEN
	function login(){
		var loginArr = {
  "async": true,
  "crossDomain": true,
  "url": "http://catalog-api-dev.elasticbeanstalk.com/auth/login",
  "method": "POST",
  "xhrFields" : {
			        "withCredentials": true
			    },
	            
  "headers": {
    "cache-control": "no-cache",
    
    "content-type": "application/x-www-form-urlencoded"
  },
  "data": {
    "email": "ira@gmail.com",
    "password": "irairaira",
    "remember": "1",
    "_token": tk
  }
}

		$.ajax(loginArr).done(function (response) {
		
		userid=response._user_id;
	  console.log(tk);
	  console.log(userid);
		
		bindcategory();
		
		});
	
	}
	
	// BINDING CATEGORY FOR PRE-POPULATED DROPDOWN
	function bindcategory() {
	 var bindCategoryArr = {
	  "async": true,
	  "crossDomain": true,
	  "url": "http://catalog-api-dev.elasticbeanstalk.com/categories",
	  "method": "GET",
	  "xhrFields": {
        		"withCredentials": true
    		},
	  "headers": {
		"cache-control": "no-cache"
		//"_token":tk
	}
	  
	}

	$.ajax(bindCategoryArr).done(function (response) {
			var dt = response.content;
			var i;
			$("#ddlcategory").html("");
			var dropdown_data="";
			dropdown_data = "<option value='0'>--Select Category--</option>";
			$(dropdown_data).appendTo("#ddlcategory");

			for(i=0; i<dt.length; i++)
			{	
				dropdown_data ="<option value='"+dt[i].id+"'>"+dt[i].name+"</option>";
				$(dropdown_data).appendTo("#ddlcategory");
			}
			dropdown_data = "<option value='other'>other</option>";
			$(dropdown_data).appendTo("#ddlcategory");
		});
}


		// ADD CATEGORY FUNCTION
		function addcatalog() {

	var title = document.getElementById("txttitle").value;
	var name = document.getElementById("txtname").value;
	var e = document.getElementById("ddlcategory");
	var fileName = (document.getElementById("filetxtbox")).value;
	var fileUrl = (document.getElementById("filetitle")).value;

	var cat = e.options[e.selectedIndex].value;
	var category="";
		if(cat == "other")
			{
			category = document.getElementById("txtcategory").value;
			}
		else
			{
			category =cat;
			}
			
	if(fileName == ""){

	var addCat = {
  "async": true,
  "crossDomain": true,
  "url": "http://catalog-api-dev.elasticbeanstalk.com/catalogs",
  "method": "POST",
  "data" : {
	  "category" : category,
	  "name" : name,
	  "title" : title,
	  "author" : userid ,
	  "_token" : tk,
	  "image" : fileUrl,
	  "layout" : 'catalog'
  },
   "xhrFields": {
			        "withCredentials": true
			    },
		  
  "headers": {
    "cache-control": "no-cache",
    
    "content-type": "application/x-www-form-urlencoded"
  }
 }
 

}
else if(fileUrl == ""){
		var addCat = {
  "async": true,
  "crossDomain": true,
  "url": "http://catalog-api-dev.elasticbeanstalk.com/catalogs",
  "method": "POST",
  "data" : {
	"category" : category,
	"name" : name,
	"title" : title,
	"author" : userid,
	"_token" : tk,
	"image" : fileName,
	"layout" : 'catalog'  
  },
  "xhrFields": {
			        "withCredentials": true
			    },
		  
  "headers": {
    "cache-control": "no-cache",
    
    "content-type": "application/x-www-form-urlencoded"
  }
 }
  
}

else{
	var addCat = {
  "async": true,
  "crossDomain": true,
  "url": "http://catalog-api-dev.elasticbeanstalk.com/catalogs",
  "method": "POST",
  "data" : {
	"category" : category,
	"name" : name,
	"title" : title,
	"author" : userid,
	"_token" : tk,
	"layout" : 'catalog'  
  },
  "xhrFields": {
			        "withCredentials": true
			    },
		  
  "headers": {
    "cache-control": "no-cache",
    
    "content-type": "application/x-www-form-urlencoded"
  }
 }
  
}
$.ajax(addCat).done(function (response) {
	
	console.log(JSON.stringify(response));
	alert("\"Catalog created Successfully\"");
	$("#txttitle").val("");
	$("#txtname").val("");
	$("#ddlcategory").val("");
	$("#filetxtbox").val("");
	$("#filetitle").val("");

	$("#ddlcategory").val(0);
});

}
	
	</script>
	
</body>

</html>
