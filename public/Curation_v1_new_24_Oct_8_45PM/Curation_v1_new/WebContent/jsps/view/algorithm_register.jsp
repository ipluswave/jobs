<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Tempo</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/combo.select.css" rel="stylesheet">
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
                    <a href="#"><img src="images/logo.png" alt="logo"></a>
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
                <li>
                    <a href="#"><i class="sprite sprite-cu-target"></i> target</a>
                </li>
                <li class="active">
                    <a href="#"><i class="sprite sprite-cu-target"></i> Analyze</a>
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
                                            <img alt="" src="images/avatar1_small.jpg" width="45">
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
                <li><a href="#">Algorithm</a></li>
                <!-- <li class="breadcrumb-btn pull-right"><a href="#" class="btn btn-navy btn-lg"><i class="fa fa-plus"></i>&nbsp;add new object</a></li> -->
            </ol>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <ul class="list-inline">
                                    <li>
                                        <h3 class="panel-title">Algorithm Registration</h3>
                                    </li>
                                </ul>
                            </div>
                            <div class="panel-body">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label for="title" class="col-sm-2 control-label">Algorithm Name</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control input-lg" id="title" placeholder="Enter name">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <textarea name="" class="form-control input-lg" rows="3" cols="4" placeholder="Description of Algorithm:"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <input type="text" class="form-control input-lg" id="title" placeholder="Source:">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <input type="text" class="form-control input-lg" id="title" placeholder="Where used:">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <form>
                                    <div class="form-group">
                                        <label for="name" class="sr-only">demo</label>
                                        <select name="" id="" class="form-control">
                                            <option value="" selected>cost</option>
                                            <option value="1">Cost 1</option>
                                            <option value="1">Cost 2</option>
                                            <option value="1">Cost 3</option>
                                            <option value="1">Cost 4</option>
                                        </select>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="text-right">
                                    <button class="btn btn-navy btn-lg">&nbsp;&nbsp;&nbsp;Next&nbsp;<i class="fa fa-chevron-right"></i>&nbsp;&nbsp;&nbsp;</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->
    </div>
    <!-- /#wrapper -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-2.1.4.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.combo.select.js"></script>
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    jQuery(document).ready(function($) {
        $('select').comboSelect();
    });
    </script>
</body>

</html>
