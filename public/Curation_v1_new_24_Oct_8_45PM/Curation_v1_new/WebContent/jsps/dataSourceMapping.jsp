<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<jsp:include page="common/header.jsp"></jsp:include>
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
				<li><a href="#">Analyze</a></li>
				<!-- <li class="breadcrumb-btn pull-right"><a href="#" class="btn btn-navy btn-lg"><i class="fa fa-plus"></i>&nbsp;add new object</a></li> -->
			</ol>
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div id="rootwizard">

							<div class="" id="">
								<div class="row">
									<div class="col-lg-6 no-padding">
										<div class="panel panel-default">
											<div class="panel-heading">
												<ul class="list-inline">
													<li>
														<h3 class="panel-title">Data Management</h3>
													</li>
												</ul>
											</div>
											<div class="panel-body">
												<div class="tab-content">
													<div role="tabpanel" class="tab-pane active" id="home">
														<form class="form-horizontal" action="javascript:;"
															method="post" name="dataSourceForm" id="" onsubmit="">
															<div class="form-group">
																<input type="file" class="form-control input-lg"
																	id="inputFile" placeholder="Select file" accept=".csv"
																	required="required">
																<!-- <small>(Maximum size: 30 MB)</small> -->
															</div>
															<div class="form-group">
																<label for="name" class="sr-only">Name</label> <select
																	name="" id="dataSource" class="form-control"
																	required="required">
																	<option value="" disabled selected>Enter
																		Source or field name</option>
																	<c:forEach items="${dataSourceList}" var="source">
																		<option value="${source.id}">${source.sourceName}</option>
																	</c:forEach>
																</select>
															</div>
															<button type="submit" class="btn btn-navy btn-sm">
																&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;upload
																Source&nbsp;&nbsp;&nbsp;&nbsp;
															</button>
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
												<div class="tab-content">
													<div role="tabpanel" class="tab-pane active" id="home">
														<button class="btn btn-white" data-toggle="modal"
															data-target="#myModal">
															&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;add
															vocabulary&nbsp;&nbsp;&nbsp;&nbsp;
														</button>
														<br /> <br />
														<form>
															<div class="form-group">
																<input type="text" class="form-control input-lg"
																	id="searchTerm" placeholder="Term">
																<!-- <small>(Maximum size: 30 MB)</small> -->
																<br>
																<button type="button" class="btn btn-navy btn-sm"
																	onclick="searchAttributesByTerm()">
																	<i class="fa fa-search"></i>&nbsp;Browse&nbsp;
																</button>
															</div>
															<div class="form-group">
																<label for="name" class="sr-only">Name</label> <select
																	name="" id="" class="form-control">
																	<option value="" disabled selected>Enter
																		Source or field name</option>
																	<option value="1">Curator 1</option>
																	<option value="1">Curator 2</option>
																	<option value="1">Curator 3</option>
																	<option value="1">Curator 4</option>
																</select>
															</div>
															<!-- <button class="btn btn-navy btn-sm">&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;upload Source&nbsp;&nbsp;&nbsp;&nbsp;</button> -->
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<form action="javascript:;" method="post" name="dataFieldForm"
									id="dataFieldForm" onsubmit="saveUserMappings()">
									<div class="row">
										<div class="col-lg-6">
											<div class="panel panel-default">
												<div class="panel-heading">
													<ul class="list-inline">
														<li>
															<h3 class="panel-title">Data Fields</h3>
														</li>
													</ul>
												</div>
												<div class="panel-body">
													<div class="panel-group" id="accordion" role="tablist"
														aria-multiselectable="true">
														<div class="data-fields-container"></div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-lg-6">
											<div class="panel panel-default">
												<div class="panel-heading">
													<ul class="list-inline">
														<li>
															<h3 class="panel-title">Business Vocabulary</h3>
														</li>
													</ul>
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
										<div class="col-md-12 text-center">
											<button class="btn btn-navy btn-lg" type="submit">
												&nbsp;&nbsp;&nbsp;<i class="fa fa-download"></i>&nbsp;&nbsp;save
												detail&nbsp;&nbsp;&nbsp;&nbsp;
											</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<br>
				</div>
			</div>
			<!-- /#page-content-wrapper -->
		</div>
		<!--Modal-->
		<%@include file="/jsps/modals/addVocabularyModal.jsp"%>
		<!-- /#wrapper -->
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<jsp:include page="common/footer.jsp"></jsp:include>
		<script
			src="<%=request.getContextPath()%>/resources/controller/dataManagement.js"></script>
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
                    <li>
                        Data Type
                        <select data-id="selectId" name="selectName" required="required">
                        	<option value="">Select Option</option>
                        	<option value="integer">Integer</option>
                        	<option value="string">String</option>
                        	<option value="float">Float</option>
                        	<option value="long">Long</option>
                        	<option value="boolean">Boolean</option>
                        </select>
                        
                    </li>
					<br>
                    <li>
                        Size
                        <input type="text" name="sizeName" data-id="sizeId" required="required">
                    </li>
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
	</div>
	</script>
</body>
</html>