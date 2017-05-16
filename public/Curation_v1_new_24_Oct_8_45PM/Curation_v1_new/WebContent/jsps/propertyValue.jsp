<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Attribute Management</title>
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
				<a class="navbar-brand" href="<%=request.getContextPath()%>/algorithmRegister">Curation</a>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="page-header">
			<h2>Property Value Management</h2>
		</div>
		<div class="row">
			<div class="col-lg-5">
				<form:form action="saveProperty" method="post" modelAttribute="valueModel" class="form-horizontal">
					<div class="form-group">
						<label class="control-label col-sm-4" for="term">Key:</label>
						<div class="col-sm-8">
							<form:input path="propertyKey" class="form-control" name="propertyKey" id="propertyKey" placeholder="Enter key"/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-4" for="term">Value:</label>
						<div class="col-sm-8">
							<form:input path="propertyValue" class="form-control" name="propertyValue" id="propertyValue" placeholder="Enter Value"/>
						</div>
					</div>
					<div class="form-group text-center">
						<form:button class="btn btn-default">Add</form:button>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>
