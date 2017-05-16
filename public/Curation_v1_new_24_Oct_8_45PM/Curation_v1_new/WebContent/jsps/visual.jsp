<!DOCTYPE html>
<html lang="en">
<head>
<title>Visualization</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<style>
#div1 {width:350px;height:70px;padding:10px;border:1px solid #aaaaaa;}
</style>
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
					<li><a href="<%=request.getContextPath()%>/viewExcecution">Execution</a></li>
					<li class="active"><a href="<%=request.getContextPath()%>/viewVisual">Visualization</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="page-header">
			<div class="row">
				<div class="col-lg-6">
					<h2>Visualization [Name of algorithm]</h2>
				</div>
				<div class="col-lg-6">
					<div class="pull-right">
						<button class="btn btn-default">Save</button>
						<button class="btn btn-link">Cancel</button>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<form class="form-horizontal" role="form">
				<div class="col-lg-12">
					<figure class="highlight">
						<pre class="text-center">Algorithm</pre>
					</figure>
				</div>
			</form>
		</div>
	<div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)">Field</div>
			<br>
			<br>
			<span id="1" draggable="true" ondragstart="drag(event)">Vocabulary</span>
				<!-- <img id="drag1" src="img_logo.gif" draggable="true" ondragstart="drag(event)" width="336" height="69"> -->
			</div>
	<script>
		$('#myTabs a').click(function (e) {
		  e.preventDefault()
		  $(this).tab('show')
		})
		function allowDrop(ev) {
    ev.preventDefault();
}

function drag(ev) {
    ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev) {
    ev.preventDefault();

    var data = ev.dataTransfer.getData("text");
    ev.target.appendChild(document.getElementById(data));
alert(data);
}
	</script>
</body>
</html>
