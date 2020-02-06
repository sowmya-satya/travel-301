<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/additional-methods.min.js"
	integrity="sha256-vb+6VObiUIaoRuSusdLRWtXs/ewuz62LgVXg2f1ZXGo="
	crossorigin="anonymous"></script>
<style>
.ko {
	color: black;
	font-style: inherit;
}

body {
	background-image: url("/resources/images/update.jpg");
	height: 600px;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
</style>

<title>Travelling</title>
</head>
<body>
	<h1 align="center">Travel Booking</h1>
	<form action="/updateDetails" method="post" id="updateform">

		<div class="container-fluid ko">
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<div class="form-group">
						<label for="bookingId">BookingId</label> <input type="text"
							class="form-control" id="bookingId"
							placeholder="Enter booking Id" name="bookingId"
							value="${booking.bookingId}">
					</div>

					<div class="form-group">
						<label for="bookingFrom">From</label> <input type="text"
							class="form-control" id="bookingFrom"
							placeholder="Enter booking place from" name="bookingFrom"
							value="${booking.bookingFrom}">
					</div>
					<div class="form-group">
						<label for="bookingTo">To</label><input type="text"
							class="form-control" id="bookingTo"
							placeholder="Enter booking place to" name="bookingTo"
							value="${booking.bookingTo}">
					</div>
					<div class="form-group">
						<label for="distance">Distance</label><input type="number"
							class="form-control" id="distance" placeholder="Enter distance"
							name="distance" value="${booking.distance}">
					</div>
					<div class="button">
						<button type="submit" class="btn btn-primary" value="submit">Submit</button>
						<input type="button" class="btn btn-primary"
							onclick="location.href='/'" value="Back">
					</div>
					<div class="col-md-4"></div>

				</div>

			</div>
		</div>
	</form>
</body>

</html>