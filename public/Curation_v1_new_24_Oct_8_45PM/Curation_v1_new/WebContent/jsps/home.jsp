<%@page import="java.util.Map"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="common/header.jsp"></jsp:include>
<head >

</head>
<body>
<script type="text/javascript">
	
</script>
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
										<img alt=""
										src="resources/images/avatar1_small.jpg"
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
				<li class="active" style="color: #004586;font-size: 25px"><b>Daily Predictions : </b><script>
				var today = new Date();
			    var dd = today.getDate();
			    var mm = today.getMonth()+1;
			    var yyyy = today.getFullYear();
			    if(dd<10){ dd='0'+dd }
			    if(mm<10){ mm='0'+mm }
			    document.write(dd+'-'+mm+'-'+yyyy)
				</script></li>
			</ol>
		</div>
		<div class="col-lg-12">
			<div class="col-lg-9">
	            <div class="panel panel-default panel-border">
					<div class="panel-heading">
						<h3 class="panel-title">REVENUE AND PREDICTIONS</h3>
						<hr>
					</div>
	                <div class="panel-body">
		                <div class="demo-section k-content wide" id="loaddata">
					        <div id="chart"></div>
					    </div>
	                </div>
	            </div>
	        </div>
	        <div class="col-lg-3">
	            <div class="panel panel-default panel-border">
					<div class="panel-heading">
						<h3 class="panel-title">SPEND SUMMARY</h3>
					</div>
	                <div class="panel-body">
		                <div class="table-responsive">
		                    <table class="table table-striped target">
		                        <tbody>
		                            <tr>
		                                <td class="vert-align" colspan="2">
		                                    <h3 class="target-name"><strong>$562.60</strong></h3>
		                                </td>
		                            </tr>
									
		                            <c:forEach items="${spendSummary }" var="rs2">
		                            
		                            <c:if test="${rs2.key ne 'Total'}">
		                            <tr>
		                                <td class="vert-align">
		                                    <span>${rs2.key}</span>
		                                </td>
		                                <td class="vert-align">
		                                    <span>${rs2.value}</span>
		                                </td>
		                            </tr>
		                            </c:if>
		                            <c:if test="${rs2.key eq 'Total'}">
		                            	<c:set var="total" value="${ rs2.value}"></c:set>
		                            </c:if>
		                            </c:forEach>
		                            
		                            <tr>
		                                <td class="vert-align">
		                                    <span class="target-name">Total</span>
		                                </td>
		                                <td class="vert-align">
		                                    <span class="target-name">${total}</span>
		                                </td>
		                            </tr>
		                        </tbody>
		                    </table>
		                </div>
	                </div>
	            </div>
	        </div>
		</div>
	    <div class="col-lg-12">
	    	<div class="col-lg-6">
	    		<div class="panel panel-default panel-border">
					<div class="panel-heading">
						<h3 class="panel-title">FUTURE SHOPPER INTENTIONS AND ACTIVITIES</h3>
						<hr>
					</div>
	                <div class="panel-body">
		                <div class="demo-section k-content wide">
					       <div id="donut2"></div>
					   </div>
	                </div>
	            </div>
	    	</div>
	    	<div class="col-lg-6">
	    		<div class="panel panel-default panel-border">
					<div class="panel-heading">
						<h3 class="panel-title">CHANNEL ENGAGEMENT</h3>
						<hr>
					</div>
	                <div class="panel-body">
		                <div class="demo-section k-content wide">
					       <div id="donut1"></div>
					   </div>
	                </div>
	            </div>
			</div>
	    </div>
	    <div class="col-lg-12">
	    	<div class="col-lg-6">
	    		<div class="panel panel-default panel-border">
					<div class="panel-heading">
						<h3 class="panel-title">FUTURE SHOPPER INTENTIONS AND ACTIVITIES</h3>
						<hr>
					</div>
	                <div class="panel-body">
		                <div class="demo-section k-content wide">
					       <!-- <div id="scatterChart"></div> -->
					       <div id="heatMap1"></div>
					   </div>
	                </div>
	            </div>
	    	</div>
	    	<div class="col-lg-6">
	    		<div class="panel panel-default panel-border">
					<div class="panel-heading">
						<h3 class="panel-title">CHANNEL ENGAGEMENT</h3>
						<hr>
					</div>
	                <div class="panel-body">
		                <div class="demo-section k-content wide">
					       <!-- <div id="bubbleChart1"></div> -->
					       <div id="heatMap"></div>
					   </div>
	                </div>
	            </div>
			</div>
	    </div>
	</div>
	<jsp:include page="common/footer.jsp"></jsp:include>
	<script type="text/javascript">
      var margin = { top: 20, right: 0, bottom: 0, left: 40 },
          width = 470 - margin.left - margin.right,
          height = 500 - margin.top - margin.bottom,
          gridSize = Math.floor(width / 12),
          legendElementWidth = 36,
          buckets = 9,
          /* #69D2E7
          #F38630
          #E0E4CC */
          colors = ["#69D2E7","#F38630","#E0E4CC"], // alternatively colorbrewer.YlGnBu[9]
          days = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul" ,"Aug" , "Sep", "Oct", "Nov", "Dec"],
          times = ["Run.", "P.C", "P.C", "P.C", "P.C", "P.C", "P.C", "P.C", "P.C", "P.C", "P.C", "P.C"];
          datasets = [_path + "/resources/front/data.tsv", _path + "/resources/front/data1.tsv"];

      var svg = d3.select("#heatMap").append("svg")
          .attr("width", width + margin.left + margin.right)
          .attr("height", height + margin.top + margin.bottom)
          .append("g")
          .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

      var dayLabels = svg.selectAll(".dayLabel")
          .data(days)
          .enter().append("text")
            .text(function (d) { return d; })
            .attr("x", 0)
            .attr("y", function (d, i) { return i * gridSize; })
            .style("text-anchor", "end")
            .attr("transform", "translate(-6," + gridSize / 1.5 + ")")
            .attr("class", function (d, i) { return ((i >= 0 && i <= 4) ? "dayLabel mono axis axis-workweek" : "dayLabel mono axis"); });

      var timeLabels = svg.selectAll(".timeLabel")
          .data(times)
          .enter().append("text")
            .text(function(d) { return d; })
            .attr("x", function(d, i) { return i * gridSize; })
            .attr("y", 0)
            .style("text-anchor", "middle")
            .attr("transform", "translate(" + gridSize / 2 + ", -6)")
            .attr("class", function(d, i) { return ((i >= 7 && i <= 16) ? "timeLabel mono axis axis-worktime" : "timeLabel mono axis"); });

      var heatmapChart = function(tsvFile) {
        d3.tsv(tsvFile,
        function(d) {
          return {
            day: +d.day,
            hour: +d.hour,
            value: +d.value
          };
        },
        function(error, data) {
          var colorScale = d3.scale.quantile()
              .domain([0, buckets - 1, d3.max(data, function (d) { return d.value; })])
              .range(colors);

          var cards = svg.selectAll(".hour")
              .data(data, function(d) {return d.day+':'+d.hour;});

          cards.append("title");

          cards.enter().append("circle")
	          .attr("cx", function(d) { return (d.hour - 1) * gridSize + 15; })
	          .attr("cy", function(d) { return (d.day - 1) * gridSize + 15; })
	          .attr("r", 10)
	          .attr("class", "hour bordered")
	          .attr("width", gridSize)
	          .attr("height", gridSize)
	          .style("fill", colors[0]);

          cards.transition().duration(1000)
              .style("fill", function(d) { return colorScale(d.value); });

          cards.select("title").text(function(d) { return d.value; });
          
          cards.exit().remove();

          var legend = svg.selectAll(".legend")
              .data([0].concat(colorScale.quantiles()), function(d) { return d; });

          legend.enter().append("g")
              .attr("class", "legend");

          legend.append("rect")
            .attr("x", function(d, i) { return legendElementWidth * i; })
            .attr("y", height-50)
            .attr("width", legendElementWidth)
            .attr("height", gridSize / 2)
            .style("fill", function(d, i) { return colors[i]; });

          legend.append("text")
            .attr("class", "mono")
            .text(function(d) { return ">=" + Math.round(d); })
            .attr("x", function(d, i) { return legendElementWidth * i; })
            .attr("y", height + gridSize - 50);

          legend.exit().remove();

        });  
      };

      heatmapChart(datasets[0]);
      
      var svg1 = d3.select("#heatMap1").append("svg")
	      .attr("width", width + margin.left + margin.right)
	      .attr("height", height + margin.top + margin.bottom)
	      .append("g")
	      .attr("transform", "translate(" + margin.left + "," + margin.top + ")");
	
	  var dayLabels = svg1.selectAll(".dayLabel")
	      .data(days)
	      .enter().append("text")
	        .text(function (d) { return d; })
	        .attr("x", 0)
	        .attr("y", function (d, i) { return i * gridSize; })
	        .style("text-anchor", "end")
	        .attr("transform", "translate(-6," + gridSize / 1.5 + ")")
	        .attr("class", function (d, i) { return ((i >= 0 && i <= 4) ? "dayLabel mono axis axis-workweek" : "dayLabel mono axis"); });
	
	  var timeLabels = svg1.selectAll(".timeLabel")
	      .data(times)
	      .enter().append("text")
	        .text(function(d) { return d; })
	        .attr("x", function(d, i) { return i * gridSize; })
	        .attr("y", 0)
	        .style("text-anchor", "middle")
	        .attr("transform", "translate(" + gridSize / 2 + ", -6)")
	        .attr("class", function(d, i) { return ((i >= 7 && i <= 16) ? "timeLabel mono axis axis-worktime" : "timeLabel mono axis"); });
	
	  var heatmapChart1 = function(tsvFile) {
	    d3.tsv(tsvFile,function(d) {
	      return {
	        day: +d.day,
	        hour: +d.hour,
	        value: +d.value
	      };
	    },
	    function(error, data) {
	      var colorScale = d3.scale.quantile()
	          .domain([0, buckets - 1, d3.max(data, function (d) { return d.value; })])
	          .range(colors);
	
	      var cards = svg1.selectAll(".hour")
	          .data(data, function(d) {return d.day+':'+d.hour;});
	
	      cards.append("title");
	
	      cards.enter().append("circle")
	          .attr("cx", function(d) { return (d.hour - 1) * gridSize + 15; })
	          .attr("cy", function(d) { return (d.day - 1) * gridSize + 15; })
	          .attr("r", 10)
	          .attr("class", "hour bordered")
	          .attr("width", gridSize)
	          .attr("height", gridSize)
	          .style("fill", colors[0]);
	
	      cards.transition().duration(1000)
	          .style("fill", function(d) { return colorScale(d.value); });
	
	      cards.select("title").text(function(d) { return d.value; });
	      
	      cards.exit().remove();
	
	      var legend = svg1.selectAll(".legend")
	          .data([0].concat(colorScale.quantiles()), function(d) { return d; });
	
	      legend.enter().append("g")
	          .attr("class", "legend");
	
	      legend.append("rect")
	          .attr("x", function(d, i) { return legendElementWidth * i; })
	          .attr("y", height-50)
	          .attr("width", legendElementWidth)
	          .attr("height", gridSize / 2)
	          .style("fill", function(d, i) { return colors[i]; });
	
	        legend.append("text")
	          .attr("class", "mono")
	          .text(function(d) { return ">= " + Math.round(d); })
	          .attr("x", function(d, i) { return legendElementWidth * i; })
	          .attr("y", height + gridSize - 50);
	
	      legend.exit().remove();
	
	    });  
	  };
	
	  heatmapChart1(datasets[1]);
      
      
    </script>
	<script>
		$(document).ready( function () {
			$('#table_id').DataTable();
		});
	</script>
	<script>
	
	var d = new Date();
		
		console.log("taskCompleteness   ::"+recordSet1);
		var recordSet1="";	
		var recordSet3="";
		var recordSet4="";
		function loadData(){
			var settings = {
					  "async": true,
					  "crossDomain": true,
					  "url": "homeChart",
					  "method": "GET",
					  "headers": {
					    "content-type": "application/json",
					    "cache-control": "no-cache",
					    "postman-token": "6570c6a3-3674-d585-82aa-7dd74af3ca1f"
					  },
					}
					$.ajax(settings).done(function (response) {
					  recordSet1=response.RecordSet1;
					  console.log("recordSet1   ::"+recordSet1);
					  recordSet3=response.RecordSet3;
					  recordSet4=response.RecordSet4;
					  $(document).ready(createChart);
						$(document).bind("kendo:skinChange", createChart);
						
						$(document).ready(function() {
				            createChart1();
				            $(document).bind("kendo:skinChange", createChart1);
				            $(".box").bind("change", refresh);
				        });
						
					});
			
		}
		loadData();
		function createChart() {
			$("#chart").kendoChart({
				theme : "blueOpal",
				legend : {
					position : "bottom"
				},
				dataSource : {
					data : recordSet1
				},
				seriesDefaults : {
					type : "rangeBar"
				},
				series : [ {
					name : "Prediction A",
					fromField : "fromA",
					toField : "toA"
				} ],
				categoryAxis : {
					field : "day",
					majorGridLines : {
						visible : false
					}
				},
				valueAxis : {
					min : 0,
					max : 40
				},
				tooltip : {
					visible : true,
					template : "#= value.from # - #= value.to #"
				}
			});
		}
		$(document).ready(createChart);
		$(document).bind("kendo:skinChange", createChart);
	</script>
	<script>
        function createChart1() {
            $("#donut1").kendoChart({
            	theme: "blueOpal",
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
                    data:recordSet3 
                }],
                tooltip: {
                    visible: true,
                    template: "#= category # - #= kendo.format('{0:P}', percentage) #"
                }
            });
        }

        

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

        $(document).ready(createChart1);
        $(document).bind("kendo:skinChange", createChart1);
    </script>
    <script>
        function createChart1() {
            $("#donut2").kendoChart({
            	theme: "blueOpal",
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
                    data:recordSet4 
                }],
                tooltip: {
                    visible: true,
                    template: "#= category # - #= kendo.format('{0:P}', percentage) #"
                }
            });
        }

       

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

        
    </script>
     
    <script>
   	var data = 
			[ {
				"year" : 2000,
				"standing" : 1,
				"number" : 5,
				"country" : "Japan",
				"medalColor" : "#f3ac32"
			}, {
				"year" : 2004,
				"standing" : 1,
				"number" : 5,
				"country" : "Japan",
				"medalColor" : "#f3ac32"
			}, {
				"year" : 2008,
				"standing" : 1,
				"number" : 5,
				"country" : "Japan",
				"medalColor" : "#b8b8b8"
			}, {
				"year" : 2012,
				"standing" : 1,
				"number" : 5,
				"country" : "Japan",
				"medalColor" : "#f3ac32"
			}, {
				"year" : 2000,
				"standing" : 2,
				"number" : 5,
				"country" : "Japan",
				"medalColor" : "#f3ac32"
			}, {
				"year" : 2004,
				"standing" : 2,
				"number" : 5,
				"country" : "Japan",
				"medalColor" : "#b8b8b8"
			}, {
				"year" : 2008,
				"standing" : 2,
				"number" : 5,
				"country" : "Japan",
				"medalColor" : "#b8b8b8"
			}, {
				"year" : 2012,
				"standing" : 2,
				"number" : 5,
				"country" : "Japan",
				"medalColor" : "#b8b8b8"
			}, {
				"year" : 2000,
				"standing" : 3,
				"number" : 5,
				"country" : "Japan",
				"medalColor" : "#bb6e36"
			}, {
				"year" : 2004,
				"standing" : 3,
				"number" : 5,
				"country" : "Japan",
				"medalColor" : "#bb6e36"
			}, {
				"year" : 2008,
				"standing" : 3,
				"number" : 5,
				"country" : "Japan",
				"medalColor" : "#bb6e36"
			}, {
				"year" : 2012,
				"standing" : 3,
				"number" : 5,
				"country" : "Japan",
				"medalColor" : "#bb6e36"
			} ];
			function bubbleChart() {
				$("#scatterChart")
					.kendoChart(
							{
								dataSource : {
									data : data,
									group : {
										field : "month"
									}
								},
								legend : {
									visible : false
								},
								chartArea : {
									background : ""
								},
								series : [ {
									type : "bubble",
									minSize : 0,
									maxSize : 25,
									xField : "year",
									yField : "standing",
									sizeField : "number",
									colorField : "medalColor",
									opacity : 0.9
								} ],
								xAxis : {
									labels : {
										skip : 1,
										margin : {
											top : -25
										}
									},
									majorUnit : 4,
									min : 1995,
									max : 2015,
									majorGridLines : {
										visible : false
									},
									line : {
										visible : false
									}
								},
								yAxis : {
									labels : {
										step : 1,
										skip : 1,
										template : "Product Category",
										margin : {
											right : -30
										},
										padding : {
											left : 20
										}
									},
									majorUnit : 1,
									min : 0,
									max : 3.7,
									majorGridLines : {
										visible : false
									},
									line : {
										visible : false
									}
								},
								tooltip : {
									visible : true,
									template : "#= value.x #: #= value.size"
								}
							});
		}

		$(document).ready(bubbleChart);
		$(document).bind("kendo:skinChange", bubbleChart);
	</script>
	<script>
		var data = 
			[ {
				"year" : 2000,
				"standing" : 1,
				"number" : 5,
				"country" : "Japan",
				"medalColor" : "#f3ac32"
			}, {
				"year" : 2004,
				"standing" : 1,
				"number" : 5,
				"country" : "Japan",
				"medalColor" : "#f3ac32"
			}, {
				"year" : 2008,
				"standing" : 1,
				"number" : 5,
				"country" : "Japan",
				"medalColor" : "#b8b8b8"
			}, {
				"year" : 2012,
				"standing" : 1,
				"number" : 5,
				"country" : "Japan",
				"medalColor" : "#f3ac32"
			}, {
				"year" : 2000,
				"standing" : 2,
				"number" : 5,
				"country" : "Japan",
				"medalColor" : "#f3ac32"
			}, {
				"year" : 2004,
				"standing" : 2,
				"number" : 5,
				"country" : "Japan",
				"medalColor" : "#b8b8b8"
			}, {
				"year" : 2008,
				"standing" : 2,
				"number" : 5,
				"country" : "Japan",
				"medalColor" : "#b8b8b8"
			}, {
				"year" : 2012,
				"standing" : 2,
				"number" : 5,
				"country" : "Japan",
				"medalColor" : "#b8b8b8"
			}, {
				"year" : 2000,
				"standing" : 3,
				"number" : 5,
				"country" : "Japan",
				"medalColor" : "#bb6e36"
			}, {
				"year" : 2004,
				"standing" : 3,
				"number" : 5,
				"country" : "Japan",
				"medalColor" : "#bb6e36"
			}, {
				"year" : 2008,
				"standing" : 3,
				"number" : 5,
				"country" : "Japan",
				"medalColor" : "#bb6e36"
			}, {
				"year" : 2012,
				"standing" : 3,
				"number" : 5,
				"country" : "Japan",
				"medalColor" : "#bb6e36"
			} ];
			function bubbleChart() {
				$("#scatterChart")
					.kendoChart(
							{
								dataSource : {
									data : data,
									group : {
										field : "month"
									}
								},
								legend : {
									visible : false
								},
								chartArea : {
									background : ""
								},
								series : [ {
									type : "bubble",
									minSize : 0,
									maxSize : 25,
									xField : "year",
									yField : "standing",
									sizeField : "number",
									colorField : "medalColor",
									opacity : 0.9
								} ],
								xAxis : {
									labels : {
										skip : 1,
										margin : {
											top : -25
										}
									},
									majorUnit : 4,
									min : 1995,
									max : 2015,
									majorGridLines : {
										visible : false
									},
									line : {
										visible : false
									}
								},
								yAxis : {
									labels : {
										step : 1,
										skip : 1,
										template : "Product Category",
										margin : {
											right : -30
										},
										padding : {
											left : 20
										}
									},
									majorUnit : 1,
									min : 0,
									max : 3.7,
									majorGridLines : {
										visible : false
									},
									line : {
										visible : false
									}
								},
								tooltip : {
									visible : true,
									template : "#= value.x #: #= value.size"
								}
							});
		}
	
		$(document).ready(bubbleChart);
		$(document).bind("kendo:skinChange", bubbleChart);
		
		function bubbleChart1() {
				$("#bubbleChart1")
					.kendoChart(
							{
								dataSource : {
									data : data,
									group : {
										field : "month"
									}
								},
								legend : {
									visible : false
								},
								chartArea : {
									background : ""
								},
								series : [ {
									type : "bubble",
									minSize : 0,
									maxSize : 25,
									xField : "year",
									yField : "standing",
									sizeField : "number",
									colorField : "medalColor",
									opacity : 0.9
								} ],
								xAxis : {
									labels : {
										skip : 1,
										margin : {
											top : -25
										}
									},
									majorUnit : 4,
									min : 1995,
									max : 2015,
									majorGridLines : {
										visible : false
									},
									line : {
										visible : false
									}
								},
								yAxis : {
									labels : {
										step : 1,
										skip : 1,
										template : "Product Category",
										margin : {
											right : -30
										},
										padding : {
											left : 20
										}
									},
									majorUnit : 1,
									min : 0,
									max : 3.7,
									majorGridLines : {
										visible : false
									},
									line : {
										visible : false
									}
								},
								tooltip : {
									visible : true,
									template : "#= value.x #: #= value.size"
								}
							});
		}
	
		$(document).ready(bubbleChart1);
		$(document).bind("kendo:skinChange", bubbleChart1);
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
