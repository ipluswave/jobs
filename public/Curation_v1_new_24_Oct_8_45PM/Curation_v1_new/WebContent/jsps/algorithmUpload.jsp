<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Tempo</title>
<!-- Bootstrap -->
<link
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/jquery-ui.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/style.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/css/combo.select.css"
	rel="stylesheet">
<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,700,500,300|Roboto+Condensed:400,300,700'
	rel='stylesheet' type='text/css'>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript">
    	var _path = "<%=request.getContextPath()%>";
    </script>
</head>

<body>
	<div id="wrapper">
		<!-- Sidebar -->
		<jsp:include page="common/left-navbar.jsp"></jsp:include>
		<!-- /#sidebar-wrapper -->
		<!-- Page Content -->
		<div id="page-content-wrapper">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a href="#" class="btn btn-menu"><i
									class="fa fa-bell fa-lg"></i></a></li>
							<li><a href="#" class="btn btn-menu"><i
									class="fa fa-search fa-lg"></i></a></li>
							<li><a href="#menu-toggle" class="btn btn-menu"
								id="menu-toggle"><i class="fa fa-bars fa-lg"></i></a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown"><a data-toggle="dropdown"
								class="dropdown-toggle" href="#"> <span class="profile-ava">
										<img alt=""
										src="<%=request.getContextPath()%>/resources/images/avatar1_small.jpg"
										width="45">
								</span>
									<ul class="list-unstyled">
										<li><span class="username">Kyle Petterson</span></li>
										<li><span class="designation">Admin</span></li>
									</ul> <i class="fa fa-chevron-down"></i>
							</a>
								<ul class="dropdown-menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li role="separator" class="divider"></li>
									<li><a href="#">Separated link</a></li>
								</ul></li>
							<li><a href="#" class="btn btn-menu"><i
									class="fa fa-cog fa-lg"></i></a></li>
						</ul>
					</div>
				</div>
			</nav>
			<ol class="breadcrumb">
				<li><a href="#">Algorithm Registration</a></li>
				<!-- <li class="breadcrumb-btn pull-right"><a href="#" class="btn btn-navy btn-lg"><i class="fa fa-plus"></i>&nbsp;add new object</a></li> -->
			</ol>
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-6">
						<div class="panel panel-default">
							<div class="panel-heading">
								<!-- <ul class="list-inline">
	                                  <li>
	                                      <h3 class="panel-title">Algorithm Parameters</h3>
	                                  </li>
	                              </ul> -->
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="col-lg-6">
						<div class="panel panel-default">
							<div class="panel-heading">
								<ul class="list-inline">
									<li>
										<h3 class="panel-title">Parameters</h3>
									</li>
								</ul>
							</div>
							<div class="panel-body">
								<div class="form-group">
									<button type="button" class="btn btn-navy btn-sm"
										data-toggle="modal" data-target="#myModal1">
										<i class="fa fa-plus"></i>&nbsp;Add parameter&nbsp;
									</button>
								</div>
								<div class="panel-group" id="accordion" role="tablist"
									aria-multiselectable="true">
									<div class="data-fields-container"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="col-lg-12">
							<div class="panel panel-default">
								<div class="panel-heading">
									<ul class="list-inline">
										<li>
											<h3 class="panel-title">Business Vocabulary</h3>
										</li>
									</ul>
								</div>
								<div class="panel-body">
									<div class="tab-content">
										<div role="tabpanel" class="tab-pane active" id="home">
											<button class="btn btn-white" data-target="#myModal"
												data-toggle="modal">
												<i class="fa fa-plus"></i> add vocabulary
											</button>
											<br> <br>
											<form action="javascript:;" method="post" name="termForm"
												id="termForm" onsubmit="searchInTextBox()"
												autocomplete="off">
												<div class="form-group">
													<input type="text" class="form-control input-lg"
														id="searchTerm" placeholder="Term" required="required">
													<!-- <small>(Maximum size: 30 MB)</small> -->
													<br>
													<button type="submit" class="btn btn-navy btn-sm">
														<i class="fa fa-search"></i>&nbsp;Browse&nbsp;
													</button>
												</div>
												<div class="form-group_drop" id="source_field">
													<label for="name" class="sr-only">Name</label> <select
														name="dropDown" id="dropDown1" class="form-control"
														onchange="searchAttributesByTerm11()">
														<option value="" disabled selected>Enter Source
															or field name</option>

													</select>
												</div>
											</form>
										</div>
									</div>
								</div>
								<div class="panel-body">
									<div class="panel-group" id="accordion" role="tablist"
										aria-multiselectable="true">
										<div class="vocabulary-container"></div>
										<div id="searchResult" class="text-danger"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="col-md-12 text-center">
						<button id="nextBtn" class="btn btn-navy btn-lg">&nbsp;&nbsp;DONE&nbsp;&nbsp;&nbsp;&nbsp;</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /#page-content-wrapper -->
	<!--Modal-->
	<!-- Button trigger modal -->
	<!-- Modal -->
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<form action="javascript:;" id="parameterForm" method="post"
					class="form-horizontal" autocomplete="off"
					onsubmit="saveParameter11()">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Add Parameter</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="name" class="col-sm-3 control-label">Algorithm</label>
							<div class="col-sm-9">
								<select name="algorithmId" id="algorithmId" class="form-control"
									required="required">
									<!-- newAlgorithm -->
									<c:forEach items="${algorithmList}" var="algorithm">
										<option value="${algorithm.id}"
											${algorithm.id == newAlgorithm.id ? 'selected' : ''}>${algorithm.algorithmName}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="title" class="col-sm-3 control-label">Name</label>
							<div class="col-sm-9">
								<input type="text" name="parameterName"
									class="form-control input-lg" id="parameterName"
									placeholder="Enter Parameter Name" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="title" class="col-sm-3 control-label">Type</label>
							<div class="col-sm-9">
								<select id="parameterType" name="parameterType"
									required="required">
									<option value="">Select Option</option>
									<option value="integer">Integer</option>
									<option value="string">String</option>
									<option value="float">Float</option>
									<option value="long">Long</option>
									<option value="boolean">Boolean</option>
								</select>
							</div>
						</div>
						<div class="form-group text-center" id="addParameterResult"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-navy">Save changes</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<%@include file="/jsps/modals/addVocabularyModal.jsp"%>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery-2.1.4.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery.loadTemplate-1.5.6.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery.combo.select.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery.steps.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery.bootstrap.wizard.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/controller/algorithmController.js"></script>
	<script type="text/html" id="template">
    <div class="panel panel-custom mainSortable secsortable">
        <div class="panel-heading clearfix" role="tab">
            <ul class="list-inline">
                <li><div class="drag"><i class="cus cus-drag"></i></div></li>
                <li>
                    <a class="product" role="button" data-toggle="collapse" data-parent="#accordion" data-href="ref" aria-expanded="true" data-aria-controls="id">
                        <i class="cus cus-close"></i>&nbsp;<span class="product-name" data-content="field"></span>
                    </a>
                </li>
                <li class="pull-right">
                    <ul class="list-inline">
                        <li>
                            <button type="button" class="btn btn-white btn-lg remove"><i class="fa fa-times fa-lg"></i></button>
                        </li>
                        <li>
                            <button type="button" class="btn btn-white btn-lg"><i class="fa fa-arrow-right fa-lg"></i></button>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <div data-id="id" class="panel-collapse collapse" role="tabpanel" ondrop="drop(event,this)" ondragover="allowDrop(event)">
            <div class="panel-body">
                <ul class="tree">
                    <li>Drop vocabulary here.</li>
                </ul>
            </div>
        </div>
    </div>
	</script>
	<script type="text/html" id="template1">
	<div class="panel panel-custom mainSortable secsortable" draggable="true" ondragstart="drag(event)" data-id="id">
	    <div class="panel-heading clearfix" role="tab">
	        <ul class="list-inline">
	            <li>
	                <div class="drag">
	                    <i class="cus cus-drag"></i>
	                </div>
	            </li>
	            <li>
	                <a class="product" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="id">
	                    <i class="cus cus-close"></i>&nbsp;<span class="product-name" data-content="term"></span>
	                </a>
	            </li>
	            <li class="pull-right">
	                <ul class="list-inline">
	                    <li>
	                        <button type="button" class="btn btn-white btn-lg remove"><i class="fa fa-times fa-lg"></i></button>
	                    </li>
	                    <li>
	                        <button type="button" class="btn btn-white btn-lg"><i class="fa fa-arrow-right fa-lg"></i></button>
	                    </li>
	                </ul>
	            </li>
	        </ul>
	    </div>
		<div data-id="id" class="panel-collapse collapse" role="tabpanel">
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
	</script>
	<script type="text/javascript">
	
	function searchInTextBox(){
		var term = $("#searchTerm").val();
		if(term){
			var result = $.ajax({
				contentType : 'application/json; charset=utf-8',
				type : "POST",
				url : "searchAttributesByTerm",
				dataType : 'json',
				data : term, 
				success : function(data) {
					//alert(JSON.stringify(data));
					if(data.length>0){
						terms = data;
						$("#dropDown1").html("");
						$("#dropDown1").append("<option>Select</option>");
						for(i=0;i<data.length;i++){
							 $("#dropDown1").append("<option value='"+data[i].term+"'>"+data[i].term+"</option>"); 
							console.log(data[i].id);
							$("#source_field .combo-dropdown").append('<li class="option-item" data-value="'+data[i].term+'" data-index="'+data[i].id+'">'+data[i].term+'</li>');
						}
						
						 $('#dropDown1').comboSelect();
						    
					}
					else{
						$(".vocabulary-container").html("");
						$("#searchResult").html("No vocabulary found by this name please add new.");
					}
			    },
				error : function(data) {
					$("#searchResult").html("Unable to process request.");
				}
			});
		}
	};
	 

	</script>
</body>
</html>