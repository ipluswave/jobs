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
                <li><a href="#"><i class="sprite sprite-cu-helmet"></i> Curator</a>
                </li>
                <li class="active">
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
                <li><a href="#">List of objects</a></li>
                <li class="breadcrumb-btn pull-right"><a href="#" class="btn btn-navy">&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;&nbsp;add new object&nbsp;&nbsp;&nbsp;</a></li>
            </ol>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <ul class="list-inline">
                                    <li>
                                        <h3 class="panel-title">Objects</h3>
                                    </li>
                                </ul>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="col-lg-8 nopadding">
                                            <div class="input-group">
                                                <input type="text" class="form-control input-lg" placeholder="Type for search">
                                                <span class="input-group-btn">
                                                <button class="btn btn-white btn-lg" type="button"><i class="fa fa-search"></i></button>
                                              </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <button class="btn btn-white pull-right btn-sm">&nbsp;&nbsp;&nbsp;<i class="fa fa-eye"></i>&nbsp;&nbsp;display as content&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                    </div>
                                </div>
                                <br>
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>object</th>
                                                <th>curators</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody id="objectdata">
                                            <tr>
                                                <td>
                                                    <a href="#" class="product">
                                                        <span class="product-img">
                                                            <img alt="" src="resources/images/8.png" width="50">
                                                        </span>
                                                        <ul class="list-unstyled">
                                                            <li><span class="product-name">winter is coming</span></li>
                                                            <li><span class="product-cat">Promo AD</span></li>
                                                        </ul>
                                                    </a>
                                                </td>
                                                <td>
                                                    <a href="#" class="profile">
                                                        <span class="profile-img">
                                                            <img alt="" src="resources/images/avatar3_small.jpg" width="50">
                                                        </span>
                                                        <ul class="list-unstyled">
                                                            <li><span class="profile-name">Jimmy Hopkins</span></li>
                                                            <li><span class="profile-cat">Curator</span></li>
                                                        </ul>
                                                    </a>
                                                </td>
                                                <td>
                                                    <button class="btn btn-white pull-right btn-lg">&nbsp;&nbsp;&nbsp;<i class="fa fa-pencil"></i>&nbsp;&nbsp;Edit&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="#" class="product">
                                                        <span class="product-img">
                                                            <img alt="" src="resources/images/7.png" width="50">
                                                        </span>
                                                        <ul class="list-unstyled">
                                                            <li><span class="product-name">womens jacket</span></li>
                                                            <li><span class="product-cat">Catalog</span></li>
                                                        </ul>
                                                    </a>
                                                </td>
                                                <td>
                                                    <a href="#" class="profile">
                                                        <span class="profile-img">
                                                            <img alt="" src="resources/images/avatar4_small.jpg" width="50">
                                                        </span>
                                                        <ul class="list-unstyled">
                                                            <li><span class="profile-name">Isaiah davis</span></li>
                                                            <li><span class="profile-cat">admin</span></li>
                                                        </ul>
                                                    </a>
                                                    <a href="#" class="profile">
                                                        <span class="profile-img">
                                                            <img alt="" src="resources/images/avatar3_small.jpg" width="50">
                                                        </span>
                                                        <ul class="list-unstyled">
                                                            <li><span class="profile-name">Jimmy Hopkins</span></li>
                                                            <li><span class="profile-cat">Curator</span></li>
                                                        </ul>
                                                    </a>
                                                    <a href="#" class="profile">
                                                        <span class="profile-img">
                                                            <img alt="" src="resources/images/avatar2_small.jpg" width="50">
                                                        </span>
                                                        <ul class="list-unstyled">
                                                            <li><span class="profile-name">dawn wood</span></li>
                                                            <li><span class="profile-cat">admin</span></li>
                                                        </ul>
                                                    </a>
                                                </td>
                                                <td>
                                                     <button class="btn btn-white pull-right btn-lg">&nbsp;&nbsp;&nbsp;<i class="fa fa-pencil"></i>&nbsp;&nbsp;Edit&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="#" class="product">
                                                        <span class="product-img">
                                                            <img alt="" src="resources/images/6.png" width="50">
                                                        </span>
                                                        <ul class="list-unstyled">
                                                            <li><span class="product-name">winter gloves</span></li>
                                                            <li><span class="product-cat">Blog post with catalog</span></li>
                                                        </ul>
                                                    </a>
                                                </td>
                                                <td>
                                                    <a href="#" class="profile">
                                                        <span class="profile-img">
                                                            <img alt="" src="resources/images/avatar5_small.jpg" width="50">
                                                        </span>
                                                        <ul class="list-unstyled">
                                                            <li><span class="profile-name">walter hunt</span></li>
                                                            <li><span class="profile-cat">Curator</span></li>
                                                        </ul>
                                                    </a>
                                                </td>
                                                <td>
                                                     <button class="btn btn-white pull-right btn-lg">&nbsp;&nbsp;&nbsp;<i class="fa fa-pencil"></i>&nbsp;&nbsp;Edit&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="#" class="product">
                                                        <span class="product-img">
                                                            <img alt="" src="resources/images/5.png" width="50">
                                                        </span>
                                                        <ul class="list-unstyled">
                                                            <li><span class="product-name">winter is coming</span></li>
                                                            <li><span class="product-cat">Promo AD</span></li>
                                                        </ul>
                                                    </a>
                                                </td>
                                                <td>
                                                    <a href="#" class="profile">
                                                        <span class="profile-img">
                                                            <img alt="" src="resources/images/avatar2_small.jpg" width="50">
                                                        </span>
                                                        <ul class="list-unstyled">
                                                            <li><span class="profile-name">dawn wood</span></li>
                                                            <li><span class="profile-cat">Curator</span></li>
                                                        </ul>
                                                    </a>
                                                    <a href="#" class="profile">
                                                        <span class="profile-img">
                                                            <img alt="" src="resources/images/avatar7_small.jpg" width="50">
                                                        </span>
                                                        <ul class="list-unstyled">
                                                            <li><span class="profile-name">nelson mcdonalid</span></li>
                                                            <li><span class="profile-cat">admin</span></li>
                                                        </ul>
                                                    </a>
                                                </td>
                                                <td>
                                                     <button class="btn btn-white pull-right btn-lg">&nbsp;&nbsp;&nbsp;<i class="fa fa-pencil"></i>&nbsp;&nbsp;Edit&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="#" class="product">
                                                        <span class="product-img">
                                                            <img alt="" src="resources/images/7.png" width="50">
                                                        </span>
                                                        <ul class="list-unstyled">
                                                            <li><span class="product-name">womens jacket</span></li>
                                                            <li><span class="product-cat">Catalog</span></li>
                                                        </ul>
                                                    </a>
                                                </td>
                                                <td>
                                                    <a href="#" class="profile">
                                                        <span class="profile-img">
                                                            <img alt="" src="resources/images/avatar7_small.jpg" width="50">
                                                        </span>
                                                        <ul class="list-unstyled">
                                                            <li><span class="profile-name">nelson mcdonalid</span></li>
                                                            <li><span class="profile-cat">admin</span></li>
                                                        </ul>
                                                    </a>
                                                </td>
                                                <td>
                                                     <button class="btn btn-white pull-right btn-lg">&nbsp;&nbsp;&nbsp;<i class="fa fa-pencil"></i>&nbsp;&nbsp;Edit&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="#" class="product">
                                                        <span class="product-img">
                                                            <img alt="" src="resources/images/8.png" width="50">
                                                        </span>
                                                        <ul class="list-unstyled">
                                                            <li><span class="product-name">winter Gloves</span></li>
                                                            <li><span class="product-cat">Blog post with catalog</span></li>
                                                        </ul>
                                                    </a>
                                                </td>
                                                <td>
                                                    <a href="#" class="profile">
                                                        <span class="profile-img">
                                                            <img alt="" src="resources/images/avatar6_small.jpg" width="50">
                                                        </span>
                                                        <ul class="list-unstyled">
                                                            <li><span class="profile-name">gerald mcdonalid</span></li>
                                                            <li><span class="profile-cat">Curator</span></li>
                                                        </ul>
                                                    </a>
                                                    <a href="#" class="profile">
                                                        <span class="profile-img">
                                                            <img alt="" src="resources/images/avatar4_small.jpg" width="50">
                                                        </span>
                                                        <ul class="list-unstyled">
                                                            <li><span class="profile-name">isaiah davis</span></li>
                                                            <li><span class="profile-cat">admin</span></li>
                                                        </ul>
                                                    </a>
                                                </td>
                                                <td>
                                                     <button class="btn btn-white pull-right btn-lg">&nbsp;&nbsp;&nbsp;<i class="fa fa-pencil"></i>&nbsp;&nbsp;Edit&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- <div class="row">
                    <div class="col-md-12 text-center">
                        <button class="btn btn-navy btn-lg">&nbsp;&nbsp;&nbsp;<i class="fa fa-download"></i>&nbsp;&nbsp;save catalog detail&nbsp;&nbsp;&nbsp;&nbsp;</button>
                    </div>
                </div> -->
                <br>
            </div>
        </div>
			<div id="usernmae"></div>
        <!-- /#page-content-wrapper -->
    </div>
    <!-- /#wrapper -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="resources/js/jquery-2.1.4.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>
    <script>
