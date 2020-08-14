<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
<!DOCTYPE html>
<html>

<head>
<title>Login</title>
<c:url value="/images/back.jpg" var="logo"/>
</head>


<body background="/images/back.jpg">
    <div>
        <div class="container" style="background-color: #eaeaea; padding-top:50px;margin-top: 110px;max-width: 700px;height: 520px;border: 3px solid #9c9c9c">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                    	<font color="red">${errorMessage}</font>
                        <form id="login-form" class="form" method="post" modelAttribute="login">
                            <h3 class="text-center text-info">Login</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">Username:</label><br>
                                <input type="email" name="email" id="username" class="form-control">
                            </div>
	                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                <input type="password" name="password" id="password" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="submit" class="btn btn-info btn-md">
                            </div>
                            </form>
                            <form action="/register">
                            <div id="register-link" class="text-right" style="margin-top:-52px; margin-left:250px">
                                <input type="submit" class="btn btn-info btn-md" value="Register Here">
                            </div>
                            </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>