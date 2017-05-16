<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		</div>
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Status</h3>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-9">
							<div class="col-lg-11">
								<div class="input-group">
							  		<span id="basic-addon1" class="input-group-addon"><i class="fa fa-search"></i></span>
							  		<input type="text" aria-describedby="basic-addon1" placeholder="Filter by tags and attributes or search by keyword" class="form-control">
								</div>
							</div>
							<div class="col-lg-1">
								<span class="label label-primary"><i class="fa fa-question"></i></span>
							</div>
						</div>
						<div class="col-lg-2 pull-right">
							<i class="fa fa-angle-left"></i> <b>1 to 7 of 7 </b><i class="fa fa-angle-right"></i>
						</div>
					</div>
					<hr>
					<div class="row">
					<div class="table-responsive">
                        <table class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                	<th>#</th>
                                    <th><b>AlgorithmId</b></th>
                                    <th><b>Instance-ID</b></th>
                                    <th><b>Instance Type</b></th>
                                    <th><b>State</b></th>
                                    <th><b>Status</b></th>
                                    <th><b>Alarm</b></th>
                                    <th><b>Use</b></th>
                                </tr>
                            </thead>
                            <tbody id="objectdata">
                            <c:forEach items="${statusPrescription}" var="status" >
                                <tr>
                                	<td>
                                		<div class="checkbox">
                                			<input id="${status.algorithemId }" type="checkbox" name="check" value="${status.algorithemId}">
                                			<label for="${status.algorithemId }"></label>
										</div>
									</td>
	
	                                    <td>${status.algorithemId}</td>
	                                    <td>${status.instanceId}</td>
	                                    <td>${status.instanceType}</td>
	                                    <td>${status.state}</td>
	                                    <td>${status.status}</td>
	                                    <td>${status.alarm}</td>
	                                    <td>${status.use}</td>
	                                    
                                    
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
					</div>
				</div>
				<div class="panel-footer">
					<label>Select an instance above</label>
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