var tk="",userid="";
	 $(document).ready(function () {
	
	//logout();
		getToken();
		login();
				

 });
var div_data="";
	



    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    jQuery(document).ready(function($) {
        $('a[data-toggle="collapse"]').click(function() {
            $(this).find('i.fa').toggleClass('fa-chevron-right fa-chevron-up');
        })
    });
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
		
		callobject();
		
		});
	
	}


// LOAD OBJECTS
function callobject() {
		var settings = {
  "async": true,
  "crossDomain": true,
  "url": "http://catalog-api-dev.elasticbeanstalk.com/objects",
  "method": "GET",
  "xhrFields": {
			        "withCredentials": true
			    },
  "headers": {
    "cache-control": "no-cache",
   
	}
  
}

$.ajax(settings).done(function (response) {
  
  var dt = response.content.data;
	
	var i;
	$("#objectdata").html("");
  
    for(i=0; i<dt.length; i=i+5)
    {
	
	var idI = dt[i].id;
	var authI = dt[i].author;
	
	var settings1 = {
  "async": true,
  "crossDomain": true,
  "url": "http://catalog-api-dev.elasticbeanstalk.com/users/"+dt[i].author,
  "method": "GET",
  "xhrFields": {
			        "withCredentials": true
			    },
	"headers": {
    "cache-control": "no-cache",
   
  }
  }
  var name = "";
  $.ajax(settings1).done(function (response) {

  var dt1 = response.content;
 
	settable(idI,dt1.name);
	
	
	});

	
	
	
       
    }
});
}

