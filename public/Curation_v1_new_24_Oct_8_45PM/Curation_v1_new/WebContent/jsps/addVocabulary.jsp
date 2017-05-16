<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<body>
	<div class="container">
		<div class="page-header">
			<h2>Add Vocabulary</h2>
		</div>
		<div class="row">
			<div class="col-lg-5">
				<form:form action="saveVocabulary" method="post" modelAttribute="attribute">
					<div class="form-group">
						<label class="control-label col-sm-4" for="term">Term:</label>
						<div class="col-sm-8">
							<form:input path="term" class="form-control" name="term" id="term" placeholder="Enter term"/>
						</div>
					</div>
					<br><br>
					<div class="form-group">
						<label class="control-label col-sm-4" for="relation">Relation:</label>
						<div class="col-sm-8">
							<form:select path="relationId" class="form-control">
								<form:option value="select">-- Select Option --</form:option>
								<form:options items="${list}" itemValue="id" itemLabel="relationName"></form:options>
							</form:select>
						</div>
					</div>
					<div class="form-group">
						<form:button class="btn btn-default pull-right">Add</form:button>
					</div>
				</form:form>
				<div class="form-group">
					<label class="col-sm-4"></label>
					<div class="col-sm-8">
						or
					</div>
				</div>
				<form:form action="addRelation" method="post" modelAttribute="relation">
					<div class="form-group">
						<label class="control-label col-sm-4" for="relation1">Add relation:</label>
						<div class="col-sm-8">
							<form:input path="relationName" class="form-control" placeholder="Enter relation"/>
							<!-- <input type="text" class="form-control" name="relation1" id="relation1" placeholder="Enter term"> -->
							<br>
							<form:button class="btn btn-default pull-right">Add</form:button>
							<!-- <button class="btn btn-default pull-right">Add</button> -->
						</div>
					</div>
				</form:form>
			</div>
			<div class="col-lg-2"></div>
			<div class="col-lg-5">
				<div class="form-group">
					<label for="sel2">Related to:</label> 
					<select multiple class="form-control" id="sel2" name="relatedTo">
						<c:if test="${empty list}">
						    var1 is empty or null.
						</c:if>
						<c:if test="${not empty list}">
						    <c:forEach items="${list}" var="i">
								<option>${i.relationName}</option>
							</c:forEach>
						</c:if>
					</select>
				</div>
				<div class="form-group pull-right">
					<div class="col-sm-12">
						<button type="submit" class="btn btn-default">Done</button> &nbsp;Or
						<button type="reset" class="btn btn-link">Cancel</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>