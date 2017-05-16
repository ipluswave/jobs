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
                <li>
                    <a href="#"><i class="sprite sprite-cu-storage"></i> ideate</a>
                </li>
                <li class="active">
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
                <li><a href="#">Target</a></li>
                <li><a href="#">View response and potential target</a></li>
                <!-- <li class="breadcrumb-btn pull-right"><a href="#" class="btn btn-navy btn-lg"><i class="fa fa-plus"></i>&nbsp;add new object</a></li> -->
            </ol>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <ul class="list-inline">
                                    <li>
                                        <h3 class="panel-title">Summary</h3></li>
                                </ul>
                            </div>
                            <div class="panel-body">
                                <form>
                                    <div class="form-group">
                                        <label for="name" class="sr-only">Name</label>
                                        <select name="" id="" class="form-control">
                                            <option value="" disabled selected>Select object type</option>
                                            <option value="1">Curator 1</option>
                                            <option value="1">Curator 2</option>
                                            <option value="1">Curator 3</option>
                                            <option value="1">Curator 4</option>
                                        </select>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6"></div>
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <ul class="list-inline">
                                    <li>
                                        <h3 class="panel-title">Summary</h3></li>
                                </ul>
                            </div>
                            <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered target">
                                    <tbody>
                                        <tr>
                                            <td class="vert-align">
                                                <span class="target-count h1">123</span>
                                                <span class="target-name">likely participants</span>
                                            </td>
                                            <td>
                                               <span class="target-count h1">34</span>
                                                <span class="target-name">available participants</span> 
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span class="target-count h1">45%</span>
                                                <span class="target-name">Predicted success</span>
                                            </td>
                                            <td>
                                               <span class="target-count h1">35%</span>
                                                <span class="target-name">Predicted participants</span> 
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
							
							<div id="appendhere">
							
							</div>
                          
                            </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
                <div class="row">
                    <div class="col-md-12 text-center">
                    </div>
                </div>
                <br>
            </div>
        </div><input type="hidden" name="_token" value="">
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
	var obj = "";
	var usr = "";
    $( document ).ready( function() {
	
    	/* $.ajax( {
	    	type: 'GET',
	        url: 'http://catalog-api-dev.elasticbeanstalk.com/auth/login',
	        xhrFields: {
        		withCredentials: true
    		},
	    } ).done( function( response ) {
	           alert(JSON.stringify(response));
	            if ( response && response._token )
	            	$( 'input[name="_token"]' ).val( response._token );

	            	console.log( $( 'input[name="_token"]' ).val() );
	            	tk = response._token;
	            	callobject();
	    } ); */

    	//$( '#dologin' ).click( function() {
        	$.ajax( {
	            type: 'POST',
	            url: 'http://catalog-api-dev.elasticbeanstalk.com/auth/login',
	            xhrFields: {
			        withCredentials: true
			    },
	            data: {
	            	email: 'cartwright.jake@hotmail.com',
	            	password: 'test',
	            	_token: $( 'input[name="_token"]' ).val()
	            }
	        } ).done( function( response ) {
	            console.log( response ); 
	            tk = response._token;
				callobjects();
				callusers();
				callcatalogs();
	        } );
    	//} );
    } );

function callobjects() {
	//alert("inside object call");
		var settingsObj = {
  "async": true,
  "crossDomain": true,
  "url": "http://catalog-api-dev.elasticbeanstalk.com/objects",
  "method": "GET",
  "xhrFields" : {
			        "withCredentials" : true
			    },
  "headers": {
    "cache-control": "no-cache",
    
  }
}
$.ajax(settingsObj).done(function (response) {
	obj = response.content.data;
	alert("Object ==========> " +JSON.stringify(obj));
});
}

