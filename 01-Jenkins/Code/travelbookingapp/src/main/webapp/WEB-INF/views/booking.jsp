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
	background-image: url("/resources/images/travelling1.jpg");
	height: 600px;
	background-position: center;
	background-repeat: no-repeat;
	background-attachment: fixed; 
	background-size : cover;
	position: relative;
	background-size: cover;
}
</style>

<title>Travelling</title>
</head>
<body>
	<h1 align="center">Travel Booking</h1>
	<form action="/addBooking" method="post" id="bookingform">

		<div class="container-fluid ko">
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<div class="form-group">
						<label for="userName">User Name</label> <select name="userName"
							id="userName">
							<c:forEach items="${user}" var="user">
								<option value="${user.userName}">${user.userName}</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="bookingFrom">From</label> <input type="text"
							class="form-control" id="bookingFrom"
							placeholder="Enter booking place from" name="bookingFrom">
					</div>
					<div class="form-group">
						<label for="bookingTo">To</label><input type="text"
							class="form-control" id="bookingTo"
							placeholder="Enter booking place to" name="bookingTo">
					</div>
					<div class="form-group">
						<label for="dateOfJourney">Date of Journey</label> <input
							type="date" class="form-control" id="dateOfJourney"
							name="dateOfJourney">
					</div>
					<div class="form-group">
						<label for="distance">Distance</label><input type="number"
							class="form-control" id="distance" placeholder="Enter distance"
							name="distance">
					</div>
					<div class="form-group">
						<label for="food">Food: </label> <input type="radio" name="food"
							id="food" value="vegetarian">Vegetarian <br> <label
							for="food">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
						</label> <input type="radio" id="food" name="food" value="nonvegetarian">Non-Vegetarian
					</div>

					<div class="form-group">
						<label for="travellingWith">Travelling With: </label> <input
							type="checkbox" id="travellingWith" name="travellingWith"
							value="visa">Visa <label for="travellingWith">&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp; &nbsp; &nbsp; </label> <input type="checkbox" id="travellingWith"
							name="travellingWith" value="passport">Passport
					</div>
					<div class="button">
						<button type="submit" class="btn btn-primary" value="submit">Submit</button>
						<input type="button" class="btn btn-primary"
							onclick="location.href='/'" value="Back">
					</div>
					${status}<br>
					<div class="col-md-4"></div>

				</div>

			</div>
		</div>
	</form>
	<script>
		$('#bookingform').validate({
			rules : {
				bookingFrom : {
					required : true,
					lettersonly : true,
					minlength : 3,
					maxlength : 15
				},
				bookingTo : {
					required : true,
					lettersonly : true,
					minlength : 3,
					maxlength : 15

				},
				distance : {
					required : true,
					digits : true,
					range : [ 200, 2000 ]
				},
				food : {
					required : true,
					minlength : 1

				},
				travellingWith : {
					required : true,
					minlength : 1

				}
			}

		});
	</script>
</body>

</html>