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
				<li><a href="#">Attribute Registration</a></li>
			</ol>
			<form:form action="addAttribute" method="post"
				modelAttribute="attribute" class="form-horizontal">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12">
							<div class="panel panel-default">
								<div class="panel-heading">
									<ul class="list-inline">
										<li>
											<!-- <h3 class="panel-title">Algorithm Registration</h3> -->
										</li>
									</ul>
								</div>
								<div class="panel-body">
									<div class="form-group">
										<label for="algorithmType" class="col-sm-2 control-label">Attribute
											Type</label>
										<div class="col-sm-10">
											<form:select path="attributeTypeId" id="attributeTypeId"
												class="form-control input-lg" required="required">
												<option value="" disabled selected>Select Attribute
													Type</option>
												<option value="1">Visualization</option>
												<option value="2">Analytics</option>
											</form:select>
										</div>
									</div>
									<div class="form-group">
										<label for="title" class="col-sm-2 control-label">Attribute
											Name</label>
										<div class="col-sm-10">
											<form:input path="attributeName"
												class="form-control input-lg" id="attributeName"
												placeholder="Enter Attribute Name" required="required" />
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-12">
											<form:textarea path="description"
												class="form-control input-lg" id="description" rows="3"
												cols="4" placeholder="Description of Attribute:"
												required="required" />
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-12">
											<form:input path="usage" class="form-control input-lg"
												id="usage" placeholder="Where used:" required="required" />
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-12">
											<form:input path="tags" class="form-control input-lg"
												id="tags" placeholder="Tags:" required="required" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6">
							<div class="panel panel-default">
								<div class="panel-body"></div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="panel panel-default">
								<div class="panel-body">
									<div class="text-right">
										<form:button class="btn btn-navy btn-lg">&nbsp;&nbsp;&nbsp;Next&nbsp;<i
												class="fa fa-chevron-right"></i>&nbsp;&nbsp;&nbsp;</form:button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form:form>
		</div>
		<!-- /#page-content-wrapper -->
	</div>
	<!-- /#wrapper -->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery-2.1.4.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery.combo.select.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/controller/algorithmController.js"></script>
</body>
</html>