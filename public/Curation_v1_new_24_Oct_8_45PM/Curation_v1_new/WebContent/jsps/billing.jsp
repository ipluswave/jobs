<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="common/header.jsp"></jsp:include>
<body>

	<script type="text/javascript">
	loadData2();
	var document1="";
	
	function loadData2() {
		var settings = {
				  "async": true,
				  "crossDomain": true,
				  "url": "billingchart",
				  "method": "GET",
				  "headers": {
				    "content-type": "application/x-www-form-urlencoded",
				    "cache-control": "no-cache",
				    "postman-token": "6570c6a3-3674-d585-82aa-7dd74af3ca1f"
				  },
				}
				$.ajax(settings).done(function (response) {
				  document1=response;
				  
				});
		
	};
</script>

	<div id="wrapper">
		<!-- Sidebar -->
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
			<h3 class="target-name">
				<strong>COST SUMMARY</strong>
				</h4>
				<div class="col-lg-3">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table table-striped table-bordered target">
									<tbody>
										<tr>
											<td class="vert-align" colspan="2">
												<h4 class="target-name">
													<strong>SPEND SUMMARY</strong>
												</h4>
											</td>
										</tr>
										<tr>
											<td class="vert-align" colspan="2">
												<h3 class="target-name">
													<strong>$562.60</strong>
												</h3>
											</td>
										</tr>
										<c:forEach items="${spendSummary}" var="grpId1">
											<tr>
												<td class="vert-align"><span>${grpId1.key}</span></td>
												<td class="vert-align"><span>${grpId1.value}</span></td>
											</tr>
										</c:forEach>
										<tr>
											<td class="vert-align"><span class="target-name">Total</span>
											</td>
											<td class="vert-align"><span class="target-name">$1653.76</span>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="panel panel-default panel-border">
						<div class="panel-heading">
							<h3 class="panel-title">MONTH TO DATE SERVICE BY ALGORITHM</h3>
							<hr>
						</div>
						<div class="panel-body">
							<div class="demo-section k-content wide">
								<div id="chart"></div>
							</div>
						</div>
					</div>
				</div>
		</div>
		<div class="col-lg-12">
			<div class="col-lg-6">
				<div class="panel panel-default panel-border">
					<div class="panel-heading">
						<h3 class="panel-title">ALGORITHM SPECIFIC FUNCTION</h3>
						<hr>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-striped table-bordered target">
								<thead>
									<tr>
										<th class="target-name">ALGORITHM</th>
										<th class="target-name">MONTH-TO-DATE</th>
										<th class="target-name">DATE-TO-END</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${status}" var="Status">
										<tr>
											<td class="vert-align"><span>${Status.algorithemId}</span>
											</td>
											<td class="vert-align"><span>${Status.monthtoDate}
													(${Status.monthtoDateHours}) </span></td>
											<td class="vert-align"><span>${Status.datetoEnd}
													(${Status.datetoEndHours}) </span></td>
										</tr>
									</c:forEach>

								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="panel panel-default panel-border">
					<div class="panel-heading">
						<h3 class="panel-title">SPEND SUMMARY</h3>
						<hr>
					</div>
					<div class="panel-body">
						<div class="demo-section k-content wide">
							<div id="chart1"></div>
						</div>
					</div>
					<div class="panel-footer">
						<div class="checkbox">
							<input id="check6" type="checkbox" name="check" value="check6"
								checked> <label for="check6"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>Include
								Subscription Charges</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="common/footer.jsp"></jsp:include>
	<script>
		$(document).ready( function () {
			$('#table_id').DataTable();
		});
	</script>
	<script>
        function createChart() {
            $("#chart").kendoChart({
                legend: {
                   position: "bottom"
                },
                seriesDefaults: {
                    labels: {
                        template: "#= category # - #= kendo.format('{0:P}', percentage)#",
                        position: "outsideEnd",
                        visible: true,
                        background: "transparent"
                    }
                },
                series: [{
                    type: "donut",
                    data:document1
                }],
                tooltip: {
                    visible: true,
                    template: "#= category # - #= kendo.format('{0:P}', percentage) #"
                }
            });
        }

        $(document).ready(function() {
            createChart();
            $(document).bind("kendo:skinChange", createChart);
            $(".box").bind("change", refresh);
        });

        function refresh() {
            var chart = $("#chart").data("kendoChart"),
                pieSeries = chart.options.series[0],
                labels = $("#labels").prop("checked"),
                alignInputs = $("input[name='alignType']"),
                alignLabels = alignInputs.filter(":checked").val();

            chart.options.transitions = false;
            pieSeries.labels.visible = labels;
            pieSeries.labels.align = alignLabels;

            alignInputs.attr("disabled", !labels);

            chart.refresh();
        }
        
        function createChart1() {
        	var d = new Date();
        	var monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun",
        	                       "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
        	                     ];

            $("#chart1").kendoChart({
                 legend: {
                     position: "bottom"
                 },
                 seriesDefaults: {
                	 type: "column"
                 },
                 series: [{
                     name: "Algorithm Cost",
                     data: [39,96,388]
                 }],
                 valueAxis: {
                     labels: {
                         format: "{0}"
                     },
                     line: {
                         visible: false
                     },
                     axisCrossingValue: 0
                 },
                 categoryAxis: {
                     categories: ["Last Month("+monthNames[d.getMonth()-1]+" "+d.getFullYear()+")","Month-to-date("+monthNames[d.getMonth()]+" "+d.getFullYear()+")", "Forecast("+monthNames[d.getMonth()]+" "+d.getFullYear()+")"],
                     line: {
                         visible: false
                     },
                     
                 },
                 tooltip: {
                     visible: true,
                     format: "{0}",
                     template: "#= series.name #: $#= value #"
                 }
            });
        }

        $(document).ready(createChart1);
        $(document).bind("kendo:skinChange", createChart1);
    </script>
	<script>
    	$("#menu-toggle").click(function(e) {
	        e.preventDefault();
		        $("#wrapper").toggleClass("toggled");
		    });
		    jQuery(document).ready(function($) {
		        $('a[data-toggle="collapse"]').click(function() {
			        $(this).find('i.ct').toggleClass('fa-chevron-right fa-chevron-up');
		            $(this).find('i.sm').toggleClass('fa-angle-right fa-angle-down');
		            $(this).parent('li').toggleClass('active');
	        })
	    });
    </script>
</body>
</html>
