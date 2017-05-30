<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="head.jsp"></jsp:include>

<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<form class="form-horizontal">
					<fieldset>

						<!-- Form Name -->
						<legend>Please provide your details</legend>

						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="fn">First name</label>
							<div class="col-md-4">
								<input id="fn" name="fn" type="text" placeholder="first name"
									class="form-control input-md" required="">

							</div>
						</div>

						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="ln">Last name</label>
							<div class="col-md-4">
								<input id="ln" name="ln" type="text" placeholder="last name"
									class="form-control input-md" required="">

							</div>
						</div>

						<!-- Multiple Radios (inline) -->
						<div class="form-group">
							<label class="col-md-4 control-label" for="gender">Gender</label>
							<div class="col-md-4">
								<label class="radio-inline" for="gender-0"> <input
									type="radio" name="gender" id="gender-0" value="Male"
									checked="checked"> Male
								</label> <label class="radio-inline" for="gender-1"> <input
									type="radio" name="gender" id="gender-1" value="Female">
									Female
								</label>
							</div>
						</div>

						<!-- Select Age -->
						<div class="form-group">
							<label class="col-md-4 control-label" for="age">Age</label>
							<div class="col-md-4">
								<select id="age" name="age" class="form-control input-md">
									<% 
							for(int i=18; i<=100;i++){
								out.println("<option value='"+i+"'"+">"+i+"</option>");
							}
							
							%>
								</select>
							</div>
						</div>

						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="cmpny">Company</label>
							<div class="col-md-4">
								<input id="cmpny" name="cmpny" type="text" placeholder="company"
									class="form-control input-md" required="">

							</div>
						</div>

						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="email">Email</label>
							<div class="col-md-4">
								<input id="email" name="email" type="text" placeholder="email"
									class="form-control input-md" required="">

							</div>
						</div>

						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="contact">Contact</label>
							<div class="col-md-4">
								<input id="contact" name="tel" type="text" placeholder="Contact"
									class="form-control input-md" required="">

							</div>
						</div>
						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="add">Address</label>
							<div class="col-md-4">
								<input id="add" name="add" type="text" placeholder=""
									class="form-control input-md" required="">

							</div>
						</div>


						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="city">City</label>
							<div class="col-md-4">
								<input id="city" name="city" type="text" placeholder="city"
									class="form-control input-md" required="">

							</div>
						</div>

						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="zip">Zip Code</label>
							<div class="col-md-4">
								<input id="zip" name="zip" type="text" placeholder="Zip Code"
									class="form-control input-md" required="">

							</div>
						</div>

						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="ctry">Country</label>
							<div class="col-md-4">
								<input id="ctry" name="ctry" type="text" placeholder="Country"
									class="form-control input-md" required="">

							</div>
						</div>

						<!-- Button -->
						<div class="form-group">
							<label class="col-md-4 control-label" for="submit"></label>
							<div class="col-md-4">
								<button id="submit" name="submit" class="btn btn-primary">SUBMIT</button>
							</div>
						</div>

					</fieldset>
				</form>
			</div>
		</div>
	</div>



	<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>