<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="head.jsp"></jsp:include>
<body>
	<jsp:include page="header.jsp"></jsp:include> --%>
			<!-- <div class="col-md-4 col-md-offset-4"> -->
			<div class="col-md-4 col-md-offset-2">
				<form class="form-add-category" method="post" action="add_category">
					<h2 class="form-add-category-heading">Add Category</h2>
					<br> <label for="inputEmail" class="sr-only">Category Id</label>
					<input type="text" id="inputCategoryId" name="inputCategoryId" class="form-control"
						placeholder="Category Id" required autofocus><br> 
						<label for="inputCategoryName" class="sr-only">Category Name</label> <input
						type="text" id="inputCategoryName" name="inputCategoryName" class="form-control"
						placeholder="Category Name" required><br>
					<button class="btn btn-lg btn-primary btn-block" type="submit">Add</button>
				</form>
			</div>
<%-- 
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html> --%>