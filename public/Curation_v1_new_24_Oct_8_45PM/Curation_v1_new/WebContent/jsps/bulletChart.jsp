<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <!DOCTYPE html>
<html>
<head>
    <base href="http://demos.telerik.com/kendo-ui/bullet-charts/index">
    <style>html { font-size: 14px; font-family: Arial, Helvetica, sans-serif; }</style>
    <title></title>
    <link rel="stylesheet" href="//kendo.cdn.telerik.com/2016.1.226/styles/kendo.common-material.min.css" />
    <link rel="stylesheet" href="//kendo.cdn.telerik.com/2016.1.226/styles/kendo.material.min.css" />

    <script src="//kendo.cdn.telerik.com/2016.1.226/js/jquery.min.js"></script>
    <script src="//kendo.cdn.telerik.com/2016.1.226/js/kendo.all.min.js"></script>
</head>
<body>
<div id="example">
    <div class="demo-section k-content">
        <table class="history">
            <tr>
                <td class="item">mmHg</td>
                <td class="chart"><div id="chart-mmHg"></div></td>
            </tr>
            <tr>
                <td class="item">hPa</td>
                <td class="chart"><div id="chart-hPa"></div></td>
            </tr>
            <tr>
                <td class="item">hum</td>
                <td class="chart"><div id="chart-hum"></div></td>
            </tr>
            <tr>
                <td class="item">temp</td>
                <td class="chart"><div id="chart-temp"></div></td>
            </tr>
        </table>
    </div>
    <script>
        function createChart() {
            $("#chart-mmHg").kendoChart({
                legend: {
                    visible: false
                },
                series: [{
                    type: "bullet",
                    data: [[750, 762.5]]
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
                        from: 715, to: 752, color: "#ccc", opacity: .6
                    }, {
                        from: 752, to: 772, color: "#ccc", opacity: .3
                    }],
                    majorGridLines: {
                        visible: false
                    },
                    min: 715,
                    max: 795,
                    minorTicks: {
                        visible: true
                    }
                }],
                tooltip: {
                    visible: true,
                    template: "Maximum: #= value.target # <br /> Average: #= value.current #"
                }
            });

            $("#chart-hPa").kendoChart({
                legend: {
                    visible: false
                },
                series: [{
                    type: "bullet",
                    data: [[1001, 1017]]
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
                        from: 955, to: 1002, color: "#ccc", opacity: .6
                    }, {
                        from: 1002, to: 1027, color: "#ccc", opacity: .3
                    }],
                    majorGridLines: {
                        visible: false
                    },
                    min: 955,
                    max: 1055,
                    minorTicks: {
                        visible: true
                    }
                }],
                tooltip: {
                    visible: true,
                    template: "Maximum: #= value.target # <br /> Average: #= value.current #"
                }
            });

            $("#chart-hum").kendoChart({
                legend: {
                    visible: false
                },
                series: [{
                    type: "bullet",
                    data: [[45, 60]]
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

            $("#chart-temp").kendoChart({
                legend: {
                    visible: false
                },
                series: [{
                    type: "bullet",
                    data: [[25, 22]]
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
                        from: 0, to: 10, color: "yellow", opacity: .3
                    }, {
                        from: 10, to: 20, color: "orange", opacity: .3
                    }, {
                        from: 20, to: 30, color: "red", opacity: .3
                    }],
                    majorGridLines: {
                        visible: false
                    },
                    min: 0,
                    max: 30,
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
            line-height: 65px;
            width: 20px;
            text-align: right;
            padding-bottom: 22px;
        }
    </style>
</div>
</body>
</html> -->
<!DOCTYPE html>
<html>
<head>
    <!-- <base href="http://demos.telerik.com/kendo-ui/bullet-charts/remote-data-binding"> -->
    <style>html { font-size: 14px; font-family: Arial, Helvetica, sans-serif; }</style>
    <title></title>
    <link rel="stylesheet" href="//kendo.cdn.telerik.com/2016.1.226/styles/kendo.common.min.css" />
    <link rel="stylesheet" href="//kendo.cdn.telerik.com/2016.1.226/styles/kendo.default.min.css" />

    <script src="//kendo.cdn.telerik.com/2016.1.226/js/jquery.min.js"></script>
    <script src="//kendo.cdn.telerik.com/2016.1.226/js/kendo.all.min.js"></script>
</head>
<body>
<div id="example">
    <div class="demo-section k-content wide">
        <div id="chart-sales"></div>
    </div>
    <script>
        function createChart() {
            $("#chart-sales").kendoChart({
                title: {
                    text: "April sales per day"
                },
                legend: {
                    visible: false
                },
                dataSource: {
                    transport: {
                        read: {
                            url: "resources/data/april-sales.json",
                            dataType: "json"
                        }
                    }
                },
                series: [{
                    type: "bullet",
                    currentField: "current",
                    targetField: "target",
                    target: {
                        color: "#aaaaaa"
                    },
                    gap: 4
                }],
                categoryAxis: {
                    majorGridLines: {
                        visible: false
                    },
                    field: "category"
                },
                valueAxis: [{
                    min: 2000,
                    max: 11000,
                    majorGridLines: {
                        visible: false
                    },
                    minorTicks: {
                        visible: true
                    },
                    plotBands: [{
                        from: 1000, to: 3000, color: "#aaaaaa", opacity: 0.55
                    }, {
                        from: 3000, to: 5000, color: "#aaaaaa", opacity: 0.4
                    }, {
                        from: 5000, to: 8000, color: "#aaaaaa", opacity: 0.25
                    }, {
                        from: 8000, to: 11000, color: "#aaaaaa", opacity: 0.1
                    }]
                }],
                tooltip: {
                    visible: true,
                    template: "Target: #= value.target # items<br /> Actual: #= value.current # items"
                }
            });
        }

        $(document).ready(createChart);
        $(document).bind("kendo:skinChange", createChart);
    </script>   
</div>


</body>
</html>