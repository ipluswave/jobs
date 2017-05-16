<!DOCTYPE html>
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
    <link href="resources/css/combo.select.css" rel="stylesheet">
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
                <li><a href="#"><i class="sprite sprite-cu-helmet"></i> Curator</a>
                </li>
                <li>
                    <a href="#"><i class="sprite sprite-cu-splash"></i> Curation</a>
                </li>
                <li class="active">
                    <a href="#"><i class="sprite sprite-cu-storage"></i> ideate</a>
                </li>
                <li>
                    <a href="#"><i class="sprite sprite-cu-target"></i> target</a>
                </li>
            </ul>
            <div class="sidebar-logout">
                <button class="btn btn-navy btn-lg">&nbsp;&nbsp;&nbsp;<i class="fa fa-sign-out"></i>&nbsp;&nbsp;log out&nbsp;&nbsp;&nbsp;&nbsp;</button>
            </div>
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
                <li><a href="#">Ideate</a></li>
                <li><a href="#">Catalog item</a></li>
                <li><a href="#">Add items</a></li>
                <!-- <li class="breadcrumb-btn pull-right"><a href="#" class="btn btn-navy btn-lg"><i class="fa fa-plus"></i>&nbsp;add new object</a></li> -->
            </ol>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <ul class="list-inline">
                                    <li>
                                        <h3 class="panel-title">Create An object</h3></li>
                                    <li class="pull-right"><a href="#" data-toggle="collapse" data-target="#headline"><i class="fa fa-chevron-up"></i></a></li>
                                </ul>
                            </div>
                            <div class="panel-body collapse in" id="headline">
                                <form>
									
									
                                    
                                    <div class="form-group">
                                        <label for="name" class="sr-only">Name</label>
                                        <select name="" id="appendherecategory" class="form-control" placeholder="Select Text">
                                            <option value="" selected>Select Category</option>
                                           
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="name" class="sr-only">Name</label>
                                        <input type="text" class="form-control input-lg" id="objecttitle" placeholder="Enter Name">
                                    </div>
                                    <div class="form-group">
                                        <label for="desc" class="sr-only">text</label>
                                        <textarea id="objectdescription" class="form-control input-lg" rows="3" cols="4" placeholder="Enter Text"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="title" class="sr-only">url</label>
                                        <input type="text" class="form-control input-lg" id="objectimage" placeholder="Enter URL">
                                    </div>
<!--
                                    <div class="form-group">
                                        <label for="title" class="sr-only">source</label>
                                        <input type="text" class="form-control input-lg" id="objectsource" placeholder="Enter Source">
                                    </div>
