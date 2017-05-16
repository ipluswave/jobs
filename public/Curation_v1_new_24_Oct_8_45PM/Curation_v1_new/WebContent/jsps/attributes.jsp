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
				<a class="navbar-brand" href="<%=request.getContextPath()%>/index">Neo4J</a>
			</div>
			<div>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="<%=request.getContextPath()%>/index">Home</a></li>
					<li><a href="<%=request.getContextPath()%>/addVocabulary">Vocabulary</a></li>
					<li class="active"><a
						href="<%=request.getContextPath()%>/viewAttributes">Attributes</a></li>
					<li><a href="<%=request.getContextPath()%>/viewExcecution">Execution</a></li>
					<li><a href="<%=request.getContextPath()%>/viewVisual">Visualization</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="page-header">
			<h2>Attribute Management</h2>
		</div>
		<div class="row">
			<%-- <form class="form-horizontal" role="form"> --%>
			<div class="col-lg-5">
				<form class="form-horizontal" method="post"
					action="searchAttributesByTerm">
					<div class="row">
						<div class="col-sm-12">
							<div class="input-group">
								<input type="text" name="attributeTerm" class="form-control"
									placeholder="Discover native attributes" required="required">
								<span class="input-group-btn">
									<button class="btn btn-default" type="submit">Search</button>
								</span>
							</div>
						</div>
					</div>
				</form>
				<form class="form-horizontal" method="post"
					action="searchAlgorithmByVocabulary">
					<div class="row" style="margin-top: 15px">
						<div class="col-sm-12">
							<div class="highlight"
								style="overflow-y: auto; max-height: 200px">
								<c:if test="${empty terms}">
									    No data available.
									</c:if>
								<c:if test="${not empty terms}">
									<c:forEach items="${terms}" var="i">
										<div class="checkbox">
											<label> <input type="checkbox" name="attribute"
												value="${i.term}"> ${i.term}
											</label>
										</div>
									</c:forEach>
								</c:if>
							</div>
						</div>
					</div>
					<div class="row" style="margin-top: 15px">
						<div class="col-sm-12">
							<button type="submit" class="btn btn-default pull-right">View</button>
						</div>
					</div>
				</form>
			</div>
			<div class="col-lg-2"></div>
			<div class="col-lg-5">
				<div class="row">
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#home"
							aria-controls="home" role="tab" data-toggle="tab">Algorithm</a></li>
						<li role="presentation"><a href="#profile"
							aria-controls="profile" role="tab" data-toggle="tab">Vocabulary</a></li>
						<li role="presentation"><a href="#settings"
							aria-controls="settings" role="tab" data-toggle="tab">Visualizations</a></li>
					</ul>

					<!-- Tab panes -->
					<div class="tab-content">
						<div role="tabpanel" class="tab-pane active" id="home">
							<div class="col-sm-12">
								<div class="highlight"
									style="overflow-y: auto; max-height: 200px">
									<c:forEach items="${algorithms}" var="algorithm">
										<div class="checkbox">
											<label> <input type="checkbox" value="123">
												Algorithm result 1
											</label>
											<p class="help-block">
												Description of algorithm is here. <br> Source of
												algorithm &amp; Cost($) <br> Popularity
											</p>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane" id="profile">
							<div class="col-sm-12">
								<div class="highlight"
									style="overflow-y: auto; max-height: 200px">
									<div class="checkbox">
										<label> <input type="checkbox" value="123">
											Vocabulary result 1
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" value="123">
											Vocabulary result 2
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" value="123">
											Vocabulary result 3
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" value="123">
											Vocabulary result 4
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" value="123">
											Vocabulary result 5
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" value="123">
											Vocabulary result 6
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" value="123">
											Vocabulary result 7
										</label>
									</div>
								</div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane" id="settings">
							<div class="col-sm-12">
								<div class="highlight"
									style="overflow-y: auto; max-height: 200px">
									<div class="checkbox">
										<label> <input type="checkbox" value="123">
											Visualizations result 1
										</label>
										<p class="help-block">
											Description of algorithm is here. <br> Source of
											algorithm &amp; Cost($) <br> Popularity <br> <img
												alt="image" src="" height="50px" width="250px">
										</p>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" value="123">
											Visualizations result 2
										</label>
										<p class="help-block">
											Description of algorithm is here. <br> Source of
											algorithm &amp; Cost($) <br> Popularity
										</p>
										<br> <img alt="image" src="" height="50px" width="250px">
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" value="123">
											Visualizations result 3
										</label>
										<p class="help-block">
											Description of algorithm is here. <br> Source of
											algorithm &amp; Cost($) <br> Popularity
										</p>
										<br> <img alt="image" src="" height="50px" width="250px">
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" value="123">
											Visualizations result 4
										</label>
										<p class="help-block">
											Description of algorithm is here. <br> Source of
											algorithm &amp; Cost($) <br> Popularity
										</p>
										<br> <img alt="image" src="" height="50px" width="250px">
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" value="123">
											Visualizations result 5
										</label>
										<p class="help-block">
											Description of algorithm is here. <br> Source of
											algorithm &amp; Cost($) <br> Popularity
										</p>
										<br> <img alt="image" src="" height="50px" width="250px">
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" value="123">
											Visualizations result 6
										</label>
										<p class="help-block">
											Description of algorithm is here. <br> Source of
											algorithm &amp; Cost($) <br> Popularity
										</p>
										<br> <img alt="image" src="" height="50px" width="250px">
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" value="123">
											Visualizations result 7
										</label>
										<p class="help-block">
											Description of algorithm is here. <br> Source of
											algorithm &amp; Cost($) <br> Popularity
										</p>
										<br> <img alt="image" src="" height="50px" width="250px">
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" value="123">
											Visualizations result 8
										</label>
										<p class="help-block">
											Description of algorithm is here. <br> Source of
											algorithm &amp; Cost($) <br> Popularity
										</p>
										<br> <img alt="image" src="" height="50px" width="250px">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row" style="margin-top: 15px">
					<div class="col-sm-12">
						<button type="submit" class="btn btn-default pull-right">Execute</button>
					</div>
				</div>
			</div>
			<%-- </form> --%>
		</div>
	</div>
	<script>
		$('#myTabs a').click(function (e) {
		  e.preventDefault()
		  $(this).tab('show')
		})
	</script>
</body>
</html>
