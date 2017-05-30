<!DOCTYPE html>
<html lang="en">
<jsp:include page="head.jsp"></jsp:include>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<!-- Page Content -->
	<div class="container">

		<div class="row">


			<div class="col-md-12">

				<div class="row carousel-holder">

					<div class="col-md-12">
						<div id="carousel-example-generic" class="carousel slide"
							data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carousel-example-generic" data-slide-to="0"
									class="active"></li>
								<li data-target="#carousel-example-generic" data-slide-to="1"></li>
								<li data-target="#carousel-example-generic" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner">
								<div class="item active">
									<img class="slide-image" src="./resources/images/1.jpg" alt="">
								</div>
								<div class="item">
									<img class="slide-image" src="./resources/images/2.jpg" alt="">
								</div>
								<div class="item">
									<img class="slide-image" src="./resources/images/2.jpg" alt="">
								</div>
							</div>
							<a class="left carousel-control" href="#" data-slide="prev">
								<span class="glyphicon glyphicon-chevron-left"></span>
							</a> <a class="right carousel-control" href="#" data-slide="next">
								<span class="glyphicon glyphicon-chevron-right"></span>
							</a>
						</div>
					</div>

				</div>

				<div class="row">

					<div class="col-sm-4 col-lg-4 col-md-4">
						<a href="./product.jsp">
							<div class="thumbnail">
								<img src="./resources/images/product1.jpg" alt="">
								<div class="caption">
									<p>Something about product 1.</p>
								</div>
							</div>
						</a>
					</div>

					<div class="col-sm-4 col-lg-4 col-md-4">
						<a href="./product.jsp">
							<div class="thumbnail">
								<img src="./resources/images/product2.jpg" alt="">
								<div class="caption">
									<p>Something about product 2</p>
								</div>
							</div>
						</a>
					</div>

					<div class="col-sm-4 col-lg-4 col-md-4">
						<a href="./product.jsp">
							<div class="thumbnail">
								<img src="./resources/images/product3.jpg" alt="">
								<div class="caption">
									<p>Something about product 3</p>
								</div>
							</div>
						</a>
					</div>

					<div class="col-sm-4 col-lg-4 col-md-4">
						<a href="./product.jsp">
							<div class="thumbnail">
								<img src="./resources/images/product4.jpg" alt="">
								<div class="caption">
									<p>Something about product 4</p>
								</div>
							</div>
						</a>
					</div>

					<div class="col-sm-4 col-lg-4 col-md-4">
						<a href="./product.jsp">
							<div class="thumbnail">
								<img src="./resources/images/product5.jpg" alt="">
								<div class="caption">
									<p>Something about product 5</p>
								</div>
							</div>
						</a>
					</div>

					<div class="col-sm-4 col-lg-4 col-md-4">
						<a href="./product.jsp">
							<div class="thumbnail">
								<img src="./resources/images/product6.jpg" alt="">
								<div class="caption">
									<p>Something about product 6</p>
								</div>
							</div>
						</a>
					</div>

				</div>

			</div>

		</div>

	</div>

	<jsp:include page="footer.jsp"></jsp:include>


</body>

</html>
