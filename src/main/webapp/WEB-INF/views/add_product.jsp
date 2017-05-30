<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="head.jsp"></jsp:include>
<body>
	<jsp:include page="header.jsp"></jsp:include> --%>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
		<%@page import="com.niit.ecomm_backend.model.Category" %>
	<%@page import="com.niit.ecomm_backend.model.Supplier" %>
	<%@page import="java.util.List" %>
				
			 <div class="col-md-4 col-md-offset-2">
				<form class="form-add-product" method="post" action="product_add" enctype="multipart/form-data">
					<h2 class="form-add-category-heading">Add Product</h2>
					<br> <label for="inputEmail" class="sr-only">Product Id</label>
					<input type="text" id="inputProductId" name="inputProductId" class="form-control"
						placeholder="Product  Id" required autofocus><br> 
						<label for="inputProductName" class="sr-only">Product Name</label> <input
						type="text" id="inputProductName" name="inputProductName" class="form-control"
						placeholder="Product Name" required><br>
						<label for="inputProductCategory" class="sr-only">Product Category</label><select
						id="inputProductCategory" name="inputProductCategory" class="form-control"	 required>
							<%
								List<Category> clist=(List<Category>) request.getAttribute("categories");
								for(Category c : clist){
									out.println("'<option value='"+c.getId()+"'>"+c.getName()+"</option>");
								}
							%>
						</select><br>
						<label for="inputProductSupplier" class="sr-only">Product Supplier</label> <select
						type="text" id="inputProductSupplier" name="inputProductSupplier" class="form-control"
						placeholder="Product Supplier" required>
						<%
								List<Supplier> slist=(List<Supplier>) request.getAttribute("suppliers");
								for(Supplier c : slist){
									out.println("'<option value='"+c.getId()+"'>"+c.getName()+"</option>");
								}
							%>
						</select><br>
						<label for="inputProductPrice" class="sr-only">Product Price</label> <input
						type="text" id="inputProductPrice" name="inputProductPrice" class="form-control"
						placeholder="Product Price" required><br>
						<label for="inputProductImage" class="sr-only">Product Image</label> <input
						type="file" id="inputProductImage" name="inputProductImage" class="form-control"
						placeholder="Product Image" required><br>
					<button class="btn btn-lg btn-primary btn-block" type="submit">Add</button>
				</form>
			</div> 
<%-- 
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html> --%>