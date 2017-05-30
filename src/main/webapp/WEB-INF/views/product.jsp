<!DOCTYPE html>
<html lang="en">
<jsp:include page="head.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>

<div class="container">
	<div class="row">
		<div class="col-xs-4 item-photo">
			<img style="max-width: 100%;" src="./resources/images/product1.jpg" />
		</div>
		<div class="col-xs-5" style="border: 0px solid gray">
			<!-- Datos del vendedor y titulo del producto -->
			<h3>Ethnic wear for men</h3>
			<h5 style="color: #337ab7">
				sold by<a href="#">Khadi Man</a> · <small style="color: #337ab7">(5054
					Sales)</small>
			</h5>

			<!-- Precios -->
			<h6 class="title-price">
				<small>Ethnic Wear</small>
			</h6>
			<h3 style="margin-top: 0px;">INR 399</h3>

			<!-- Detalles especificos del producto -->
			<div class="section">
				<h6 class="title-attr" style="margin-top: 15px;">
					<small>COLOR</small>
				</h6>
				<div>
					<div class="attr" style="width: 25px; background: #5a5a5a;"></div>
					<div class="attr" style="width: 25px; background: white;"></div>
				</div>
			</div>

			<div class="section" style="padding-bottom: 20px;">
				<h6 class="title-attr">
					<small>QUANTITY</small>
				</h6>
				<div>
					<div class="btn-minus">
						<span class="glyphicon glyphicon-minus"></span>
					</div>
					<input value="1" />
					<div class="btn-plus">
						<span class="glyphicon glyphicon-plus"></span>
					</div>
				</div>
			</div>

			<!-- Botones de compra -->
			<div class="section" style="padding-bottom: 20px;">
				<button class="btn btn-success">
					<span style="margin-right: 20px"
						class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>Add
					to Cart
				</button>
				<h6>
					<a href="#"><span class="glyphicon glyphicon-heart-empty"
						style="cursor: pointer;"></span>Add to Wishlist</a>
				</h6>
			</div>
		</div>

		<div class="col-xs-9">
			<div style="width: 100%; border-top: 1px solid silver">
				<p style="padding: 15px;">
					<small> Product Details </small>
				</p>
				<small>
					<ul>
						<li>Superior Quality Linen</li>
						<li>Comfort Wear</li>
						<li>Handcrafted Design</li>
					</ul>
				</small>
			</div>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>