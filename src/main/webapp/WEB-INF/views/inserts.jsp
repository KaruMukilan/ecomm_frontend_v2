<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="head.jsp"></jsp:include>
<body>
			
<div class="container">
	<div class="row">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="add_category.jsp"></jsp:include>
	<jsp:include page="add_supplier.jsp"></jsp:include>
	</div>
	<div>
		<jsp:include page="add_product.jsp"></jsp:include>				
		
	</div>
</div>
	<%-- <link rel="stylesheet" href="./resources/css/bootstrap.min.css">
	<script src="./resources/js/jquery.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>	
	<link rel="stylesheet" href="./resources/css/jquery.dataTables.min.css">
	
	<jsp:include page="list_category.jsp"></jsp:include>
	
	<script src="./resources/js/jquery.dataTables.min.js"></script>
    <script src="./resources/js/database.js"></script>		
	<jsp:include page="footer.jsp"></jsp:include> --%>


</body>
</html> 