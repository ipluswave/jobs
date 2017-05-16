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
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <ul class="list-inline">
                                    <li>
                                        <h3 class="panel-title">Load Management</h3>
                                    </li>
                                </ul>
                            </div>
                            <div class="panel-body">
                               <form>
                                   <div class="form-group">
                                       <label for="title" class="sr-only">Title</label>
                                       <input type="text" class="form-control input-lg" id="title" placeholder="Insert source name here">
                                   </div>
                               </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <ul class="list-inline pull-right">
                                    <li>
                                        <button class="btn btn-white">&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;add vocabulary&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                    </li>
                                </ul>
                                <br>
                            </div>
                            <div class="panel-body">
                                <form>
                                    <div class="form-group">
                                        <label for="title" class="sr-only">Title</label>
                                        <input type="text" class="form-control input-lg" id="title" placeholder="Insert source name here">
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
    <script src="js/jquery.steps.js"></script>
    <script src="js/jquery.bootstrap.wizard.js"></script>
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    jQuery(document).ready(function($) {
       
        function toggleChevron(e) {
            $(e.target).prev('.panel-heading').find("a i.cus").toggleClass('cus-close cus-open');
        }
        $('#accordion').on('hidden.bs.collapse', toggleChevron);
        $('#accordion').on('shown.bs.collapse', toggleChevron);
        $('#accordion2').on('hidden.bs.collapse', toggleChevron);
        $('#accordion2').on('shown.bs.collapse', toggleChevron);
    });
    </script>
</body>

</html>
