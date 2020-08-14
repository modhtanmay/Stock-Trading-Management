<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<c:url value="/images/back.jpg" var="logo"/>
</head>


<!------ Include the above in your HEAD tag ---------->

<body background="/images/back.jpg">

	<div id="Login">
		<div class="container"
			style="background-color: #eaeaea; padding-top: 50px; margin-top: 100px; max-width: 700px; height: 590px; border: 3px solid #9c9c9c">
			<div id="login-row"
				class="row justify-content-center align-items-center">
				<div id="login-column" class="col-md-6">
					<div id="login-box" class="col-md-12">
					
						<form id="login-form" class="form" method="POST" modelAttribute="register">
							<h3 class="text-center text-info">Register</h3>
							<div class="form-group">
								<label for="firstname" class="text-info">First Name:</label><br>
								<input type="text" name="firstname" id="firstname"
									class="form-control" required>
							</div>
							<div class="form-group">
								<label for="lastname" class="text-info">Last Name:</label><br>
								<input type="text" name="lastname" id="lastname"
									class="form-control" required>
							</div>
							<div class="form-group">
								<label for="lastname" class="text-info">Email:</label><br>
								<input type="email" name="email" id="email" class="form-control">
							</div>
							<div class="form-group">
								<label for="password" class="text-info">Password:</label><br>
								<input type="password" name="password" id="password"
									class="form-control" required>
							</div>

							<div class="form-group">
								<label for="password" class="text-info">Confirm
									Password:</label><br> <input type="password"
									name="confirmpassword" id="confirmpassword"
									class="form-control" required>
							</div>
							<div class="form-group">
								<input type="submit" value="Submit" class="btn btn-outline-info">
								<font color="red">${error}</font>
								<font color="green">${success}</font>
								
							</div>
						</form>
						<form action="/login">
							<div id="register-link" class="text-right"
								style="margin-top: -52px; margin-left: 250px">
								<input type="submit" class="btn btn-info btn-md"
									value="Login Here">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>