<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="head.jsp"></jsp:include>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<form class="form-signin">
					<h2 class="form-signin-heading">Please sign in</h2>
					<br> <label for="inputEmail" class="sr-only">Email
						address</label> <input type="email" id="inputEmail" class="form-control"
						placeholder="Email address" required autofocus><br> <label
						for="inputPassword" class="sr-only">Password</label> <input
						type="password" id="inputPassword" class="form-control"
						placeholder="Password" required><br>
					<div class="checkbox">
						<label> <input type="checkbox" value="remember-me">Remember
							me
						</label>
					</div>
					<button class="btn btn-lg btn-primary btn-block" type="submit">Sign
						in</button>
				</form>
			</div>
		</div>



	</div>
	<!-- /container -->

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>