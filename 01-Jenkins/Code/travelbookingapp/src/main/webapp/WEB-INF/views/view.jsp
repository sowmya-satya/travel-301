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

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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

<title>Insert title here</title>
<style>
body {
	background-image: url("/resources/images/display.jpg");
	height: 600px;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}

h1 {
	align: center;
	font-family: inherit;
	padding: 40px;
}

.ko {
	color: black;
	font-family: monospace;
}

.kf {
	color: blue;
	font-family: monospace;
	padding: 20px;
	font-weight: 300;
}
</style>

</head>
<body>
	<h1 align="center">Booking Details</h1>
	<form action="/getDetails" method="post">
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
						<label for="dateOfJourney">Date of Journey</label> <input
							type="date" class="form-control" id="dateOfJourney"
							name="dateOfJourney">
					</div>
					<div>
						<button type="submit" class="btn btn-primary" value="submit">Submit</button>
						<input type="button" class="btn btn-primary"
							onclick="location.href='/'" value="Back">
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
<body>
	<div class="container-fluid kf">
		<table style="color: black" border="1" width="70%" cellpadding="2"
			align="center">
			<tr align="center">
				<th align="center">Booking Id</th>
				<th align="center">Booking From</th>
				<th align="center">Booking To</th>
				<th align="center">Price</th>
				<th align="center">Update</th>
			</tr>
			<c:forEach var="booking" items="${booking}">
				<tr align="center">
					<td>${booking.bookingId}</td>
					<td>${booking.bookingFrom}</td>
					<td>${booking.bookingTo}</td>
					<td>${booking.price}</td>
					<td><a href="/update/${booking.bookingId}">Update</a></td>

				</tr>
			</c:forEach>

		</table>
	</div>
</body>
</html>