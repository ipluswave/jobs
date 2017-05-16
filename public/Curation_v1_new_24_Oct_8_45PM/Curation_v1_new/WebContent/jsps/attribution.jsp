<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="common/header.jsp"></jsp:include>
<body>
	<div id="wrapper" style="background-color: rgb(245, 245, 245);">
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
		<div class="col-lg-12" style="background-color: rgb(245, 245, 245);">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Algorithm Optimization</h3>
				</div>
				<div class="panel-body panel-scroll">
					<div class="row" style="margin-bottom: 10px;">
						<div class="col-lg-12">
							<div class="demo-section k-content">
								<table class="history">
									<c:forEach items="${setLabel}" var="setLabel">
										<tr>
											<th class="item" colspan="2" style="font-size: 28px">${setLabel}</th>
										</tr>
										<c:forEach items="${score}" var="Score">
											<c:if test="${setLabel eq Score.label }">

												<tr class="algoId">
													<td class="item" align="left" id="${Score.algorithemId}">AlgorithmID
														${Score.algorithemId}</td>
													<td class="chart"><div class="chart-mmHg"></div></td>
												</tr>
											</c:if>
										</c:forEach>
									</c:forEach>
									<!-- <tr>
										<td class="item">Algorithm #2</td>
										<td class="chart"><div class="chart-hPa"></div></td>
									</tr>
									<tr>
										<td class="item">Algorithm #3</td>
										<td class="chart"><div class="chart-hum"></div></td>
									</tr> -->
								</table>
							</div>
						</div>
					</div>
					<hr>
					<div class="row" style="margin-top: 10px;">
						<div class="col-lg-12">
							<div class="demo-section k-content">
								<table class="history">
									<!-- <tr>
										<th class="item" colspan="2" style="font-size: 28px">RFM</th>
									</tr> -->
									<%-- <c:forEach items="${score}" var="Score">
									<c:if test="${Score.label == 'RFM' }">
									<tr>
										<td class="item" align="left" id="${Score.algorithemId}">AlgorithmID ${Score.algorithemId}</td>
										<td class="chart"><div class="chart-hPa"></div></td>
									</tr>
									</c:if>
									</c:forEach> --%>
									<!-- <tr>
										<td class="item">Algorithm #2</td>
										<td class="chart"><div class="chart-hPa"></div></td>
									</tr>
									<tr>
										<td class="item">Algorithm #3</td>
										<td class="chart"><div class="chart-hum"></div></td>
									</tr> -->
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
        	var td;
        	var size=$('.history tr').length;
        	//alert(size);
        	for(var i=0; i<size; i++ ){
        		var id = $(this).find('td');
        		td=id.eq(i).text();
        		//alert(td);
        };
			
            $(".chart-mmHg").kendoChart({
            	
				theme: "blueOpal",
                legend: {
                    visible: false
                },
                
                series: [{
                    type: "bullet",
                    data: [[
                            
                    <c:forEach items="${score}" var="Score">
        			<c:if test="${Score.algorithemId =='127' }">
        			'${Score.avg}','${Score.abAvg}'
					</c:if>
					</c:forEach>
                            ]]
                }],
                chartArea: {
                    margin: {
                        left: 0
                    }
                },
                categoryAxis: {
                    majorGridLines: {
                        visible: false
                    },
                    majorTicks: {
                        visible: false
                    }
                },
                valueAxis: [{
                    plotBands: [{
                        from: 0, to: 60, color: "#ccc", opacity: .6
                    }, {
                        from: 60, to: 80, color: "#ccc", opacity: .3
                    }],
                    majorGridLines: {
                        visible: false
                    },
                    min: 0,
                    max: 100,
                    minorTicks: {
                        visible: true
                    }
                }],
                tooltip: {
                    visible: true,
                    template: "Maximum: #= value.target # <br /> Average: #= value.current #"
                }
            });

            $(".chart-hPa").kendoChart({
				theme: "blueOpal",
                legend: {
                    visible: false
                },
                series: [{
                    type: "bullet",
                    data: [[
							<c:forEach items="${score}" var="Score">
							<c:if test="${Score.algorithemId == '201' }">
							'${Score.avg}','${Score.abAvg}'
							</c:if>
							</c:forEach>
							]]
                }],
                chartArea: {
                    margin: {
                        left: 0
                    }
                },
                categoryAxis: {
                    majorGridLines: {
                        visible: false
                    },
                    majorTicks: {
                        visible: false
                    }
                },
                valueAxis: [{
                    plotBands: [{
                    	from: 0, to: 60, color: "#ccc", opacity: .6
                    }, {
                        from: 60, to: 80, color: "#ccc", opacity: .3
                    }],
                    majorGridLines: {
                        visible: false
                    },
                    min: 0,
                    max: 120,
                    minorTicks: {
                        visible: true
                    }
                }],
                tooltip: {
                    visible: true,
                    template: "Maximum: #= value.target # <br /> Average: #= value.current #"
                }
            });

            $(".chart-hum").kendoChart({
				theme: "blueOpal",
                legend: {
                    visible: false
                },
                series: [{
                    type: "bullet",
                    data: [[
                            <c:forEach items="${score}" var="Score">
							<c:if test="${Score.algorithemId == '183' }">
							'${Score.avg}','${Score.abAvg}'
							</c:if>
					</c:forEach>
					]]
                }],
                categoryAxis: {
                    majorGridLines: {
                        visible: false
                    },
                    majorTicks: {
                        visible: false
                    }
                },
                valueAxis: [{
                    plotBands: [{
                        from: 0, to: 33, color: "#ccc", opacity: .6
                    }, {
                        from: 33, to: 66, color: "#ccc", opacity: .3
                    }],
                    majorGridLines: {
                        visible: false
                    },
                    min: 0,
                    max: 100,
                    minorTicks: {
                        visible: true
                    }
                }],
                tooltip: {
                    visible: true,
                    template: "Maximum: #= value.target # <br /> Average: #= value.current #"
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
