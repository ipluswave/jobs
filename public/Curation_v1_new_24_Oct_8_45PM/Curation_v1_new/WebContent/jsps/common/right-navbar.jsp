<nav class="navbar navbar-default">
	<div class="container-fluid">
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="#" class="btn btn-menu"><i
						class="fa fa-bell fa-lg"></i></a></li>
				<li><a href="#" class="btn btn-menu"><i
						class="fa fa-search fa-lg"></i></a></li>
				<li><a href="#menu-toggle" class="btn btn-menu"
					id="menu-toggle"><i class="fa fa-bars fa-lg"></i></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a data-toggle="dropdown"
					class="dropdown-toggle" href="#"> <span class="profile-ava">
							<img alt=""
							src="<%=request.getContextPath()%>/resources/images/avatar1_small.jpg"
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