// Add to Table
function settable(dt,name)
{


var settings = {
  "async": true,
  "crossDomain": true,
  "url": "http://catalog-api-dev.elasticbeanstalk.com/objects/"+dt,
  "method": "GET",
  "xhrFields": {
			        "withCredentials": true
			    },
  "headers": {
    "cache-control": "no-cache",
   
	
	
  }
  
}

$.ajax(settings).done(function (response) {
  //console.log(response);
  var dt12 = response.content;
  
div_data ="<tr><td><a href='#' class='product'><span class='product-img'><img alt='' src='resources/images/8.png' width='50'></span>";
	div_data = div_data + "<ul class='list-unstyled'><li><span class='product-name'>"+dt12.name+"</span></li><li><span class='product-cat'>Promo AD</span></li></ul></a></td>";
	div_data = div_data + "<td><a href='#' class='profile'><span class='profile-img'><img alt='' src='resources/images/avatar3_small.jpg' width='50'></span>";
	
	div_data = div_data + "<ul class='list-unstyled'><li><span class='profile-name'>"+name+"</span></li><li><span class='profile-cat'>Curator</span></li></ul></a></td>";
	
div_data = div_data + "<td><button class='btn btn-white pull-right btn-lg'>&nbsp;&nbsp;&nbsp;<i class='fafa-pencil'></i>&nbsp;&nbsp;Edit&nbsp;&nbsp;&nbsp;&nbsp;</button></td></tr>";

$(div_data).appendTo("#objectdata");

});
	
}

</script>

</body>

</html>
