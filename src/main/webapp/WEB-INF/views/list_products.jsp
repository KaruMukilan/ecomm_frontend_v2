<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="head.jsp"></jsp:include>
<body>
	<jsp:include page="header.jsp"></jsp:include>
<link href="./resources/font-awesome.min.css" rel='stylesheet' type='text/css'>

<div class="container">
    <div class="row">
    
    <p></p>
    <h1>Products List</h1>   
    <p> </p><p> </p>
    
        <div class="col-md-10 col-md-offset-1">

            <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    <h3 class="panel-title">Category Data Table</h3>
                  </div>
                  <div class="col col-xs-6 text-right">
                    <button type="button" class="btn btn-sm btn-primary btn-create">Create New</button>
                  </div>
                </div>
              </div>
              <div class="panel-body">
                <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr>
                        <th><em class="fa fa-cog"></em></th>
                        <th class="hidden-xs">ID</th>
                        <th>Name</th>
                        <th>Category</th>
                        <th>Supplier</th>
                        <th>Price</th>
                        <th>Image</th>                                                                        
                    </tr> 
                  </thead>
                  <tbody>
                          
                          <c:forEach items="${list}" var="p">
                          <tr>
                          <td>
                              <a class="btn btn-default"  data-id=${p.id} href="product_edit?id=${p.id}"><em class="fa fa-pencil"></em></a>                              
                              <a class="btn btn-danger" href="./product_delete?id=${p.id}"><em class="fa fa-trash"></em></a>
                            </td>
                            <td class="hidden-xs">${p.id }</td>
                            <td>${p.name }</td>
                            <td>${p.category.name}</td>     
                            <td>${p.supplier.name }</td>         
                            <td>${p. price}</td> 
                            <td><img src="./resources/uploads/products/${p.imageName}"  class="img-rounded" alt="${p.name }" width="75px" height="50px"/></td>         
                            <tr>       
                          </c:forEach>
                        </tbody>
                </table>
            
              </div>
              <div class="panel-footer">
                <div class="row">
                  <div class="col col-xs-4">Page 1 of 5
                  </div>
                  <div class="col col-xs-8">
                    <ul class="pagination hidden-xs pull-right">
                      <li><a href="#">1</a></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#">4</a></li>
                      <li><a href="#">5</a></li>
                    </ul>
                    <ul class="pagination visible-xs pull-right">
                        <li><a href="#">«</a></li>
                        <li><a href="#">»</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>

</div></div></div>


<!-- Modal -->
<div id="productEditModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

      
    <!-- Modal content-->
   

  </div>
</div>


	<jsp:include page="footer.jsp"></jsp:include>
	

</body>
</html>