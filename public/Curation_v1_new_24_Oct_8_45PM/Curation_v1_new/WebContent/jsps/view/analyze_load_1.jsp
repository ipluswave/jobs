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
                                                    <button class="btn btn-white">&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;add source&nbsp;&nbsp;&nbsp;&nbsp;</button>
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
                                                    <button class="btn btn-white">&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;add vocabulary&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="panel panel-default">
                                                <div class="panel-body">
                                                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
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
                                                                    <ul class="tree">
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
                                                                    <ul class="tree">
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
                                                                    <ul class="tree">
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
                                                                    <ul class="tree">
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
                                                    <div class="panel-group" id="accordion2" role="tablist" aria-multiselectable="true">
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
                                                                    <ul class="tree">
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
                                                                    <ul class="tree">
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
                                                                    <ul class="tree">
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
                                                                    <ul class="tree">
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
                                            <button class="btn btn-navy btn-lg">&nbsp;&nbsp;&nbsp;<i class="fa fa-download"></i>&nbsp;Save Curator detail&nbsp;&nbsp;&nbsp;</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab2">
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
                                                            <input type="text" class="form-control input-lg" placeholder="Type for search">
                                                            <span class="input-group-btn">
                                                                <button class="btn btn-white btn-lg" type="button"><i class="fa fa-search"></i></button>
                                                              </span>
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <div class="table-responsive">
                                                        <table class="table table-striped table-bordered attribute-list">
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <div class="checkbox">
                                                                            <input id="check1" type="checkbox" name="check" value="check1">
                                                                            <label for="check1"></label>
                                                                        </div>
                                                                    </td>
                                                                    <td class="vert-align">
                                                                        <a href="#" class="title">attribute result 1</a>
                                                                    </td>
                                                                    <td>
                                                                        <ul class="list-inline pull-right">
                                                                            <li></li>
                                                                            <li></li>
                                                                        </ul>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="checkbox">
                                                                            <input id="check2" type="checkbox" name="check" value="check2" checked>
                                                                            <label for="check2"></label>
                                                                        </div>
                                                                    </td>
                                                                    <td class="vert-align">
                                                                        <a href="#" class="title">attribute result 2
                                                                        </a>
                                                                    </td>
                                                                    <td>
                                                                        <ul class="list-inline pull-right">
                                                                            <li></li>
                                                                            <li></li>
                                                                        </ul>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="checkbox">
                                                                            <input id="check3" type="checkbox" name="check" value="check3">
                                                                            <label for="check3"></label>
                                                                        </div>
                                                                    </td>
                                                                    <td class="vert-align">
                                                                        <a href="#" class="title">attribute result 3
                                                                        </a>
                                                                    </td>
                                                                    <td>
                                                                        <ul class="list-inline pull-right">
                                                                            <li></li>
                                                                            <li></li>
                                                                        </ul>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="checkbox">
                                                                            <input id="check4" type="checkbox" name="check" value="check4">
                                                                            <label for="check4"></label>
                                                                        </div>
                                                                    </td>
                                                                    <td class="vert-align">
                                                                        <a href="#" class="title">attribute result 4
                                                                        </a>
                                                                    </td>
                                                                    <td>
                                                                        <ul class="list-inline pull-right">
                                                                            <li></li>
                                                                            <li></li>
                                                                        </ul>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <button class="btn btn-blue btn-lg">&nbsp;&nbsp;&nbsp;<i class="cus cus-vis-b cus-xs"></i>&nbsp;View&nbsp;&nbsp;&nbsp;</button>
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
                                                    <div id="cs-tabs">
                                                        <!-- Nav tabs -->
                                                        <ul class="nav nav-tabs" role="tablist">
                                                            <li role="presentation" class="active"><a href="#alg" aria-controls="alg" role="tab" data-toggle="tab">Algorithms</a></li>
                                                            <li role="presentation"><a href="#voc" aria-controls="voc" role="tab" data-toggle="tab">Vocabulary</a></li>
                                                            <li role="presentation"><a href="#viz" aria-controls="viz" role="tab" data-toggle="tab">Visualization</a></li>
                                                        </ul>
                                                        <!-- Tab panes -->
                                                        <div class="tab-content">
                                                            <div role="tabpanel" class="tab-pane active viz" id="alg">
                                                                <ul class="list-group">
                                                                    <li class="list-group-item">
                                                                        <ul class="viz-heading">
                                                                            <li>
                                                                                <div class="checkbox">
                                                                                    <input id="check5" type="checkbox" name="check" value="check5">
                                                                                    <label for="check5"></label>
                                                                                </div>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#" class="title">Algorithm Result 1</a>
                                                                            </li>
                                                                            <li class="pull-right">
                                                                                <a href="#" class="viz-toggle pull-right"><i class="fa fa-chevron-right fa-lg"></i></a>
                                                                            </li>
                                                                        </ul>
                                                                        <ul class="list-unstyled viz-body">
                                                                            <li>Description of algorithm
                                                                            </li>
                                                                            <li>source of algorithm: <span class="remove pull-right">$99.99</span></li>
                                                                            <li>source of algorithm: <span class="add pull-right">7 504 56</span></li>
                                                                        </ul>
                                                                    </li>
                                                                    <li class="list-group-item">
                                                                        <ul class="viz-heading">
                                                                            <li>
                                                                                <div class="checkbox">
                                                                                    <input id="check6" type="checkbox" name="check" value="check6" checked>
                                                                                    <label for="check6"></label>
                                                                                </div>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#" class="title">Algorithm Result 2</a>
                                                                            </li>
                                                                            <li class="pull-right">
                                                                                <a href="#" class="viz-toggle pull-right"><i class="fa fa-chevron-right fa-lg"></i></a>
                                                                            </li>
                                                                        </ul>
                                                                        <ul class="list-unstyled viz-body">
                                                                            <li>Description of algorithm
                                                                            </li>
                                                                            <li>source of algorithm: <span class="remove pull-right">$99.99</span></li>
                                                                            <li>source of algorithm: <span class="add pull-right">7 504 56</span></li>
                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div role="tabpanel" class="tab-pane" id="voc">
                                                                <div class="table-responsive">
                                                                    <table class="table table-striped table-bordered attribute-list">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td>
                                                                                    <div class="checkbox">
                                                                                        <input id="check7" type="checkbox" name="check" value="check7">
                                                                                        <label for="check7"></label>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="vert-align">
                                                                                    <a href="#" class="title">attribute result 1</a>
                                                                                </td>
                                                                                <td>
                                                                                    <ul class="list-inline pull-right">
                                                                                        <li></li>
                                                                                        <li></li>
                                                                                    </ul>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <div class="checkbox">
                                                                                        <input id="check8" type="checkbox" name="check" value="check8" checked>
                                                                                        <label for="check8"></label>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="vert-align">
                                                                                    <a href="#" class="title">attribute result 2</a>
                                                                                </td>
                                                                                <td>
                                                                                    <ul class="list-inline pull-right">
                                                                                        <li></li>
                                                                                        <li></li>
                                                                                    </ul>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <div class="checkbox">
                                                                                        <input id="check9" type="checkbox" name="check" value="check9">
                                                                                        <label for="check9"></label>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="vert-align">
                                                                                    <a href="#" class="title">attribute result 3</a>
                                                                                </td>
                                                                                <td>
                                                                                    <ul class="list-inline pull-right">
                                                                                        <li></li>
                                                                                        <li></li>
                                                                                    </ul>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <div class="checkbox">
                                                                                        <input id="check10" type="checkbox" name="check" value="check10">
                                                                                        <label for="check10"></label>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="vert-align">
                                                                                    <a href="#" class="title">attribute result 4</a>
                                                                                </td>
                                                                                <td>
                                                                                    <ul class="list-inline pull-right">
                                                                                        <li></li>
                                                                                        <li></li>
                                                                                    </ul>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                            <div role="tabpanel" class="tab-pane viz" id="viz">
                                                                <ul class="list-group">
                                                                    <li class="list-group-item">
                                                                        <ul class="viz-heading">
                                                                            <li>
                                                                                <div class="checkbox">
                                                                                    <input id="check11" type="checkbox" name="check" value="check11">
                                                                                    <label for="check11"></label>
                                                                                </div>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#" class="title">visualization result 1</a>
                                                                            </li>
                                                                            <li class="pull-right">
                                                                                <a href="#" class="viz-toggle pull-right"><i class="fa fa-chevron-right fa-lg"></i></a>
                                                                            </li>
                                                                        </ul>
                                                                        <ul class="list-unstyled viz-body">
                                                                            <li>Description of algorithm
                                                                            </li>
                                                                            <li>source of algorithm: <span class="remove pull-right">$99.99</span></li>
                                                                            <li>source of algorithm: <span class="add pull-right">7 504 56</span></li>
                                                                            <li><img src="images/pd.png" alt="img"></li>
                                                                        </ul>
                                                                    </li>
                                                                    <li class="list-group-item">
                                                                        <ul class="viz-heading">
                                                                            <li>
                                                                                <div class="checkbox">
                                                                                    <input id="check12" type="checkbox" name="check" value="check12">
                                                                                    <label for="check12"></label>
                                                                                </div>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#" class="title">visualization result 1</a>
                                                                            </li>
                                                                            <li class="pull-right">
                                                                                <a href="#" class="viz-toggle pull-right"><i class="fa fa-chevron-right fa-lg"></i></a>
                                                                            </li>
                                                                        </ul>
                                                                        <ul class="list-unstyled viz-body">
                                                                            <li>Description of algorithm
                                                                            </li>
                                                                            <li>source of algorithm: <span class="remove pull-right">$99.99</span></li>
                                                                            <li>source of algorithm: <span class="add pull-right">7 504 56</span></li>
                                                                            <li><img src="images/pd2.png" alt="img"></li>
                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <button class="btn btn-navy btn-lg">&nbsp;&nbsp;&nbsp;<i class="cus cus-exe-w cus-xs"></i>&nbsp;Execute&nbsp;&nbsp;&nbsp;</button>
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
                                                    <ul class="tree">
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
                                                    <ul class="tree">
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
                                                    <ul class="tree">
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
                                                    <ul class="tree">
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
    <script src="js/jquery-2.1.4.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.combo.select.js"></script>
    <script src="js/jquery.steps.js"></script>
    <script src="js/jquery.bootstrap.wizard.js"></script>
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
    });
    </script>
</body>

</html>
