<!DOCTYPE html>
<html lang="en">
<jsp:include page="common/header.jsp"></jsp:include>
<body>
	<div id="wrapper">
		<jsp:include page="common/left-navbar.jsp"></jsp:include>
		<div id="page-content-wrapper" class="row">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a href="#menu-toggle" class="btn btn-menu"
								id="menu-toggle"><i class="fa fa-bars fa-lg"></i></a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown"><a data-toggle="dropdown"
								class="dropdown-toggle" href="#"> <span class="profile-ava">
										<img alt="" src="resources/images/avatar1_small.jpg"
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
		</div>
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">
						Play Prescriptions For [ <b> </b>
						<script>
							var today = new Date();
							var dd = today.getDate();
							var mm = today.getMonth() + 1;
							var yyyy = today.getFullYear();
							if (dd < 10) {
								dd = '0' + dd
							}
							if (mm < 10) {
								mm = '0' + mm
							}
							document.write(dd + '-' + mm + '-' + yyyy)
						</script>
						]
					</h3>
				</div>
				<div class="panel-body panel-scroll">
					<div class="row" style="margin-bottom: 10px;">
						<div class="col-lg-1">
							<div class="checkbox">
								<input id="check6" type="checkbox" name="check" value="check6"
									checked> <label for="check6"></label>
							</div>
						</div>
						<div class="col-lg-11">
							<div class="demo-section k-content">
								<table class="history">
									<tr>
										<td class="item">Play</td>
										<td class="chart"><div id="chart-mmHg1"></div></td>
									</tr>
									<tr>
										<td class="item">Offer Value</td>
										<td class="chart"><div id="chart-hPa1"></div></td>
									</tr>
									<tr>
										<td class="item">Average Order Size</td>
										<td class="chart"><div id="chart-hum1"></div></td>
									</tr>
									<tr>
										<td class="item">New Customer Count</td>
										<td class="chart"><div id="chart-temp1"></div></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<hr>
					<div class="row" style="margin-top: 10px;">
						<div class="col-lg-1">
							<div class="checkbox">
								<input id="check7" type="checkbox" name="check7" value="check7">
								<label for="check7"></label>
							</div>
						</div>
						<div class="col-lg-11">
							<div class="demo-section k-content">
								<table class="history">
									<tr>
										<td class="item">Play</td>
										<td class="chart"><div id="chart-mmHg"></div></td>
									</tr>
									<tr>
										<td class="item">Offer Value</td>
										<td class="chart"><div id="chart-hPa"></div></td>
									</tr>
									<tr>
										<td class="item">Average Order Size</td>
										<td class="chart"><div id="chart-hum"></div></td>
									</tr>
									<tr>
										<td class="item">New Customer Count</td>
										<td class="chart"><div id="chart-temp"></div></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-footer text-center">
					<button class="btn btn-navy btn-lg">
						&nbsp;&nbsp;&nbsp;<i class="cus cus-exe-w cus-xs"></i>&nbsp;Execute&nbsp;&nbsp;&nbsp;
					</button>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="common/footer.jsp"></jsp:include>
	<script>
		function createChart() {
			$("#chart-mmHg,#chart-mmHg1")
					.kendoChart(
							{
								legend : {
									visible : false
								},
								series : [ {
									type : "bullet",
									data : [ [ 750, 762.5 ] ]
								} ],
								chartArea : {
									margin : {
										left : 0
									}
								},
								categoryAxis : {
									majorGridLines : {
										visible : false
									},
									majorTicks : {
										visible : false
									}
								},
								valueAxis : [ {
									plotBands : [ {
										from : 715,
										to : 752,
										color : "#ccc",
										opacity : .6
									}, {
										from : 752,
										to : 772,
										color : "#ccc",
										opacity : .3
									} ],
									majorGridLines : {
										visible : false
									},
									min : 715,
									max : 795,
									minorTicks : {
										visible : true
									}
								} ],
								tooltip : {
									visible : true,
									template : "Maximum: #= value.target # <br /> Average: #= value.current #"
								}
							});

			$("#chart-hPa,#chart-hPa1")
					.kendoChart(
							{
								legend : {
									visible : false
								},
								series : [ {
									type : "bullet",
									data : [ [ 1001, 1017 ] ]
								} ],
								chartArea : {
									margin : {
										left : 0
									}
								},
								categoryAxis : {
									majorGridLines : {
										visible : false
									},
									majorTicks : {
										visible : false
									}
								},
								valueAxis : [ {
									plotBands : [ {
										from : 955,
										to : 1002,
										color : "#ccc",
										opacity : .6
									}, {
										from : 1002,
										to : 1027,
										color : "#ccc",
										opacity : .3
									} ],
									majorGridLines : {
										visible : false
									},
									min : 955,
									max : 1055,
									minorTicks : {
										visible : true
									}
								} ],
								tooltip : {
									visible : true,
									template : "Maximum: #= value.target # <br /> Average: #= value.current #"
								}
							});

			$("#chart-hum,#chart-hum1")
					.kendoChart(
							{
								legend : {
									visible : false
								},
								series : [ {
									type : "bullet",
									data : [ [ 45, 60 ] ]
								} ],
								categoryAxis : {
									majorGridLines : {
										visible : false
									},
									majorTicks : {
										visible : false
									}
								},
								valueAxis : [ {
									plotBands : [ {
										from : 0,
										to : 33,
										color : "#ccc",
										opacity : .6
									}, {
										from : 33,
										to : 66,
										color : "#ccc",
										opacity : .3
									} ],
									majorGridLines : {
										visible : false
									},
									min : 0,
									max : 100,
									minorTicks : {
										visible : true
									}
								} ],
								tooltip : {
									visible : true,
									template : "Maximum: #= value.target # <br /> Average: #= value.current #"
								}
							});

			$("#chart-temp,#chart-temp1")
					.kendoChart(
							{
								legend : {
									visible : false
								},
								series : [ {
									type : "bullet",
									data : [ [ 25, 22 ] ]
								} ],
								categoryAxis : {
									majorGridLines : {
										visible : false
									},
									majorTicks : {
										visible : false
									}
								},
								valueAxis : [ {
									plotBands : [ {
										from : 0,
										to : 10,
										color : "yellow",
										opacity : .3
									}, {
										from : 10,
										to : 20,
										color : "orange",
										opacity : .3
									}, {
										from : 20,
										to : 30,
										color : "red",
										opacity : .3
									} ],
									majorGridLines : {
										visible : false
									},
									min : 0,
									max : 30,
									minorTicks : {
										visible : true
									}
								} ],
								tooltip : {
									visible : true,
									template : "Maximum: #= value.target # <br /> Average: #= value.current #"
								}
							});
		}

		$(document).ready(createChart);
		$(document).bind("kendo:skinChange", createChart);
	</script>
	<script>
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled");
		});
		jQuery(document).ready(
				function($) {
					$('a[data-toggle="collapse"]').click(
							function() {
								$(this).find('i.ct').toggleClass(
										'fa-chevron-right fa-chevron-up');
								$(this).find('i.sm').toggleClass(
										'fa-angle-right fa-angle-down');
								$(this).parent('li').toggleClass('active');
							})
				});
	</script>
</body>
</html>
