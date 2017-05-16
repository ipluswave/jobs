<!DOCTYPE html>
<html lang="en">
<head>
<title>Execution</title>
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
					<li><a href="<%=request.getContextPath()%>/viewAttributes">Attributes</a></li>
					<li class="active"><a href="<%=request.getContextPath()%>/viewExcecution">Execution</a></li>
					<li><a href="<%=request.getContextPath()%>/viewVisual">Visualization</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="page-header">
			<h2>Discovery</h2>
		</div>
		<div class="row">
			<form class="form-horizontal" role="form">
				<div class="col-lg-5">
					<div class="col-sm-12">
						<div class="input-group">
					      <input type="text" class="form-control" placeholder="Search algorithm">
					      <span class="input-group-btn">
					        <button class="btn btn-default" type="button">Search</button>
					      </span>
					    </div>
					</div>
					<br><br><br>
					<div class="col-sm-12">
						<figure class="highlight">
							<pre>
								Results
							</pre>
						</figure>
					</div>
				</div>
			</form>
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
