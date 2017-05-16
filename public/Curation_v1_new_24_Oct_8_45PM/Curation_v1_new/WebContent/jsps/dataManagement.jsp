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
				<li><a href="#">Data Source Registration</a></li>
				<!-- <li class="breadcrumb-btn pull-right"><a href="#" class="btn btn-navy btn-lg"><i class="fa fa-plus"></i>&nbsp;add new object</a></li> -->
			</ol>
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div id="rootwizard">
							<div class="" id="">
								<form class="form-horizontal" action="javascript:;"
									name="configForm" onsubmit="executeAlgorithm()">
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
												<div class="panel-body" id="configForm">
													<div class="form-group">
														<label for="title" class="col-sm-2 control-label">Driver</label>
														<div class="col-sm-10">
															<input type="text" name="driver"
																class="form-control input-lg" id="driver"
																placeholder="Driver" required="required">
														</div>
													</div>
													<div class="form-group">
														<label for="title" class="col-sm-2 control-label">URL</label>
														<div class="col-sm-10">
															<input type="text" name="url"
																class="form-control input-lg" id="url" placeholder="URL"
																required="required">
														</div>
													</div>
													<div class="form-group">
														<label for="title" class="col-sm-2 control-label">User
															Name</label>
														<div class="col-sm-10">
															<input type="text" name="user"
																class="form-control input-lg" id="user"
																placeholder="User Name" required="required">
														</div>
													</div>
													<div class="form-group">
														<label for="title" class="col-sm-2 control-label">Password</label>
														<div class="col-sm-10">
															<input type="password" name="password"
																class="form-control input-lg" id="password"
																placeholder="Password" required="required">
														</div>
													</div>
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">
													<ul class="list-inline">
														<li>
															<h3 class="panel-title">Table</h3>
														</li>
													</ul>
												</div>
												<div class="panel-body" id="tableForm">
													<div class="form-group">
														<label for="title" class="col-sm-2 control-label">Table
															Name</label>
														<div class="col-sm-10">
															<input type="text" name="tableName"
																class="form-control input-lg" id="tableName"
																placeholder="Table Name" required="required">
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
														<div id="algorithmLoader"></div>
														<br>
														<button type="submit" id="execute"
															class="btn btn-navy btn-lg">
															&nbsp;&nbsp;&nbsp;next&nbsp;<i
																class="fa fa-chevron-right"></i>&nbsp;&nbsp;&nbsp;
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</form>
							</div>
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