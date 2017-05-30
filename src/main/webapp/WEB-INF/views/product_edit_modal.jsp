 <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Edit Product</h4>
      </div>
      <div class="modal-body">

<form class="form-add-product" method="post" action="product_update"  enctype="multipart/form-data">
					<h2 class="form-add-category-heading">Add Product</h2>
					<br> <label for="modalProductId" class="sr-only">Product Id</label>
					<input type="text" id="modalProductId" name="modalProductId" class="form-control"
						placeholder="Product  Id" required autofocus><br> 
						<label for="modalProductName" class="sr-only">Product Name</label> <input
						type="text" id="modalProductName" name="inputProductName" class="form-control"
						placeholder="Product Name" required><br>
						<label for="modalProductCategory" class="sr-only">Product Category</label><select
						id="modalProductCategory" name="modalProductCategory" class="form-control"	 required>
							<%-- <c:forEach  items="${clist}" var="item">
							<option value="${item.id}">${item.name}</option>
							</c:forEach> --%>
						</select><br>
						<label for="modalProductSupplier" class="sr-only">Product Supplier</label> <select
						type="text" id="modalProductSupplier" name="modalProductSupplier" class="form-control"
						placeholder="Product Supplier" required>
<%-- 							<c:forEach  items="${slist}" var="item">
							<option value="${item.id}">${item.name}</option>
							</c:forEach>	 --%>						
						</select><br>
						<label for="modalProductPrice" class="sr-only">Product Price</label> <input
						type="text" id="modalProductPrice" name="modalProductPrice" class="form-control"
						placeholder="Product Price" required><br>
						<label for="modalProductImage" class="sr-only">Product Image</label> <input
						type="file" id="modalProductImage" name="modalProductImage" class="form-control"
						placeholder="Product Image" required><br>
					<button class="btn btn-lg btn-primary btn-block" type="submit">Add</button>
				</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>