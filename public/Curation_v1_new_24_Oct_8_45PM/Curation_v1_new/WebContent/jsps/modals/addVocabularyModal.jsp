<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
<div class="modal-dialog modal-lg" role="document">
	<form name="addAttributeForm" id="addAttributeForm" onsubmit="saveVocabulary()" action="javascript:;" method="post">
	    <div class="modal-content">
	        <div class="modal-header">
	            <span class="item-remove pull-right">
	                <a href="#" class="btn btn-white btn-rounded btn-xs" data-dismiss="modal" aria-label="Close"><i class="fa fa-times"></i></a>
	            </span>
	        </div>
	        <div class="modal-body">
	            <div class="row">
		                <div class="col-lg-6">
		                    <div class="panel panel-default">
		                        <div class="panel-heading">
		                            <h3 class="panel-title">Add vocabulary</h3>
		                        </div>
		                        <div class="panel-body collapse in" id="headline">
		                            <!-- <form> -->
		                                <div class="form-group">
		                                    <label for="term" class="sr-only">term</label>
		                                    <input type="text" name="term" class="form-control input-lg" id="term" placeholder="Enter Term" required="required">
		                                </div>
		                            <!-- </form> -->
		                        </div>
		                    </div>
		                    <div class="panel panel-default">
		                        <div class="panel-heading">
		                            <h3 class="panel-title">or add relation</h3>
		                        </div>
		                        <div class="panel-body">
		                            <div class="panel-group dropzone" id="accordion3" role="tablist" aria-multiselectable="true">
		                                <h5 class="msg center-block">Drop Relations Here</h5>
		                            </div>
		                        </div>
		                    </div>
		                </div>
	                <div class="col-lg-6">
	                    <div class="panel panel-default">
	                        <div class="panel-heading">
	                            <h3 class="panel-title">Related To</h3>
	                        </div>
	                        <div class="panel-body">
	                            <!-- <form> -->
	                                <div class="form-group">
	                                    <label for="relationId" class="sr-only">sdgsg</label>
	                                    <select name="relationId" id="relationId" class="form-control">
	                                        <option value="" disabled selected>Select relation</option>
	                                        <c:forEach items="${relationList}" var="rel">
	                                        	<option value="${rel.id}">${rel.relationName}</option>
											</c:forEach>
	                                    </select>
	                                </div>
	                            <!-- </form> -->
	                        </div>
	                    </div>
	                    <!-- <div class="panel panel-default">
	                        <div class="panel-heading">
	                            <h3 class="panel-title">&nbsp;</h3>
	                        </div>
	                        <div class="panel-body">
	                            <div class="panel-group" id="accordions" role="tablist" aria-multiselectable="true">
	                                <div class="panel panel-custom">
	                                    <div class="panel-heading clearfix" role="tab" id="heading9">
	                                        <ul class="list-inline">
	                                            <li>
	                                                <div class="drag">
	                                                    <i class="cus cus-drag"></i>
	                                                </div>
	                                            </li>
	                                            <li>
	                                                <button class="btn btn-white btn-lg"><i class="fa fa-arrow-left fa-lg"></i></button>
	                                            </li>
	                                            <li>
	                                                <a class="product collapsed" role="button" data-toggle="collapse" data-parent="#accordions" href="#collapse9" aria-expanded="false" aria-controls="collapse9">
	                                                    <i class="cus cus-close"></i>&nbsp;<span class="product-name">winter is coming</span>
	                                                </a>
	                                            </li>
	                                        </ul>
	                                    </div>
	                                    <div id="collapse9" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading9">
	                                        <div class="panel-body">
	                                            <ul class="tree subSortable sortable">
	                                                <li>
	                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 1
	                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
	                                                </li>
	                                                <li>
	                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 2
	                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
	                                                </li>
	                                                <li>
	                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 3
	                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
	                                                </li>
	                                                <li>
	                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 4
	                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
	                                                </li>
	                                                <li>
	                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 5
	                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
	                                                </li>
	                                            </ul>
	                                        </div>
	                                    </div>
	                                </div>
	                                <div class="panel panel-custom">
	                                    <div class="panel-heading clearfix" role="tab" id="heading10">
	                                        <ul class="list-inline">
	                                            <li>
	                                                <div class="drag">
	                                                    <i class="cus cus-drag"></i>
	                                                </div>
	                                            </li>
	                                            <li>
	                                                <button class="btn btn-white btn-lg "><i class="fa fa-arrow-left fa-lg"></i></button>
	                                            </li>
	                                            <li>
	                                                <a class="product collapsed" role="button" data-toggle="collapse" data-parent="#accordions" href="#collapse10" aria-expanded="false" aria-controls="collapse10">
	                                                    <i class="cus cus-close"></i>&nbsp;<span class="product-name">Womens jackets</span>
	                                                </a>
	                                            </li>
	                                        </ul>
	                                    </div>
	                                    <div id="collapse10" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading10">
	                                        <div class="panel-body">
	                                            <ul class="tree subSortable sortable">
	                                                <li>
	                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 1
	                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
	                                                </li>
	                                                <li>
	                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 2
	                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
	                                                </li>
	                                                <li>
	                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 3
	                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
	                                                </li>
	                                                <li>
	                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 4
	                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
	                                                </li>
	                                                <li>
	                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 5
	                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
	                                                </li>
	                                            </ul>
	                                        </div>
	                                    </div>
	                                </div>
	                                <div class="panel panel-custom">
	                                    <div class="panel-heading clearfix" role="tab" id="heading11">
	                                        <ul class="list-inline">
	                                            <li>
	                                                <div class="drag">
	                                                    <i class="cus cus-drag"></i>
	                                                </div>
	                                            </li>
	                                            <li>
	                                                <button class="btn btn-white btn-lg "><i class="fa fa-arrow-left fa-lg"></i></button>
	                                            </li>
	                                            <li>
	                                                <a class="product collapsed" role="button" data-toggle="collapse" data-parent="#accordions" href="#collapse11" aria-expanded="false" aria-controls="collapse11">
	                                                    <i class="cus cus-close"></i>&nbsp;<span class="product-name">winter gloves</span>
	                                                </a>
	                                            </li>
	                                        </ul>
	                                    </div>
	                                    <div id="collapse11" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading11">
	                                        <div class="panel-body">
	                                            <ul class="tree subSortable sortable">
	                                                <li>
	                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 1
	                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
	                                                </li>
	                                                <li>
	                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 2
	                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
	                                                </li>
	                                                <li>
	                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 3
	                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
	                                                </li>
	                                                <li>
	                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 4
	                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
	                                                </li>
	                                                <li>
	                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 5
	                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
	                                                </li>
	                                            </ul>
	                                        </div>
	                                    </div>
	                                </div>
	                                <div class="panel panel-custom">
	                                    <div class="panel-heading clearfix" role="tab" id="heading12">
	                                        <ul class="list-inline">
	                                            <li>
	                                                <div class="drag">
	                                                    <i class="cus cus-drag"></i>
	                                                </div>
	                                            </li>
	                                            <li>
	                                                <button class="btn btn-white btn-lg "><i class="fa fa-arrow-left fa-lg"></i></button>
	                                            </li>
	                                            <li>
	                                                <a class="product collapsed" role="button" data-toggle="collapse" data-parent="#accordions" href="#collapse12" aria-expanded="false" aria-controls="collapse12">
	                                                    <i class="cus cus-close"></i>&nbsp;<span class="product-name">winter is coming</span>
	                                                </a>
	                                            </li>
	                                        </ul>
	                                    </div>
	                                    <div id="collapse12" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading12">
	                                        <div class="panel-body">
	                                            <ul class="tree subSortable sortable">
	                                                <li>
	                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 1
	                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
	                                                </li>
	                                                <li>
	                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 2
	                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
	                                                </li>
	                                                <li>
	                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 3
	                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
	                                                </li>
	                                                <li>
	                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 4
	                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
	                                                </li>
	                                                <li>
	                                                    <i class="cus cus-drag cus-xs"></i>&nbsp;Vocabulary item 5
	                                                    <a href="#" class="remove pull-right"><i class="fa fa-times"></i></a>
	                                                </li>
	                                            </ul>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div> -->
	                </div>
	            </div>
	            <div class="row">
	            	<div class="col-md-12 text-center" id="saveResult"></div>
	                <div class="col-md-12 text-center">
	                    <button class="btn btn-navy btn-lg" id="saveButton" type="submit">&nbsp;&nbsp;&nbsp;<i class="fa fa-check"></i>&nbsp;&nbsp;done&nbsp;&nbsp;&nbsp;&nbsp;</button>
	                    <button class="btn btn-blue btn-lg" data-dismiss="modal">&nbsp;&nbsp;&nbsp;<i class="fa fa-times"></i>&nbsp;&nbsp;cancel&nbsp;&nbsp;&nbsp;&nbsp;</button>
	                </div>
	            </div>
	        </div>
	    </div>
	</form>
