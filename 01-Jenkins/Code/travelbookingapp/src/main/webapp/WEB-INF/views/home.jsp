<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<html>
<head>
<meta charset="ISO-8859-1">
<script type="text/javascript" src="/resources/js/app.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background-image: url("/resources/images/home.jpg");
	height: 600px;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}

container {
	font-family: sans-serif;
}

class-group {
	color: blue;
}
</style>

<title>User Registration</title>

</head>
<body>
	<div class="container">
		<form align="center">
			<div class="class-group">
				<h1 style="color: black">Menu</h1>
			</div>
			<button type="submit" value="submit" id="user"
				class="btn btn-primary" onclick="form.action='/user'">Register
				User</button>
			<button type="submit" value="submit" id="booking"
				class="btn btn-primary" onclick="form.action='/booking'">Travel
				Booking</button>
			<button type="submit" value="submit" id="display"
				class="btn btn-primary" onclick="form.action='/view'">Booking
				Details</button>
		</form>
	</div>
</body>
</html>