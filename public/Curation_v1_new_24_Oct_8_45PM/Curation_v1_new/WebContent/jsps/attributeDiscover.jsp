<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<jsp:include page="common/header.jsp"></jsp:include>
<body>
    <div id="wrapper">
        <!-- Sidebar -->
        <jsp:include page="common/left-navbar.jsp"></jsp:include>
        <!-- /#sidebar-wrapper -->
        <!-- Page Content -->
        <div id="page-content-wrapper">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a href="#" class="btn btn-menu"><i class="fa fa-bell fa-lg"></i></a></li>
                            <li><a href="#" class="btn btn-menu"><i class="fa fa-search fa-lg"></i></a></li>
                            <li><a href="#menu-toggle" class="btn btn-menu" id="menu-toggle"><i class="fa fa-bars fa-lg"></i></a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown">
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                    <span class="profile-ava">
                                        <img alt="" src="<%=request.getContextPath()%>/resources/images/avatar1_small.jpg" width="45">
                                    </span>
                                    <ul class="list-unstyled">
                                        <li><span class="username">Kyle Petterson</span></li>
                                        <li><span class="designation">Admin</span></li>
                                    </ul>
                                    <i class="fa fa-chevron-down"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">Another action</a></li>
                                    <li><a href="#">Something else here</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Separated link</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="btn btn-menu"><i class="fa fa-cog fa-lg"></i></a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <ol class="breadcrumb">
                <li><a href="#">Discover</a></li>
                <!-- <li class="breadcrumb-btn pull-right"><a href="#" class="btn btn-navy btn-lg"><i class="fa fa-plus"></i>&nbsp;add new object</a></li> -->
            </ol>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div id="rootwizard">
		
            <div class="tab-pane" id="tab2">
                                    <div class="row">
                                        <div class="col-lg-6 no-padding">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <ul class="list-inline">
                                                        <li>
                                                            <h3 class="panel-title">Attribute Search</h3>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="panel-body">
                                                	<form action="javascript:;" onsubmit="">
	                                                    <div class="nopadding">
	                                                        <div class="input-group">
	                                                            <input type="text" id="searchName" class="form-control input-lg" placeholder="Type for search" required="required">
	                                                            <span class="input-group-btn">
	                                                                <button class="btn btn-white btn-lg" type="button" onclick="searchAttributesByNameAttribute()"><i class="fa fa-search"></i></button>
	                                                            </span>
	                                                        </div>
	                                                        <h4 class="text-danger text-center" id="attributeSearchResult"></h4>
	                                                    </div>
	                                                    <br>
                                                    	<div class="table-responsive">
                                                        	<table class="table table-striped table-bordered attribute-list">
                                                            	<tbody id="attribuitesContainer">
                                                                
                                                            	</tbody>
                                                        	</table>
                                                    	</div>
                                                    	<button onclick="getAttributesByAttribute1()" class="btn btn-blue btn-lg" type="submit">&nbsp;&nbsp;&nbsp;<i class="cus cus-vis-b cus-xs"></i>&nbsp;View&nbsp;&nbsp;&nbsp;</button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 no-padding">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <ul class="list-inline">
                                                        <li></li>
                                                    </ul>
                                                </div>
                                                <div class="panel-body">
                                                    <div id="cs-tabs">
                                                        <!-- Nav tabs -->
                                                        <ul class="nav nav-tabs" role="tablist">
                                                            <li role="presentation" class="active"><a href="#algo" aria-controls="alg" role="tab" data-toggle="tab">Algorithm</a></li>
                                                            <li role="presentation"><a href="#voc" aria-controls="voc" role="tab" data-toggle="tab">Vocabulary</a></li>
                                                            <li role="presentation"><a href="#viz" aria-controls="viz" role="tab" data-toggle="tab">Visualization</a></li>
                                                            <li role="presentation"><a href="#play" aria-controls="play" role="tab" data-toggle="tab">Plays</a></li>
                                                        </ul>
                                                        <!-- Tab panes -->
                                                        <div class="tab-content">
                                                            <div role="tabpanel" class="tab-pane scroll viz active" id="algo">
                                                            	<ul class="list-group" id="algorithmResult"></ul>
                                                            </div>
                                                            <div role="tabpanel scroll" class="tab-pane" id="voc">
                                                                <div class="table-responsive">
                                                                    <table class="table table-striped table-bordered attribute-list">
                                                                        <tbody id="termSearchResult">
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                            <div role="tabpanel" class="tab-pane viz" id="viz">
                                                            
                                                            <!-- <div role="tabpanel" class="tab-pane scroll viz active" id="algo">
                                                            	<ul class="list-group" id="visualResult"></ul>
                                                            </div> -->
                                                            
                                                            
                                                                <ul class="list-group">
                                                                    <li class="list-group-item">
                                                                        <ul class="viz-heading">
                                                                            <li>
                                                                                <div class="checkbox">
                                                                                    <input id="check5" type="radio" name="check" value="check5"  )">
                                                                                    <label for="check5"></label>
                                                                                </div>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#" class="title">attribute result 1</a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#" class="viz-toggle"><i class="fa fa-chevron-right fa-lg"></i></a>
                                                                            </li>
                                                                        </ul>
                                                                        <ul class="list-unstyled">
                                                                            <li></li>
                                                                            <li></li>
                                                                            <li></li>
                                                                        </ul>
                                                                    </li>
                                                                    <li class="list-group-item">
                                                                        <ul class="list-inline">
                                                                            <li>item1</li>
                                                                            <li class="pull-right"><i class="fa fa-chevron-right"></i></li>
                                                                        </ul>
                                                                    </li>
                                                                    <li class="list-group-item">Morbi leo risus</li>
                                                                    <li class="list-group-item">Porta ac consectetur ac</li>
                                                                    <li class="list-group-item">Vestibulum at eros</li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="panel-footer">
                                                    	<button class="btn btn-blue btn-lg" onclick="getAttributesByAttribute11()" type="button">&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;Next&nbsp;&nbsp;&nbsp;</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
				      		</div>
                          </div>
                      </div>
                  </div>
        </div>
        <!-- /#page-content-wrapper -->
    </div>
    <!--Modal-->
    <%@include file="/jsps/modals/addVocabularyModal.jsp" %>
    <!-- /#wrapper -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <jsp:include page="common/footer.jsp"></jsp:include>
    <script src="<%=request.getContextPath()%>/resources/controller/dataManagement.js"></script>
    <script type="text/html" id="template">
    <div class="panel panel-custom mainSortable secsortable">
        <div class="panel-heading clearfix" role="tab">
            <ul class="list-inline">
                <li><div class="drag"><i class="cus cus-drag"></i></div></li>
                <li>
                    <a class="product" role="button" data-toggle="collapse" data-parent="#accordion" data-href="ref" aria-expanded="true" data-aria-controls="id">
                        <i class="cus cus-close"></i>&nbsp;<span class="product-name" data-content="field"></span>
                    </a>
                </li>
                <li class="pull-right">
                    <ul class="list-inline">
                        <li>
                            <button type="button" class="btn btn-white btn-lg remove"><i class="fa fa-times fa-lg"></i></button>
                        </li>
                        <li>
                            <button type="button" class="btn btn-white btn-lg"><i class="fa fa-arrow-right fa-lg"></i></button>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <div data-id="id" class="panel-collapse collapse" role="tabpanel" ondrop="drop(event,this)" ondragover="allowDrop(event)">
            <div class="panel-body">
                <ul class="tree">
                    <li>
                        Data Type
                        <select data-id="selectId" name="selectName" required="required">
                        	<option value="">Select Option</option>
                        	<option value="integer">Integer</option>
                        	<option value="string">String</option>
                        	<option value="float">Float</option>
                        	<option value="long">Long</option>
                        	<option value="boolean">Boolean</option>
                        </select>
                        
                    </li>
					<br>
                    <li>
                        Size
                        <input type="text" name="sizeName" data-id="sizeId" required="required">
                    </li>
                </ul>
            </div>
        </div>
    </div>
	</script>
	<script type="text/html" id="template1">
	<div class="panel panel-custom mainSortable secsortable" draggable="true" ondragstart="drag(event)" data-id="id">
	    <div class="panel-heading clearfix" role="tab">
	        <ul class="list-inline">
	            <li>
	                <div class="drag">
	                    <i class="cus cus-drag"></i>
	                </div>
	            </li>
	            <li>
	                <a class="product" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="id">
	                    <i class="cus cus-close"></i>&nbsp;<span class="product-name" data-content="term"></span>
	                </a>
	            </li>
	            <li class="pull-right">
	                <ul class="list-inline">
	                    <li>
	                        <button type="button" class="btn btn-white btn-lg remove"><i class="fa fa-times fa-lg"></i></button>
	                    </li>
	                    <li>
	                        <button type="button" class="btn btn-white btn-lg"><i class="fa fa-arrow-right fa-lg"></i></button>
	                    </li>
	                </ul>
	            </li>
	        </ul>
	    </div>
	</div>
	</script>
</body>
</html>