<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Tempo</title>
<!-- Bootstrap -->
<link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/jquery-ui.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/combo.select.css" rel="stylesheet">
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
            <a href="#"><img src="<%=request.getContextPath()%>/resources/images/logo.png" alt="logo"></a>
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
        <li>
            <a href="#"><i class="sprite sprite-cu-analyze"></i> Analyze</a>
             <ul class="tree">
                 <li><a href="#!" class="active">Load</a></li>
                 <li><a href="#!">Attributes</a></li>
                 <li><a href="#!">Discovery</a></li>
                 <li><a href="#!">Execution</a></li>
                 <li><a href="#!">Visualization</a></li>
                 <li><a href="#!">Algorithm</a></li>
             </ul>
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
        <li><a href="#">Analyze</a></li>
        <!-- <li class="breadcrumb-btn pull-right"><a href="#" class="btn btn-navy btn-lg"><i class="fa fa-plus"></i>&nbsp;add new object</a></li> -->
    </ol>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div id="rootwizard">
                    <div class="navbar">
                        <div class="navbar-inner">
                            <ul class="nav nav-pills nav-wizard">
                                <li>
                                    <a href="#tab1" data-toggle="tab">
                                        <i class="cus cus-load-b"></i>&nbsp;Load</a>
                                    <div class="nav-arrow"></div>
                                </li>
                                <li>
                                    <a href="#tab2" data-toggle="tab">
                                        <div class="nav-wedge"></div>
                                        <i class="cus cus-attri-b"></i>&nbsp;Attributes
                                        <div class="nav-arrow"></div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#tab3" data-toggle="tab">
                                        <div class="nav-wedge"></div>
                                        <i class="cus cus-dis-b"></i>&nbsp;Discovery
                                        <div class="nav-arrow"></div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#tab4" data-toggle="tab">
                                        <div class="nav-wedge"></div>
                                        <i class="cus cus-exe-b"></i>&nbsp;Execution
                                        <div class="nav-arrow"></div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#tab5" data-toggle="tab">
                                        <div class="nav-wedge"></div>
                                        <i class="cus cus-vis-b"></i>&nbsp;visualization
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane" id="tab1">
                            <div class="row">
                                <div class="col-lg-6 no-padding">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <ul class="list-inline">
                                                <li>
                                                    <h3 class="panel-title">Load Management</h3></li>
                                            </ul>
                                        </div>
                                        <div class="panel-body">
                                            <form>
                                                <div class="form-group">
                                                    <label for="title" class="sr-only">Title</label>
                                                    <input type="text" class="form-control input-lg" id="title" placeholder="Insert source name here">
                                                </div>
                                            </form>
                                            <div class="tab-content">
                                                <div role="tabpanel" class="tab-pane active" id="home">
                                                    <form>
                                                        <div class="form-group">
                                                            <input type="file" class="form-control input-lg" id="title" placeholder="Select file">
                                                            <small>(Maximum size: 30 MB)</small>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name" class="sr-only">Name</label>
                                                            <select name="" id="" class="form-control">
                                                                <option value="" disabled selected>Enter Source or field name</option>
                                                                <option value="1">Curator 1</option>
                                                                <option value="1">Curator 2</option>
                                                                <option value="1">Curator 3</option>
                                                                <option value="1">Curator 4</option>
                                                            </select>
                                                        </div>
                                                        <button class="btn btn-navy btn-sm">&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;upload Source&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 no-padding">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <ul class="list-inline">
                                                <li></li>
                                            </ul>
                                        </div>
                                        <div class="panel-body">
                                            <form>
                                                <div class="form-group">
                                                    <label for="title" class="sr-only">Title</label>
                                                    <input type="text" class="form-control input-lg" id="title" placeholder="Insert source name here">
                                                </div>
                                            </form>
                                            <div class="tab-content">
                                                <div role="tabpanel" class="tab-pane active" id="home">
                                                    <button class="btn btn-white" data-toggle="modal" data-target="#myModal">&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;add vocabulary&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                                    <br/>
                                                    <br/>
                                                    <form>
                                                        <div class="form-group">
                                                            <input type="file" class="form-control input-lg" id="title" placeholder="Select Vocabulary">
                                                            <small>(Maximum size: 30 MB)</small>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name" class="sr-only">Name</label>
                                                            <select name="" id="" class="form-control">
                                                                <option value="" disabled selected>Enter Source or field name</option>
                                                                <option value="1">Curator 1</option>
                                                                <option value="1">Curator 2</option>
                                                                <option value="1">Curator 3</option>
                                                                <option value="1">Curator 4</option>
                                                            </select>
                                                        </div>
                                                        <button class="btn btn-navy btn-sm">&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;upload Source&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <div class="panel-group mainSortable secsortable" id="accordion" role="tablist" aria-multiselectable="true">
                                                <div class="panel panel-custom">
                                                    <div class="panel-heading clearfix" role="tab" id="headingOne">
                                                        <ul class="list-inline">
                                                            <li>
                                                                <div class="drag">
                                                                    <i class="cus cus-drag"></i>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <a class="product" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                                    <i class="cus cus-open"></i>&nbsp;<span class="product-name">winter is coming</span>
                                                                </a>
                                                            </li>
                                                            <li class="pull-right">
                                                                <ul class="list-inline">
                                                                    <li>
                                                                        <button class="btn btn-white btn-lg remove"><i class="fa fa-times fa-lg"></i></button>
                                                                    </li>
                                                                    <li>
                                                                        <button class="btn btn-white btn-lg"><i class="fa fa-arrow-right fa-lg"></i></button>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                                        <div class="panel-body">
                                                            <ul class="tree subSortable sortable" id="sortable1">
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs drag-handle"></i>&nbsp;Source item 1
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Source item 2
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Source item 3
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Source item 4
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Source item 5
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-custom">
                                                    <div class="panel-heading clearfix" role="tab" id="headingTwo">
                                                        <ul class="list-inline">
                                                            <li>
                                                                <div class="drag">
                                                                    <i class="cus cus-drag"></i>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <a class="product collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                                    <i class="cus cus-close"></i>&nbsp;<span class="product-name">Womens jackets</span>
                                                                </a>
                                                            </li>
                                                            <li class="pull-right">
                                                                <ul class="list-inline">
                                                                    <li>
                                                                        <button class="btn btn-white btn-lg remove"><i class="fa fa-times fa-lg"></i></button>
                                                                    </li>
                                                                    <li>
                                                                        <button class="btn btn-white btn-lg "><i class="fa fa-arrow-right fa-lg"></i></button>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                                        <div class="panel-body">
                                                            <ul class="tree subSortable sortable">
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Source item 1
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Source item 2
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Source item 3
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Source item 4
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Source item 5
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-custom">
                                                    <div class="panel-heading clearfix" role="tab" id="headingThree">
                                                        <ul class="list-inline">
                                                            <li>
                                                                <div class="drag">
                                                                    <i class="cus cus-drag"></i>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <a class="product collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                                    <i class="cus cus-close"></i>&nbsp;<span class="product-name">winter gloves</span>
                                                                </a>
                                                            </li>
                                                            <li class="pull-right">
                                                                <ul class="list-inline">
                                                                    <li>
                                                                        <button class="btn btn-white btn-lg remove"><i class="fa fa-times fa-lg"></i></button>
                                                                    </li>
                                                                    <li>
                                                                        <button class="btn btn-white btn-lg "><i class="fa fa-arrow-right fa-lg"></i></button>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                                        <div class="panel-body">
                                                            <ul class="tree subSortable sortable">
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Source item 1
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Source item 2
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Source item 3
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Source item 4
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Source item 5
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-custom">
                                                    <div class="panel-heading clearfix" role="tab" id="headingFour">
                                                        <ul class="list-inline">
                                                            <li class="pull-left">
                                                                <div class="drag">
                                                                    <i class="cus cus-drag"></i>
                                                                </div>
                                                            </li>
                                                            <li class="pull-left">
                                                                <a class="product collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                                                    <i class="cus cus-close"></i>&nbsp;<span class="product-name">winter is coming</span>
                                                                </a>
                                                            </li>
                                                            <li class="pull-right">
                                                                <ul class="list-inline">
                                                                    <li>
                                                                        <button class="btn btn-white btn-lg remove"><i class="fa fa-times fa-lg"></i></button>
                                                                    </li>
                                                                    <li>
                                                                        <button class="btn btn-white btn-lg "><i class="fa fa-arrow-right fa-lg"></i></button>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                                                        <div class="panel-body">
                                                            <ul class="tree subSortable sortable">
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Source item 1
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Source item 2
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Source item 3
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Source item 4
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Source item 5
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <div class="panel-group mainSortable secsortable" id="accordion2" role="tablist" aria-multiselectable="true">
                                                <div class="panel panel-custom">
                                                    <div class="panel-heading clearfix" role="tab" id="headingFive">
                                                        <ul class="list-inline">
                                                            <li>
                                                                <div class="drag">
                                                                    <i class="cus cus-drag"></i>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <a class="product collapsed" role="button" data-toggle="collapse" data-parent="#accordion2" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                                                    <i class="cus cus-open"></i>&nbsp;<span class="product-name">winter is coming</span>
                                                                </a>
                                                            </li>
                                                            <li class="pull-right">
                                                                <ul class="list-inline">
                                                                    <li>
                                                                        <button class="btn btn-white btn-lg remove"><i class="fa fa-times fa-lg"></i></button>
                                                                    </li>
                                                                    <li>
                                                                        <button class="btn btn-white btn-lg"><i class="fa fa-arrow-left fa-lg"></i></button>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div id="collapseFive" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingFive">
                                                        <div class="panel-body">
                                                            <ul class="tree subSortable sortable" id="sortable2">
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 1
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 2
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 3
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 4
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 5
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-custom">
                                                    <div class="panel-heading clearfix" role="tab" id="headingSix">
                                                        <ul class="list-inline">
                                                            <li>
                                                                <div class="drag">
                                                                    <i class="cus cus-drag"></i>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <a class="product collapsed" role="button" data-toggle="collapse" data-parent="#accordion2" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                                                                    <i class="cus cus-close"></i>&nbsp;<span class="product-name">Womens jackets</span>
                                                                </a>
                                                            </li>
                                                            <li class="pull-right">
                                                                <ul class="list-inline">
                                                                    <li>
                                                                        <button class="btn btn-white btn-lg remove"><i class="fa fa-times fa-lg"></i></button>
                                                                    </li>
                                                                    <li>
                                                                        <button class="btn btn-white btn-lg "><i class="fa fa-arrow-left fa-lg"></i></button>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
                                                        <div class="panel-body">
                                                            <ul class="tree subSortable sortable">
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 1
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 2
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 3
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 4
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 5
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-custom">
                                                    <div class="panel-heading clearfix" role="tab" id="headingSeven">
                                                        <ul class="list-inline">
                                                            <li>
                                                                <div class="drag">
                                                                    <i class="cus cus-drag"></i>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <a class="product collapsed" role="button" data-toggle="collapse" data-parent="#accordion2" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                                                                    <i class="cus cus-close"></i>&nbsp;<span class="product-name">winter gloves</span>
                                                                </a>
                                                            </li>
                                                            <li class="pull-right">
                                                                <ul class="list-inline">
                                                                    <li>
                                                                        <button class="btn btn-white btn-lg remove"><i class="fa fa-times fa-lg"></i></button>
                                                                    </li>
                                                                    <li>
                                                                        <button class="btn btn-white btn-lg "><i class="fa fa-arrow-left fa-lg"></i></button>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div id="collapseSeven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven">
                                                        <div class="panel-body">
                                                            <ul class="tree subSortable sortable">
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 1
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 2
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 3
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 4
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 5
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-custom">
                                                    <div class="panel-heading clearfix" role="tab" id="headingEight">
                                                        <ul class="list-inline">
                                                            <li class="pull-left">
                                                                <div class="drag">
                                                                    <i class="cus cus-drag"></i>
                                                                </div>
                                                            </li>
                                                            <li class="pull-left">
                                                                <a class="product collapsed" role="button" data-toggle="collapse" data-parent="#accordion2" href="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
                                                                    <i class="cus cus-close"></i>&nbsp;<span class="product-name">winter is coming</span>
                                                                </a>
                                                            </li>
                                                            <li class="pull-right">
                                                                <ul class="list-inline">
                                                                    <li>
                                                                        <button class="btn btn-white btn-lg remove"><i class="fa fa-times fa-lg"></i></button>
                                                                    </li>
                                                                    <li>
                                                                        <button class="btn btn-white btn-lg "><i class="fa fa-arrow-left fa-lg"></i></button>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div id="collapseEight" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingEight">
                                                        <div class="panel-body">
                                                            <ul class="tree subSortable sortable">
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 1
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 2
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 3
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 4
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                                <li>
                                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 5
                                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="tab2">
                            <div class="row">
                                <div class="col-lg-12 no-padding">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <ul class="list-inline">
                                                <li>
                                                    <h3 class="panel-title">Visualization Screen</h3>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="panel-body">
                                            <div class="displaybox">
                                                <ul class="list-inline">
                                                    <li>
                                                        <div class="item">
                                                            <figure>
                                                                <img src="<%=request.getContextPath()%>/resources/images/pd.png" alt="">
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
                                                            <figure>
                                                                <img src="<%=request.getContextPath()%>/resources/images/pd.png" alt="">
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
                                                            <figure>
                                                                <img src="<%=request.getContextPath()%>/resources/images/pd.png" alt="">
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
                                                            <figure>
                                                                <img src="<%=request.getContextPath()%>/resources/images/pd.png" alt="">
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
                                                            <figure>
                                                                <img src="<%=request.getContextPath()%>/resources/images/pd.png" alt="">
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
                                                            <figure>
                                                                <img src="<%=request.getContextPath()%>/resources/images/pd.png" alt="">
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
                                                            <figure>
                                                                <img src="<%=request.getContextPath()%>/resources/images/pd.png" alt="">
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
                                                            <figure>
                                                                <img src="<%=request.getContextPath()%>/resources/images/pd.png" alt="">
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
                                                            <figure>
                                                                <img src="<%=request.getContextPath()%>/resources/images/pd.png" alt="">
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
                                                            <figure>
                                                                <img src="<%=request.getContextPath()%>/resources/images/pd.png" alt="">
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
                                                            <figure>
                                                                <img src="<%=request.getContextPath()%>/resources/images/pd.png" alt="">
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
                                                            <figure>
                                                                <img src="<%=request.getContextPath()%>/resources/images/pd.png" alt="">
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
                                                            <figure>
                                                                <img src="<%=request.getContextPath()%>/resources/images/pd.png" alt="">
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
                                                            <figure>
                                                                <img src="<%=request.getContextPath()%>/resources/images/pd.png" alt="">
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
                                                            <figure>
                                                                <img src="<%=request.getContextPath()%>/resources/images/pd.png" alt="">
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
                                            <br/>
                                            <ul class="list-inline">
                                                <li>
                                                    <button class="btn btn-white btn-lg">&nbsp;&nbsp;&nbsp;<i class="fa fa-chevron-left"></i>&nbsp;Back&nbsp;&nbsp;&nbsp;</button>
                                                </li>
                                                <li class="pull-right">
                                                    <button class="btn btn-navy btn-lg">&nbsp;&nbsp;&nbsp;<i class="fa fa-check"></i>&nbsp;Use&nbsp;&nbsp;&nbsp;</button>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="tab3">
                            <div class="row">
                                <div class="col-lg-6 no-padding">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <ul class="list-inline">
                                                <li>
                                                    <h3 class="panel-title">Attribute Management</h3>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="panel-body">
                                            <div class="nopadding">
                                                <div class="input-group">
                                                    <input type="text" class="form-control input-lg" placeholder="Discover native attributes">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-white btn-lg" type="button"><i class="fa fa-search"></i></button>
                                                      </span>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="tab-content">
                                                <div class="box-panel active">
                                                    <textarea name="content" id="" class="form-control" cols="30" rows="10">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias cum rerum earum facere deserunt sequi perspiciatis adipisci nobis voluptatum officiis rem ipsum cupiditate dicta incidunt consequuntur aperiam distinctio saepe, consequatur beatae quibusdam at dolores. Doloremque molestias sint aliquam repudiandae fugit assumenda consectetur quo veniam a.
                                                    </textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 text-center">
                                    <button class="btn btn-navy btn-lg">&nbsp;&nbsp;&nbsp;<i class="fa fa-download"></i>&nbsp;Save&nbsp;&nbsp;&nbsp;</button>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="tab4">
                        </div>
                        <div class="tab-pane" id="tab5">
                            <div class="row">
                                <div class="col-lg-12 no-padding">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <ul class="list-inline">
                                                <li>
                                                    <h3 class="panel-title">Visualization [Name of algorithm]</h3>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="panel-body">
                                            <div class="tab-content">
                                                <div class="box-panel active">
                                                    <textarea name="content" id="" class="form-control" cols="30" rows="10">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias cum rerum earum facere deserunt sequi perspiciatis adipisci nobis voluptatum officiis rem ipsum cupiditate dicta incidunt consequuntur aperiam distinctio saepe, consequatur beatae quibusdam at dolores. Doloremque molestias sint aliquam repudiandae fugit assumenda consectetur quo veniam a.
                                                    </textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 text-center">
                                    <button class="btn btn-navy btn-lg">&nbsp;&nbsp;&nbsp;<i class="fa fa-download"></i>&nbsp;Save&nbsp;&nbsp;&nbsp;</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
                            <h3 class="panel-title">Add vocabulary</h3>
                        </div>
                        <div class="panel-body collapse in" id="headline">
                            <form>
                                <div class="form-group">
                                    <label for="title" class="sr-only">term</label>
                                    <input type="text" class="form-control input-lg" id="title" placeholder="Enter Term">
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">or add relation</h3>
                        </div>
                        <div class="panel-body">
                            <div class="panel-group dropzone" id="accordion3" role="tablist" aria-multiselectable="true">
                                <h5 class="msg center-block">Drop Relations Here</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Related To</h3>
                        </div>
                        <div class="panel-body">
                            <form>
                                <div class="form-group">
                                    <label for="name" class="sr-only">sdgsg</label>
                                    <select name="" id="" class="form-control">
                                        <option value="" disabled selected>Select relation</option>
                                        <option value="1">Curator 1</option>
                                        <option value="1">Curator 2</option>
                                        <option value="1">Curator 3</option>
                                        <option value="1">Curator 4</option>
                                    </select>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">&nbsp;</h3>
                        </div>
                        <div class="panel-body">
                            <div class="panel-group" id="accordions" role="tablist" aria-multiselectable="true">
                                <div class="panel panel-custom">
                                    <div class="panel-heading clearfix" role="tab" id="heading9">
                                        <ul class="list-inline">
                                            <li>
                                                <div class="drag">
                                                    <i class="cus cus-drag"></i>
                                                </div>
                                            </li>
                                            <li>
                                                <button class="btn btn-white btn-lg"><i class="fa fa-arrow-left fa-lg"></i></button>
                                            </li>
                                            <li>
                                                <a class="product collapsed" role="button" data-toggle="collapse" data-parent="#accordions" href="#collapse9" aria-expanded="false" aria-controls="collapse9">
                                                    <i class="cus cus-close"></i>&nbsp;<span class="product-name">winter is coming</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div id="collapse9" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading9">
                                        <div class="panel-body">
                                            <ul class="tree subSortable sortable">
                                                <li>
                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 1
                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                </li>
                                                <li>
                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 2
                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                </li>
                                                <li>
                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 3
                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                </li>
                                                <li>
                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 4
                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                </li>
                                                <li>
                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 5
                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-custom">
                                    <div class="panel-heading clearfix" role="tab" id="heading10">
                                        <ul class="list-inline">
                                            <li>
                                                <div class="drag">
                                                    <i class="cus cus-drag"></i>
                                                </div>
                                            </li>
                                            <li>
                                                <button class="btn btn-white btn-lg "><i class="fa fa-arrow-left fa-lg"></i></button>
                                            </li>
                                            <li>
                                                <a class="product collapsed" role="button" data-toggle="collapse" data-parent="#accordions" href="#collapse10" aria-expanded="false" aria-controls="collapse10">
                                                    <i class="cus cus-close"></i>&nbsp;<span class="product-name">Womens jackets</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div id="collapse10" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading10">
                                        <div class="panel-body">
                                            <ul class="tree subSortable sortable">
                                                <li>
                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 1
                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                </li>
                                                <li>
                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 2
                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                </li>
                                                <li>
                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 3
                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                </li>
                                                <li>
                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 4
                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                </li>
                                                <li>
                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 5
                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-custom">
                                    <div class="panel-heading clearfix" role="tab" id="heading11">
                                        <ul class="list-inline">
                                            <li>
                                                <div class="drag">
                                                    <i class="cus cus-drag"></i>
                                                </div>
                                            </li>
                                            <li>
                                                <button class="btn btn-white btn-lg "><i class="fa fa-arrow-left fa-lg"></i></button>
                                            </li>
                                            <li>
                                                <a class="product collapsed" role="button" data-toggle="collapse" data-parent="#accordions" href="#collapse11" aria-expanded="false" aria-controls="collapse11">
                                                    <i class="cus cus-close"></i>&nbsp;<span class="product-name">winter gloves</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div id="collapse11" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading11">
                                        <div class="panel-body">
                                            <ul class="tree subSortable sortable">
                                                <li>
                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 1
                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                </li>
                                                <li>
                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 2
                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                </li>
                                                <li>
                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 3
                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                </li>
                                                <li>
                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 4
                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                </li>
                                                <li>
                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 5
                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-custom">
                                    <div class="panel-heading clearfix" role="tab" id="heading12">
                                        <ul class="list-inline">
                                            <li>
                                                <div class="drag">
                                                    <i class="cus cus-drag"></i>
                                                </div>
                                            </li>
                                            <li>
                                                <button class="btn btn-white btn-lg "><i class="fa fa-arrow-left fa-lg"></i></button>
                                            </li>
                                            <li>
                                                <a class="product collapsed" role="button" data-toggle="collapse" data-parent="#accordions" href="#collapse12" aria-expanded="false" aria-controls="collapse12">
                                                    <i class="cus cus-close"></i>&nbsp;<span class="product-name">winter is coming</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div id="collapse12" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading12">
                                        <div class="panel-body">
                                            <ul class="tree subSortable sortable">
                                                <li>
                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 1
                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                </li>
                                                <li>
                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 2
                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                </li>
                                                <li>
                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 3
                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                </li>
                                                <li>
                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 4
                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                </li>
                                                <li>
                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 5
                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                    <button class="btn btn-navy btn-lg">&nbsp;&nbsp;&nbsp;<i class="fa fa-check"></i>&nbsp;&nbsp;done&nbsp;&nbsp;&nbsp;&nbsp;</button>
                    <button class="btn btn-blue btn-lg">&nbsp;&nbsp;&nbsp;<i class="fa fa-times"></i>&nbsp;&nbsp;cancel&nbsp;&nbsp;&nbsp;&nbsp;</button>
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
<script>
$("#menu-toggle").click(function(e) {
e.preventDefault();
$("#wrapper").toggleClass("toggled");
});

