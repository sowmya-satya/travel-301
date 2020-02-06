<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrap.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
<title>Insert title here</title>
<style>
body {
	padding: 45px;
	background-image: url("/resources/images/background1.jpg");
	height: 600px;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}

.ko {
	color: black;
	font-family: inherit;
}

.header {
	padding: 10px;
	text-align: center;
	color: black;
	font-size: 15px;
	font-family: inherit;
	text-align: center;
}
</style>
</head>
<body>
	<div class="header">
		<h1 align="center">User Registration</h1>
	</div>

	<form action="/addUser" method="post" id="userform">
		<div class="container-fluid ko">
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<div id="result" style="color: red"></div>
					<div class="form-group">
						<label for="userName">Full Name</label> <input type="text"
							class="form-control" id="userName" placeholder="Enter Full Name"
							name="userName">
					</div>
					<div class="form-group">
						<label for="age">Age</label> <input type="number"
							class="form-control" id="age" placeholder="Enter age" name="age">
					</div>
					<div id="result2" style="color: red"></div>
					<div class="button">
						<button type="submit" class="btn btn-primary" value="submit">Submit</button>

						<input type="button" class="btn btn-primary"
							onclick="location.href='/'" value="Back">
					</div>
					${status}<br>
				</div>
				<div class="col-md-4"></div>
			</div>
		</div>
	</form>
	<script>
		$.validator.addMethod("alphabetsnspace", function(value, element) {
			return this.optional(element)
					|| /^[a-zA-Z]+(\s{0,1}[a-zA-Z])*$/.test(value);
		}, "please enter only characters including spaces");
		$('#userform').validate({
			rules : {
				userName : {
					required : true,
					lettersonly : true,
					minlength : 3,
					maxlength : 15
				},
				age : {
					required : true,
					numbersonly : true,
					range : [ 18, 99 ]
				}
			}

		});
	</script>

</body>
</html>