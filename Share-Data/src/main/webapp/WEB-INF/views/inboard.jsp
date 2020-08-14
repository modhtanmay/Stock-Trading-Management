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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<c:url value="/images/back.jpg" var="logo"/>

</head>
<body background="/images/back.jpg">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark" class="navbar navbar-default navbar-fixed-top">
  <a class="navbar-brand" style="color: #a7d129;font-size: 28; font-weight: bold">StockTrad-Z</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" style="font-weight: bold" href="/inboard">Home <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link active" style="font-weight: bold" href="/orders">Orders</a>
      <a class="nav-item nav-link active" style="font-weight: bold" href="/product">Trade</a>
      <h5 style="margin-left: 100px; font-weight: bold; color: #ffd571">Welcome ${email}</h5>
      
      <a style="margin-left: 500px; font-weight: bold"class="nav-item nav-link active" href="/">Logout</a>
    </div>
  </div>
</nav>


</body>
</html>