-->
                                </form>
                                    <!--                                <div id="cs-tabs">
 
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Upload from your device</a></li>
                                        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Enter Image URL</a></li>
                                    </ul>
                                    <!-- Tab panes -->
                                <!--    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active" id="home">
                                            <form>
                                                <div class="form-group">
                                                    <input type="file" class="form-control input-lg" id="title" placeholder="Select file">
                                                    <small>(Maximum size: 30 MB)</small>
                                                </div>
                                                <button class="btn btn-navy btn-sm">&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;upload image&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                            </form>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="profile">
                                            <form>
                                                <div class="form-group">
                                                    <input type="text" class="form-control input-lg" id="title" placeholder="Enter Image URL">
                                                    <small>Support Services: Dropbox; Web Images; FTP; Flickr; Google Drive; Imgur; Instagram</small>
                                                </div>
                                                <button class="btn btn-navy btn-sm">&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;upload image&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                            </form>
                                        </div>
                                    </div> 
                                </div> -->
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <ul class="list-inline">
                                    <li>
                                        <h3 class="panel-title">Assign curator</h3></li>
                                </ul>
                            </div>
                            <div class="panel-body" >
                                <form>
                                    <div class="form-group">
                                        <label for="name" class="sr-only">Name</label>
                                        <select name="" id="appendhereusers" class="form-control">
                                            <option disabled selected>Select Curator</option>
                                            
                                        </select>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <ul class="list-inline">
                                    <li>
                                        <h3 class="panel-title">Assign to catalog / collection</h3></li>
                                </ul>
                            </div>
                            <div class="panel-body">
                                <form>
                                    <div class="form-group">
                                        <label for="name" class="sr-only">Name</label>
                                        <select name="" id="appendherecatalog" class="form-control">
                                            <option disabled selected>Select Object</option>
                                             
                                        </select>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="displaybox">
                                    <ul class="list-inline">
                                        <li>
                                            <div class="item-grid">
                                                <figure>
                                                    <span class="item-remove">
                                                        <a href="#" class="btn btn-white btn-rounded btn-xs"><i class="fa fa-times"></i></a>
                                                    </span>
                                                    <img src="resources/images/suite.png" alt="">
                                                </figure>
                                                <ul class="list-unstyled">
                                                    <li class="name">base layerone-piece bodysuit</li>
                                                    <li class="seperator"></li>
                                                    <li class="desc">FREEZE-OUT® utilizes cutting-edge membrane laminate barrier technology to block wind and retain ...</li>
                                                </ul>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <ul class="list-inline">
                                    <li>
                                        <h3 class="panel-title">Primary image</h3></li>
                                </ul>
                            </div>
                            <div class="panel-body">
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
                                                    <input type="file" class="form-control input-lg" id="title" placeholder="Select file">
                                                    <small>(Maximum size: 30 MB)</small>
                                                </div>
                                                <button class="btn btn-navy btn-sm">&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;upload image&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                            </form>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="profile">
                                            <form>
                                                <div class="form-group">
                                                    <input type="text" class="form-control input-lg" id="title" placeholder="Enter Image URL">
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
                                        <h3 class="panel-title">Detail image</h3></li>
                                </ul>
                            </div>
                            <div class="panel-body">
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
                                                    <input type="file" class="form-control input-lg" id="title" placeholder="Select file">
                                                    <small>(Maximum size: 30 MB)</small>
                                                </div>
                                                <button class="btn btn-navy btn-sm">&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;upload image&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                            </form>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="profile">
                                            <form>
                                                <div class="form-group">
                                                    <input type="text" class="form-control input-lg" id="title" placeholder="Enter Image URL">
                                                    <small>Support Services: Dropbox; Web Images; FTP; Flickr; Google Drive; Imgur; Instagram</small>
                                                </div>
                                                <button class="btn btn-navy btn-sm">&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;upload image&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 text-center">
                        <button class="btn btn-navy btn-lg" onclick="addobject()">&nbsp;&nbsp;&nbsp;<i class="fa fa-download"></i>&nbsp;&nbsp;Create new object&nbsp;&nbsp;&nbsp;&nbsp;</button>
                    </div>
                </div>
                <br>
            </div>
        </div>
        <!-- /#page-content-wrapper -->
    </div>
    <!-- /#wrapper -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="resources/js/jquery-2.1.4.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.combo.select.js"></script>
    <script>

	var tk = "";
	var catalogName = ""; 
	
	$( document ).ready( function() {
			
	//logout();
	getToken();
	login(); 
    getusers();
	getcatalogs();
	bindcategory();
	        
	        
    	} );
	
	
	

	
	
	
	
