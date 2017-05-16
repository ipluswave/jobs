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
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="displaybox">
                                            <ul class="list-inline">
                                                <li>
                                                    <div class="blog-grid">
                                                        <span class="blog-add">
                                                        <a href="#" class="btn btn-white btn-rounded btn-xs"><i class="fa fa-pencil"></i></a>
                                                    </span>
                                                        <span href="#" class="profile">
                                                        <span class="profile-img">
                                                            <img alt="" src="resources/images/avatar1_small.jpg" width="50">
                                                        </span>
                                                        <ul class="list-unstyled">
                                                            <li><span class="profile-name" id="autorname">Carlos Gutierrez</span></li>
                                                            <li><span class="profile-cat">expert</span><a class="profile-tag">on armor</a><a class="profile-tag">on racing</a></li>
                                                        </ul>
                                                        </span>
                                                        <ul class="list-unstyled">
                                                            <li class="name" id="name">Class aptent taciti sociosqu ad litora torquent per conubia nostra
                                                            </li>
                                                            <li class="seperator"></li>
                                                            <li class="desc"><strong>Features and Benefits</strong>
                                                                <br><p id="description">Quisque id urna bibendum, tristique mi vitae, scelerisque erat. Ut eu mi id sapien facilisis laoreet. Ut ac auctor tortor, ac euismod massa. </p></li>
                                                            <li class="blog-btn"><a href="#" class=" btn btn-navy btn-sm">&nbsp;&nbsp;&nbsp;Read more&nbsp;&nbsp;&nbsp;</a></li>
                                                        </ul>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="blog-image">
                                                        <span class="blog-add">
                                                            <a href="#" class="btn btn-white btn-rounded btn-xs">
                                                                <i class="fa fa-pencil"></i>
                                                            </a>
                                                        </span>
                                                        <span class="blog-bg" id="bigimg">
                                                            <img alt="" src="resources/images/bg.jpg" width="295">
                                                            <!-- <ul class="list-unstyled">
                                                                <li class="name">Class aptent taciti sociosqu ad litora torquent per conubia nostra
                                                                </li>
                                                                <li class="seperator"></li>
                                                                <li class="desc"><strong>Features and Benefits</strong>
                                                                    <br>Quisque id urna bibendum, tristique mi vitae, scelerisque erat. Ut eu mi id sapien facilisis laoreet. Ut ac auctor tortor, ac euismod massa. </li>
                                                            </ul> -->
                                                        </span>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <button class="btn btn-white pull-right btn-sm">&nbsp;&nbsp;&nbsp;<i class="fa fa-eye"></i>&nbsp;&nbsp;display as content&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                    </div>
                                </div>
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
    <!-- /#page-content-wrapper -->
    </div>
    <!-- /#wrapper -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="resources/js/jquery-2.1.4.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>
    <script>
	 $(document).ready(function () {
	
	$.ajax( {
	            type: 'POST',
	            url: 'http://catalog-api-dev.elasticbeanstalk.com/auth/login',
	            xhrFields: {
			        withCredentials: true
			    },
	            data: {
	            	email: 'cartwright.jake@hotmail.com',
	            	password: 'test',
	            	
	            }
	        } ).done( function( response ) {
	            console.log( response ); 
				callobject();
				}
				)
				

 });
var div_data="";
	function callobject() {
		var settings = {
  "async": true,
  "crossDomain": true,
  "url": "http://catalog-api-dev.elasticbeanstalk.com/objects/1",
  "method": "GET",
   "xhrFields": {
			        "withCredentials": true
			    },
  "headers": {
    "cache-control": "no-cache",
    "postman-token": "7f6412cc-304f-ed22-29eb-9a323c3b7c2a"
	
	
  }
  
}

$.ajax(settings).done(function (response) {
  //console.log(response);
  var dt = response.content;
  $("#name").html(dt.name);
  $("#description").html(dt.description);
  $("#bigimg").html('<img alt="" src="'+dt.url+'" width="295">');
  $("#autorname").html(dt.author.name);
 
  
  });
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
    </script>
</body>

</html>
