<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Register Datasource</title>
    <!-- Bootstrap -->
    <link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet">
    <%-- <link href="<%=request.getContextPath()%>/resources/css/combo.select.css" rel="stylesheet"> --%>
    <!-- <link href='https://fonts.googleapis.com/css?family=Roboto:400,700,500,300|Roboto+Condensed:400,300,700' rel='stylesheet' type='text/css'> -->
</head>

<body>
    <div id="wrapper">
        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav-brand">
                <li class="sidebar-brand">
                    <a href="#"><img src="<%=request.getContextPath()%>/resources/images/logo.png" alt="logo"></a>
                </li>
            </ul>
            <ul class="sidebar-nav">
            	<li><a href="<%=request.getContextPath()%>/algorithmRegister"><i class="sprite sprite-cu-target"></i> Algorithm</a></li>
                <li><a href="<%=request.getContextPath()%>/dataManagement"><i class="sprite sprite-cu-helmet"></i> Manage Data</a></li>
                <li class="active"><a href="#"><i class="sprite sprite-cu-splash"></i> Data Source</a></li>
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
                            <li><a href="#" class="btn btn-menu"><i class="fa fa-bell fa-lg"></i></a></li>
                            <li><a href="#" class="btn btn-menu"><i class="fa fa-search fa-lg"></i></a></li>
                            <li><a href="#menu-toggle" class="btn btn-menu" id="menu-toggle"><i class="fa fa-bars fa-lg"></i></a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown">
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                    <span class="profile-ava">
                                    	<img alt="" src="<%=request.getContextPath()%>/resources/images/avatar1_small.jpg" width="45">
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
                <li><a href="#">Redshift Configuration</a></li>
                <!-- <li class="breadcrumb-btn pull-right"><a href="#" class="btn btn-navy btn-lg"><i class="fa fa-plus"></i>&nbsp;add new object</a></li> -->
            </ol>
            <div class="container-fluid">
            <form class="form-horizontal" action="javascript:;" name="configForm" id="configForm" onsubmit="saveConfiguration()">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <ul class="list-inline">
                                    <li>
                                        <h3 class="panel-title">Configuration</h3>
                                    </li>
                                </ul>
                            </div>
                            <div class="panel-body">
                            	<div class="form-group">
                                   <label for="title" class="col-sm-2 control-label">Driver</label>
                                   <div class="col-sm-10">
                                       <input type="text" name="driver" class="form-control input-lg" id="driver" placeholder="Driver" required="required">
                                   </div>
                               </div>
                               <div class="form-group">
                                   <label for="title" class="col-sm-2 control-label">URL</label>
                                   <div class="col-sm-10">
                                       <input type="text" name="url" class="form-control input-lg" id="url" placeholder="URL" required="required">
                                   </div>
                               </div>
                               <div class="form-group">
                                   <label for="title" class="col-sm-2 control-label">User Name</label>
                                   <div class="col-sm-10">
                                       <input type="text" name="userName" class="form-control input-lg" id="userName" placeholder="User Name" required="required">
                                   </div>
                               </div>
                               <div class="form-group">
                                   <label for="title" class="col-sm-2 control-label">Password</label>
                                   <div class="col-sm-10">
                                       <input type="password" name="password" class="form-control input-lg" id="password" placeholder="Password" required="required">
                                   </div>
                               </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <ul class="list-inline">
                                    <li>
                                        <h3 class="panel-title">Table </h3>
                                    </li>
                                </ul>
                            </div>
                            <div class="panel-body">
                               <div class="form-group">
                                   <label for="title" class="col-sm-2 control-label">Table Name</label>
                                   <div class="col-sm-10">
                                       <input type="text" name="tableName" class="form-control input-lg" id="tableName" placeholder="Table Name" required="required">
                                   </div>
                               </div>
                            </div>
                        </div>
                    </div>
                </div>
	                <div class="row">
	                    <div class="col-lg-12">
	                        <div class="panel panel-default">
	                            <div class="panel-body">
	                                <div class="text-center">
	                                	<div id="loader"></div>
	                                	<br>
	                                    <button type="submit" id="uploadTable" class="btn btn-navy btn-lg">&nbsp;&nbsp;&nbsp;Next&nbsp;<i class="fa fa-chevron-right"></i>&nbsp;&nbsp;&nbsp;</button>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
                </form>
            </div>
        </div>
        <!-- /#page-content-wrapper -->
    </div>
    <!-- /#wrapper -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<%=request.getContextPath()%>/resources/js/jquery-2.1.4.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/jquery-ui.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/jquery.combo.select.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/jquery.steps.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/jquery.bootstrap.wizard.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/jquery.nicescroll.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/controller/redshiftConfig.js"></script>
</body>
</html>