jQuery(document).ready(function($) {
    $('a[data-toggle="collapse"]').click(function() {
        $(this).find('i.fa').toggleClass('fa-chevron-right fa-chevron-up');
    });
    $(".scroll").niceScroll({
        cursorcolor: "#004586",
        cursoropacitymin: 0.3,
        cursoropacitymax: 1,
        cursorborderradius: "5px",
        cursorwidth: "10px",
        cursorminheight: 32
    }).resize();
    $('select').comboSelect();

    $('#rootwizard').bootstrapWizard({
        'nextSelector': '.button-next',
        'previousSelector': '.button-previous',
        onTabChange: function(tab, navigation, index) {
            var total = navigation.find('li').length;
            var current = index + 1;
            navigation.find('li.active').prevAll().addClass('visited');
            navigation.find('li.active').nextAll().removeClass('visited');
            navigation.find('li.active').removeClass('visited');
        }
    });

    function toggleChevron(e) {
        $(e.target).prev('.panel-heading').find("a i.cus").toggleClass('cus-close cus-open');
    }
    $('#accordion').on('hidden.bs.collapse', toggleChevron);
    $('#accordion').on('shown.bs.collapse', toggleChevron);
    $('#accordion2').on('hidden.bs.collapse', toggleChevron);
    $('#accordion2').on('shown.bs.collapse', toggleChevron);
    $('#accordions').on('hidden.bs.collapse', toggleChevron);
    $('#accordions').on('shown.bs.collapse', toggleChevron);



    $( ".sortable" ).sortable({
      connectWith: ".subSortable",
      handle: ".cus",
      placeholder: "ui-state-highlight"
    },"refreshPositions").disableSelection();

    $( ".secsortable" ).sortable({
      connectWith: ".mainSortable",
      handle: ".drag .cus",
      placeholder: "ui-state-highlight ui-state-highlight-main"
    },"refreshPositions").disableSelection();


});
</script>
</body>