/*
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    $(document).ready(function($) {
        $('a[data-toggle="collapse"]').click(function() {
            $(this).find('i.fa').toggleClass('fa-chevron-right fa-chevron-up');
        });
//        $('select').comboSelect();
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

	function bindcategory() {
	 var bindcategoryArr = {
	  "async": true,
	  "crossDomain": true,
	  "url": "http://catalog-api-dev.elasticbeanstalk.com/categories",
	  "method": "GET",
	  "xhrFields": {
			        "withCredentials": true
			    },"headers": {
		"cache-control": "no-cache",
		
		"_token":tk
		
	  }
	  
	}

	$.ajax(bindcategoryArr).done(function (response) {
			var dt = response.content;
		
			for(i=0; i<dt.length; i++)
			{	
				$("#appendherecategory").append('<option value="'+dt[i].id+'">'+dt[i].name+'</option>');
				
			}
			
		});
}

//LOAD USERS
function getusers() {
		 
		 var getuserId = {
		  "async": true,
		  "crossDomain": true,
		  "url": "http://catalog-api-dev.elasticbeanstalk.com/search/users",
		  "method": "POST",
		  "xhrFields": {
			        "withCredentials": true
			    },
		  "headers": {
			"cache-control": "no-cache",
	
			"content-type": "application/x-www-form-urlencoded"
		  }
		  
		  }
		  $.ajax(getuserId).done(function (response) {
			var dt = response.content.data;
			for(i=0; i<dt.length; i++)
				{
					$("#appendhereusers").append('<option value="'+dt[i].id+'">'+dt[i].name+'</option>');
				}
				console.log("users loaded");
		  });
  
	}
	
// LOAD CATALOGS
	function getcatalogs() {
		 
		 var getcatalogsFn = {
		  "async": true,
		  "crossDomain": true,
		  "url": "http://catalog-api-dev.elasticbeanstalk.com/search/catalogs",
		  "method": "POST",
		  "xhrFields": {
			        "withCredentials": true
			    },
		  "headers": {
			"cache-control": "no-cache",
	
			"content-type": "application/x-www-form-urlencoded"
		  }
		  
		  }
		  $.ajax(getcatalogsFn).done(function (response) {
			var dt = response.content;
			var data  = dt.data;
			for(i=0; i<dt.data.length; i++)
				{
					$("#appendherecatalog").append('<option value="'+data[i].id+'">'+data[i].name+'</option>');
				}
				console.log("catalogs loaded");
		  });
  
	}

// Add OBJECT
function addobject() {

		var objecttitle = document.getElementById("objecttitle").value;
		var objectdescription = document.getElementById("objectdescription").value;
		var objectimage = document.getElementById("objectimage").value;
		
		var appendherecategory = document.getElementById("appendherecategory");
		
		
		var appendherecatalog = document.getElementById("appendherecatalog");
		var appendhereusers = document.getElementById("appendhereusers");
		
		var addObj = "";

		if((appendherecatalog.selectedIndex != 0) && (appendhereusers.selectedIndex != 0)){	
				alert("in if");
				addobject = {
			  "async": true,
			  "crossDomain": true,
			  "url": "http://catalog-api-dev.elasticbeanstalk.com/objects",
			  "method": "POST",
"data" : {

"category" : appendherecategory.value,
"type":"curated",
"name" : objecttitle,
"description": objectdescription,
"url"  : objectimage,
"curated" : "True",
//"_token" : tk,
"catalog_id" : appendherecatalog.value,
"author" : appendhereusers.value,
"layout" : "ideate"
},
			  "xhrFields": {
								"withCredentials": true
							},
			  "headers": {
				"cache-control": "no-cache",
				"postman-token": "893eea22-8ae0-aa4a-fdf3-eddf236a603f",
				"content-type": "application/x-www-form-urlencoded"
			  }
			}
			
			$.ajax(addobject).done(function (response) {console.log(response);}); 
		}
			
			
			else{
				alert("in else");
				addobject = {
			  "async": true,
			  "crossDomain": true,
			  "url": "http://catalog-api-dev.elasticbeanstalk.com/objects",
			  "method": "POST",
"data" : {
"category" : appendherecategory.value,
"type" : "curated",
"name":objecttitle,
"description":objectdescription,
"url":objectimage,
"curated":"True",
"_token":tk,
"author" : userid,
"layout" : "ideate"
},
			  "xhrFields": {
								"withCredentials": true
							},
			  "headers": {
				"cache-control": "no-cache",
				"postman-token": "893eea22-8ae0-aa4a-fdf3-eddf236a603f",
				"content-type": "application/x-www-form-urlencoded"
			  }
			}
			
		 	$.ajax(addobject).done(function (response) {console.log(response);alert(JSON.stringify(response));}); 
			 
			}
			
		
		
	}
</script>
</body>

</html>
