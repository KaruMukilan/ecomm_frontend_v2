<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="head.jsp"></jsp:include>
<body>
	<jsp:include page="header.jsp"></jsp:include> --%>

	
			<!-- <div class="col-md-4 col-md-offset-4"> -->
			<div class="col-md-4">
				<form class="form-add-supplier" method="post" action="add_supplier">
					<h2 class="form-add-supplier-heading">Add Supplier</h2>
					<br> <label for="inputEmail" class="sr-only">Supplier Id</label>
					<input type="text" id="inputSupplierId" name="inputSupplierId" class="form-control"
						placeholder="Suppier Id" required autofocus><br> 
						<label for="inputSupplierName" class="sr-only">Supplier Name</label> <input
						type="text" id="inputSupplierName" name="inputSupplierName" class="form-control"
						placeholder="Supplier Name" required><br>
					<button class="btn btn-lg btn-primary btn-block" type="submit">Add</button>
				</form>
			</div>


<%-- 


	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html> --%>