</div>
</div>

<div class="modal fade" id="addVocabularyOnNewPage" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
<div class="modal-dialog modal-lg" role="document">
	    <div class="modal-content">
	        <div class="modal-header">
	            <span class="item-remove pull-right">
	                <a href="#" class="btn btn-white btn-rounded btn-xs" data-dismiss="modal" aria-label="Close"><i class="fa fa-times"></i></a>
	            </span>
	        </div>
	        <div class="modal-body">
	            <div class="panel-body">
                                                   <div class="tab-content">
                                                       <div role="tabpanel" class="tab-pane active" id="home">
                                                           <form class="form-horizontal" action="javascript:;" method="post" name="dataSourceForm" id="dataSourceForm" onsubmit="uploadFormData()">
                                                               <div class="form-group">
                                                                   <input type="file" class="form-control input-lg" id="inputFile" placeholder="Select file" accept=".csv" required="required">
                                                                   <!-- <small>(Maximum size: 30 MB)</small> -->
                                                               </div>
                                                               <div class="form-group">
                                                                   <label for="name" class="sr-only">Name</label>
                                                                   <select name="" id="dataSource" class="form-control" required="required">
                                                                       <option value="" disabled selected>Enter Source or field name</option>
                                                                        <option value="2">DATA SOURCE1</option>
                                                                        <c:forEach items="${dataSourceList}" var="source">
							                                        	<option value="${source.id}">${source.sourceName}</option>
																		</c:forEach>
                                                                   
                                                                   </select>
                                                               </div>
                                                               <button type="submit" class="btn btn-navy btn-sm">&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>&nbsp;&nbsp;upload Source&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                                           </form>
                                                       </div>
                                                   </div>
                                               </div>
	            
	        </div>
	    </div>
</div>
</div>
