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
                <li><a href="#">curator</a></li>
                <li><a href="#">Add Curator</a></li>
            </ol>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <ul class="list-inline">
                                    <li>
                                        <h3 class="panel-title">Curator Details</h3>
                                    </li>
                                </ul>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-4 text-center">
                                        <img src="resources/images/avatar2.jpg" alt="avatar" class="img-circle img-responsive">
                                        <p><i><small>upload user photo</small></i></p>
                                        <button class="btn btn-white btn-sm">&nbsp;&nbsp;&nbsp;upload&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                    </div>
                                    <div class="col-md-8">
                                        <form>
                                            <div class="form-group">
                                                <label for="title" class="sr-only">Name</label>
                                                <input type="text" class="form-control input-lg" id="username" placeholder="Enter Name">
                                            </div>
                                            <div class="form-group">
                                                <label for="email" class="sr-only">Email Id</label>
                                                <input type="email" class="form-control input-lg" id="email" placeholder="Enter Email">
                                            </div>
                                            <div class="form-group">
                                                <label for="password" class="sr-only">Password</label>
                                                <input type="password" class="form-control input-lg" id="password" placeholder="Enter Password">
                                            </div>
                                            <div class="form-group">
                                                <label for="desc" class="sr-only">Description</label>
                                                <textarea name="" class="form-control input-lg" rows="5" id="userdescription" cols="4" placeholder="Enter Description"></textarea>
                                            </div>
                                            
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <ul class="list-inline">
                                    <li>
                                        <h3 class="panel-title">Catalog list</h3>
                                    </li>
                                </ul>
                            </div>
                            <div class="panel-body">
                                <button class="btn btn-navy btn-sm" data-toggle="modal" data-target="#myModal">&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;add new object&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                <br>
                                <br>
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered" id="appendherecat">
                                        <tbody>
                                            
                                        </tbody>
                                    </table>
                                </div>
                                <button class="btn btn-white btn-sm" data-toggle="modal" data-target="#myModal2">&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;add one more section&nbsp;&nbsp;&nbsp;&nbsp;</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 text-center">
                        <button class="btn btn-navy btn-lg" onclick="adduser()">&nbsp;&nbsp;&nbsp;<i class="fa fa-download"></i>&nbsp;&nbsp;save curator detail&nbsp;&nbsp;&nbsp;&nbsp;</button>
                    </div>
                </div>
                <br>
            </div>
        </div>
        <!-- /#page-content-wrapper -->
    </div>
    <!--Modal-->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <span class="item-remove pull-right">
                        <a href="#" class="btn btn-white btn-rounded btn-xs" data-dismiss="modal" aria-label="Close"><i class="fa fa-times"></i></a>
                    </span>
                </div>
                <div class="modal-body">
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
                                                    <button class="btn btn-navy btn-sm" >&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;upload image&nbsp;&nbsp;&nbsp;&nbsp;</button>
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
                                        <button class="btn btn-white btn-sm">&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;add item&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <button class="btn btn-navy btn-lg" onclick="adduser()">&nbsp;&nbsp;&nbsp;<i class="fa fa-download"></i>&nbsp;&nbsp;save catalog detail&nbsp;&nbsp;&nbsp;&nbsp;</button>
                        </div>
                    </div>
                </div>
                <!-- <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
          </div> -->
            </div>
        </div>
    </div>
    <!--modal2-->
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <span class="item-remove pull-right">
                        <a href="#" class="btn btn-white btn-rounded btn-xs" data-dismiss="modal" aria-label="Close"><i class="fa fa-times"></i></a>
                    </span>
                </div>
                <div class="modal-body">
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
                                            <tbody>
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
                                                        <button class="btn btn-blue pull-right btn-lg">select</button>
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
                                                        <button class="btn btn-blue pull-right btn-lg">select</button>
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
                                                        <button class="btn btn-blue pull-right btn-lg">select</button>
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
                                                        <button class="btn btn-blue pull-right btn-lg">select</button>
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
                                                        <button class="btn btn-blue pull-right btn-lg">select</button>
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
                                                        <button class="btn btn-blue pull-right btn-lg">select</button>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
        	
    	} );

	</script>

<!-- 
    <script>
	
	



    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    jQuery(document).ready(function($) {
        $('a[data-toggle="collapse"]').click(function() {
            $(this).find('i.fa').toggleClass('fa-chevron-right fa-chevron-up');
        })
    });
    </script> -->

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
		
		callcatalogs();
		
		});
	
	}

// ADD USERS
function adduser() {

		var name = document.getElementById("username").value;
		var desc = document.getElementById("userdescription").value;
		var email = document.getElementById("email").value;
		var password = document.getElementById("password").value;
		
		var addUser = {
  "async": true,
  "crossDomain": true,
  "url": "http://catalog-api-dev.elasticbeanstalk.com/users",
  "method": "POST",
  "data" : {
	  "name" : name,
	  "description" : desc,
	  "email" : email,
	  "password" : password
  },
  "xhrFields": {
			        "withCredentials": true
			    },
  "headers": {
    "cache-control": "no-cache",
    
    "content-type": "application/x-www-form-urlencoded"
  }
}

$.ajax(addUser).done(function (response) {

console.log(JSON.stringify(response)); 
//alert("\"User Created Successfully\"");
 $("#username").val("");
$("#userdescription").val("");
$("#email").val("");
$("#password").val("");
 alert(JSON.stringify(response));
});

}

// LOAD USER's CATALOGS
function callcatalogs() {
		var settings = {
  "async": true,
  "crossDomain": true,
  "url": "http://catalog-api-dev.elasticbeanstalk.com/users/"+userid+"/catalogs",
  "method": "GET",
  "xhrFields" : {
			        "withCredentials" : true
			    },
  "headers": {
    "cache-control": "no-cache",
    
  }

}

$.ajax(settings).done(function (response) {
  
  console.log(JSON.stringify(response));
  
  var data = response.content;
$("#appendherecat").html("");   	   
  for(i=0; i<data.length; i++)
  {
	$("#appendherecat").append('<tr><td><div class="checkbox"><input id="check1" type="checkbox" name="check" value="check1"><label for="check1"></label></div></td><td><a href="#" class="product"><span class="product-img"><img alt="" src="'+data[i].image+'" width="50"></span><ul class="list-unstyled"><li><span class="product-name">'+data[i].name+'</span></li><li><span class="product-cat">'+data[i].layout+'</span></li></ul></a></td><td><ul class="list-inline pull-right"><li><a class="btn btn-white btn-lg" href="editcatalog.html?editId='+data[i].id+'"><i class="fa fa-pencil fa-lg"></i></a></li><li><button class="btn btn-white btn-lg remove" onclick="deletecatalog('+data[i].id+')"><i class="fa fa-times fa-lg"></i></button></li></ul></td></tr>');
  
  }
	});

}


// DELETE CATALOG
function deletecatalog(catalog_id){
		//alert("inside del");
		var settingsDel = {
  "async": true,
  "crossDomain": true,
  "url": "http://catalog-api-dev.elasticbeanstalk.com/catalogs/"+catalog_id,
  "method": "DELETE",
  "xhrFields" : {
			        "withCredentials" : true
			    },

  "headers": {
    "cache-control": "no-cache",
    
  }

}

$.ajax(settingsDel).done(function (response) {

	alert(JSON.stringify(response.message));
callcatalogs();
});		
		}

</script>

</body>

</html>