function callusers() {
		var settingsUser = {
  "async": true,
  "crossDomain": true,
  "url": "http://catalog-api-dev.elasticbeanstalk.com/users",
  "method": "GET",
  "xhrFields" : {
			        "withCredentials" : true
			    },
  "headers": {
    "cache-control": "no-cache",
    
  }
}
$.ajax(settingsUser).done(function (response) {
	usr = response.content;
	//alert("Object ==========> " +JSON.stringify(usr));
});
}
	
	
function callcatalogs() {
		var settings = {
  "async": true,
  "crossDomain": true,
  "url": "http://catalog-api-dev.elasticbeanstalk.com/catalogs",
  "method": "GET",
  "xhrFields" : {
			        "withCredentials" : true
			    },
  "headers": {
    "cache-control": "no-cache",
    
  }

}

$.ajax(settings).done(function (response) {
  
  //console.log(JSON.stringify(response));
  
  var dt = response.content;
	   
  var data = dt.data;
  var objdata = obj;
  var usrdata = usr.data;
  
  alert(obj.data +' &&&&&& '+ usr.data);
  
  
  var str = "";
  
  for(i=0; i<data.length; i++)
  {
		str = str + '<div class="col-lg-12"><div class="panel panel-default"><div class="panel-heading"><ul class="list-inline"><li><h3 class="panel-title">Group '+ i+' Targets</h3></li></ul></div>';
str = str + '<div class="panel-body"><a href="#!" class="btn btn-navy btn-sm">&nbsp;&nbsp;&nbsp;&nbsp;'+data[i].name+'&nbsp;&nbsp;&nbsp;&nbsp;</a><br><br><div class="vert-align target-list"><ul class="list-inline">';
  
  str = str + '<li><a href="#" class="target">Count Likes<span class="count">'+data[i].count_likes+'</span></a></li>';
  
  str = str +'<li><a href="#" class="target">Count Comments<span class="count">'+data[i].count_comments+'</span></a></li>';
  
  str = str +'<li><a href="#" class="target">Count Follows<span class="count">'+data[i].count_follows+'</span></a></li>';
  
  str = str +'<li><a href="#" class="target">Total Transaction<span class="count">'+data[i].total_transaction+'</span></a></li>';
  str = str +'<li><a href="#" class="target">Author<span class="count">'+data[i].author+'</span></a></li>';
  
  str = str +'</ul></div></div>';
  

  
  for(j=0; j < objdata.length; j++){

  if(objdata[j].catalog_id == data[i].id){
	  if(j == 0){
	str = str +'<div class="panel-body"><a href="#!" class="btn btn-navy btn-sm">&nbsp;&nbsp;&nbsp;&nbsp;Objects&nbsp;&nbsp;&nbsp;&nbsp;</a><br><br><div class="vert-align target-list"><ul class="list-inline">';

}
  str = str +'<li><a href="#" class="target">'+objdata[j].name+'<span class="count">'+objdata[j].count_likes +'</span><span class="count">'+objdata[j].count_comments +'</span><span class="count">'+objdata[j].count_follows +'</span></a></li>';
		  if(j == 0){
	str = str +'</ul></div></div>';
}
		}
  }
  
  
  
  
  str = str +'<div class="panel-body"><a href="#!" class="btn btn-navy btn-sm">&nbsp;&nbsp;&nbsp;&nbsp;Users&nbsp;&nbsp;&nbsp;&nbsp;</a><br><br><div class="vert-align target-list"><ul class="list-inline">';
  
  for(k=0; k<usrdata.length; k++){
	  if(objdata[k].id == data[i].author){
  str = str +'<li><a href="#" class="target">'+usrdata[k].name+ '<span class="count">'+usrdata[k].commissions_earned+'</span><span class="count">'+usrdata[k].comission_rate+'</span><span class="count">'+usrdata[k].personal_price_earned+'</span><span class="count">'+usrdata[k].price_earner+'</span></a></li>';
	}
}
str = str +'</ul></div></div></div></div>';


	}
	  $("#appendhere").append(str);
});
 }
	</script>


    
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    jQuery(document).ready(function($) {
        $('a[data-toggle="collapse"]').click(function() {
            $(this).find('i.fa').toggleClass('fa-chevron-right fa-chevron-up');
        });
        $('select').comboSelect();
    });
    </script>
</body>

</html>
