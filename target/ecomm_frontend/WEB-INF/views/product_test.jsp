<%-- <%@page import="com.niit.ecomm_backend.dao.ProductDao" %>
<%@page import="com.niit.ecomm_backend.model.Product" %> --%>
<%@page import="java.util.*" %>


<html>
<body>
<h2>Product Details</h2>
<table border="1px">
	<thead>
		<td>Id</td>
		<td>Name</td>
		<td>Category</td>
		<td>Brand</td>
		<td>Price</td>
		<td>Supplier</td>
		<td>Description</td>
		<td>Image</td>
		<td>Quantity</td>
	</thead>
	<%
/* 		ProductDao dao=(ProductDao) request.getAttribute("cart");
 		List<Product> products=(List<Product>)dao.getAllProducts(); 
		out.println("<h1>"+products.size()+"</h1>");
		for(Product p : products){
			out.println("<tr>");
				out.println("<td>" + p.getId() + "</td>");
				out.println("<td>" + p.getName() + "</td>");
				out.println("<td>" + p.getCategory() + "</td>");
				out.println("<td>" + p.getBrand() + "</td>");
				out.println("<td>" + p.getPrice() + "</td>");
				out.println("<td>" + p.getSupplier() + "</td>");
				out.println("<td>" + p.getDescription() + "</td>");
				out.println("<td>" + p.getImage() + "</td>");
				out.println("<td>" + p.getQuantity()+ "</td>");
		} 
		 */
	%>
	<!-- 
      <c:forEach items="${products}" var="product">
        <tr>
          <td><c:out value="${product.id}" /><td>
          <td><c:out value="${product.name}" /><td>
          <td><c:out value="${product.category}" /><td>
          <td><c:out value="${product.brand}" /><td>
          <td><c:out value="${product.price}" /><td>
          <td><c:out value="${product.supplier}" /><td>
          <td><c:out value="${product.description}" /><td>
          <td><c:out value="${product.quantity}" /><td>          
        </tr>
      </c:forEach>  
      -->    
	
</table>
</body>
</html>
