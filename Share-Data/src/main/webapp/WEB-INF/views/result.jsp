<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
</head>

<body style="background-color: #cfb845">

	<h2 style="color: #141414; font-weight: bold; text-align: center">${cost}</h2>
	<div class="container" style="margin-left: 500px; margin-top: 200px">
		<div class="row">
			<div class="col-xs-12 col-md-6">
				<div class="panel panel-default">
					<div style="background-color: #05716c" class="panel-heading">
						<h3 style="color: white; font-weight: bold; text-align: center" class="panel-title">Payment Details</h3>
						
					</div>
					<div  class="panel-body">
						<form role="form">
							<div class="form-group">
								<label for="cardNumber"> CARD NUMBER</label>
								<div class="input-group">
									<input type="text" class="form-control" id="cardNumber"
										placeholder="Valid Card Number" value="487534584589357" required autofocus readonly/> <span
										class="input-group-addon"><span
										class="glyphicon glyphicon-lock"></span></span>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-7 col-md-7">
							<label for="expityMonth"> EXPIRY DATE</label>	
									<div class="form-group">
										<div class="col-xs-6 col-lg-6 pl-ziro">
											<input type="text" class="form-control" id="expityMonth"
												placeholder="MM" value="08" readonly />
										</div>
										<div class="col-xs-6 col-lg-6 pl-ziro">
											<input type="text" class="form-control" id="expityYear"
												placeholder="YY" value="2025" readonly />
										</div>
									</div>
								</div>
								<div class="col-xs-5 col-md-5 pull-right">
									<div class="form-group">
										<label for="cvCode"> CV CODE</label> <input type="password"
											class="form-control" id="cvCode" value="458" placeholder="CV" required readonly/>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
				<ul class="nav nav-pills nav-stacked">
					<li class="active"><a href="#"><span
							class="badge pull-right"><span class="fa fa-inr"></span>${price}</span>
							Final Payment</a></li>
				</ul>
				<br /> 
				<a href="/commision?price=${price}"
					class="btn btn-success btn-lg btn-block" role="button">Pay</a>
						<h2 style="color: #141414; font-weight: bold; text-align: center">${commision}</h2>
				
				<a href="/product" class="btn btn-success btn-lg btn-block" role="button">Trade More</a>	
					
			</div>
		</div>
	</div>
</body>
</html>