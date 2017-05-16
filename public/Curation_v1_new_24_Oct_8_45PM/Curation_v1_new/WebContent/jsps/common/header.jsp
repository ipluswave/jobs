<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Tempo</title>
<!-- Bootstrap -->
<link href="<%=request.getContextPath()%>/resources/front/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/front/css/jquery-ui.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/front/css/font-awesome.min.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/front/css/style.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/front/datatable/css/jquery.dataTables.min.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/front/css/combo.select.css" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/front/css/kendo.common.min.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/front/css/kendo.default.min.css" />
<script src="<%=request.getContextPath()%>/resources/front/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/front/js/kendo.all.min.js"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<style>
	.history {
		border-collapse: collapse;
		width: 100%;
		margin: 0 auto;
	}
	
	.history .k-chart {
		height: 65px;
	}
	
	.history td.item {
		line-height: 25px;
		text-align: right;
		padding-bottom: 22px;
		border: none;
	}
</style>
<script type="text/javascript">
	var _path = "<%=request.getContextPath()%>";
</script>
</head>