</html> --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="<%=request.getContextPath()%>/index">Neo4J</a>
			</div>
			<div>
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="<%=request.getContextPath()%>/index">Home</a></li>
					<li><a href="<%=request.getContextPath()%>/addVocabulary">Vocabulary</a></li>
					<li><a href="<%=request.getContextPath()%>/viewAttributes">Attributes</a></li>
					<li><a href="<%=request.getContextPath()%>/viewExcecution">Execution</a></li>
					<li><a href="<%=request.getContextPath()%>/viewVisual">Visualization</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="page-header">
			<h2>Load Management</h2>
		</div>

		<form class="form-horizontal" role="form" enctype="multipart/form-data" action="saveAlgorithm" method="POST">
			<div class="row">
				<div class="col-lg-5">
					<div class="form-group">
						<div class="col-sm-12">
							<label class="control-label" for="term">Select source or browse:</label>
						</div>
						<div class="col-sm-10">
							<input type="file" class="form-control" id="term" name="file" placeholder="Select" required="required">
							<%-- <form:input path="attributes" class="form-control"/> --%>
						</div>
					</div>
					
					<div class="form-group">
						<!-- <label for="sel2">[insert source name here]:</label>  -->
						<select multiple name="attributeTerms" class="form-control" id="sel2" required="required">
							<c:forEach items="${attributeList}" var="i">
								<option>${i.term}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="col-lg-2"></div>
				<div class="col-lg-5">
					<div class="form-group">
						<label class="col-sm-4" for="voc">Add vocabulary:</label>
						<div class="col-sm-8">
							<a class="btn btn-default btn-xs" id="voc" href="<%=request.getContextPath()%>/addVocabulary">Add</a>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-12">
							<label class="control-label" for="file1">Select source or browse:</label>
						</div>
						<div class="col-sm-10">
							<input type="file" class="form-control" id="file1" name="file1" placeholder="Enter term">
						</div>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-12 text-center">
					<button type="submit" class="btn btn-success">Save Details</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>