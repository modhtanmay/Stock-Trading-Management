<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Buy/Sell Share</title>
</head>
<body style="background-color: #1e3d59">
	<%-- <table border="1" cellpadding="2" cellspacing="2">
		<tr>
			<th>Id</th>
			<th>Share Name</th>
			<th>Low</th>
			<th>High</th>
			<th>Share Price</th>
		</tr>
		</thead>
		<tr>
				<td>${found.id}</td>
				<td>${found.name}</td>
				<td>${found.low}</td>
				<td>${found.high}</td>
				<td>${found.price}</td>
		</tr>
	</table> --%>
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
      <a style="margin-left: 1000px"class="nav-item nav-link active" href="/">Logout</a>
    </div>
  </div>
</nav>
	<div class="container" style="background-color:#e0cdbe; padding-top: 50px; margin-top: 110px; max-width: 700px; height: 600px; border: 3px solid #9c9c9c">
		<div id="login-row"
			class="row justify-content-center align-items-center">
			<div id="login-column" class="col-md-8">
				<div id="login-box" class="col-md-12">
				
					<form action="/calculateCost" method="POST" modelAttribute="order">
						<div class="form-group">
							<h5><label class="badge badge-dark" for="id">Share Id :</label></h5> 
							<input type="text" style="margin-left: 50px" name="id" class="form-control" value=" ${found.id}" readonly>
						</div>
						<div class="form-group">
							<h5><label class="badge badge-dark" for="orderName"> Share Name : </label> </h5> 
							<input type="text" style="margin-left: 50px" class="form-control" name="orderName" id="orderName" value=" ${found.name}" readonly>
						</div>
						<div class="form-group">
							<h5><label class="badge badge-dark" for="orderPrice">Share Price : </label> </h5>
							<input type="text" style="margin-left: 50px" class="form-control" name="orderPrice" id="orderPrice" value=" ${found.price}" readonly>
						</div>
						<div class="form-group">
							<h5><label class="badge badge-dark" for="quantity">Quantity : </label></h5> 
							<input id="quantity" style="margin-left: 50px" class="form-control" name="quantity" required="required">
						</div>
						<div class="form-group">
							<select id="category" class="btn btn-success btn-md"  name="category" style="padding: 5px; margin-top: 30px; font-size: 20px">
								<option>Buy</option>
								<option>Sell</option>
							</select>
							<input class="btn btn-info btn-md" type="submit" name="submit" value="submit" size="25"  style="margin-left: 220px; margin-top: 30px; font-size: 20px">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>