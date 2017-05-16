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
                                        <li><span class="username" id="liemail">Kyle Petterson</span></li>
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
                                        <label for="title" class="sr-only">Title</label>
                                        <input type="text" class="form-control input-lg" id="title" placeholder="Enter Title">
                                    </div>
                                    <div class="form-group">
                                        <label for="desc" class="sr-only">Password</label>
                                        <textarea name="" class="form-control input-lg" rows="3" cols="4" placeholder="Enter Description"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="title" class="sr-only">Title</label>
                                        <input type="text" class="form-control input-lg" id="title" placeholder="Enter Image URL">
                                    </div>
                                    <div class="form-group">
                                        <label for="title" class="sr-only">Title</label>
                                        <input type="text" class="form-control input-lg" id="title" placeholder="Enter tags">
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
                                        <h3 class="panel-title">Toxonomy</h3></li>
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
                                    <li role="presentation"><a href="#"><i class="sprites sprite-obj"></i><br>object</a></li>
                                    <li role="presentation" class="active"><a href="#"><i class="sprites sprite-gal"></i><br>Gallery</a></li>
                                    <li role="presentation"><a href="#"><i class="sprites sprite-prc"></i><br>promoted</a></li>
                                    <li role="presentation"><a href="#"><i class="sprites sprite-pro"></i><br>process</a></li>
                                </ul>
                                <br>
                                <a href="#" class="btn btn-navy btn-sm">&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;Recommended content&nbsp;&nbsp;&nbsp;&nbsp;</a>
                                <br>
                                <div class="displaybox">
                                	<ul class="list-inline">
                                		<li>
                                			<div class="item">
                                				<span class="item-remove">
                                					<a href="#" class="btn btn-white btn-rounded btn-xs"><i class="fa fa-times"></i></a>
                                				</span>
                                				<figure>
                                					<img src="resources/images/pd.png" alt="">
                                				</figure>
                                				<ul class="list-unstyled">
                                					<li class="op">$179.99</li>
                                					<li class="np">$99.99</li>
                                					<li class="name">bilt</li>
                                					<li class="desc">techno mesh jacket</li>
                                				</ul>
                                			</div>
                                		</li>
                                		<li>
                                			<div class="item">
                                				<span class="item-remove">
                                					<a href="#" class="btn btn-white btn-rounded btn-xs"><i class="fa fa-times"></i></a>
                                				</span>
                                				<figure>
                                					<img src="resources/images/pd.png" alt="">
                                				</figure>
                                				<ul class="list-unstyled">
                                					<li class="op">$179.99</li>
                                					<li class="np">$99.99</li>
                                					<li class="name">bilt</li>
                                					<li class="desc">techno mesh jacket</li>
                                				</ul>
                                			</div>
                                		</li>
                                		<li>
                                			<div class="item">
                                				<span class="item-remove">
                                					<a href="#" class="btn btn-white btn-rounded btn-xs"><i class="fa fa-times"></i></a>
                                				</span>
                                				<figure>
                                					<img src="resources/images/pd.png" alt="">
                                				</figure>
                                				<ul class="list-unstyled">
                                					<li class="op">$179.99</li>
                                					<li class="np">$99.99</li>
                                					<li class="name">bilt</li>
                                					<li class="desc">techno mesh jacket</li>
                                				</ul>
                                			</div>
                                		</li>
                                		<li>
                                			<div class="item">
                                				<span class="item-remove">
                                					<a href="#" class="btn btn-white btn-rounded btn-xs"><i class="fa fa-times"></i></a>
                                				</span>
                                				<figure>
                                					<img src="resources/images/pd.png" alt="">
                                				</figure>
                                				<ul class="list-unstyled">
                                					<li class="op">$179.99</li>
                                					<li class="np">$99.99</li>
                                					<li class="name">bilt</li>
                                					<li class="desc">techno mesh jacket</li>
                                				</ul>
                                			</div>
                                		</li>
                                	</ul>
                                </div>
                                <br>
                                <div>
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
                		<button class="btn btn-navy btn-lg">&nbsp;&nbsp;&nbsp;<i class="fa fa-download"></i>&nbsp;&nbsp;save catalog detail&nbsp;&nbsp;&nbsp;&nbsp;</button>
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
    <script>
	 $(document).ready(function () {
	  $.ajax({
	   url:'http://54.86.245.207/api/User/RetrieveProfile?UserID=10001&SessionKey=3d25cc683506c7d227ef92220a07f794',
	   type: 'GET',
                     dataType: 'json',
                    
                     success: function (data, textStatus, xhr) {
                         //alert(JSON.stringify(data.UserID));
						 $("#liemail").html(data.Email);
                     },
                     error: function (xhr, textStatus, errorThrown) {
                         console.log('Error in Operation');
                     }
                 });
				 });
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
