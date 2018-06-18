<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>F.b SignUP</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<c:url value='/resources/assets/css/main.css'/>" />
</head>
<body>

	
		<!-- Page Wrapper -->


		<form action="action_page.php" style="border: 1px solid #ccc">
			<div class="container">
				<h1>Sign Up</h1>
				<p>Please fill in this form to create an account.</p>
				<hr>

				<label for="email"><b>Email</b></label><input type="text"
					placeholder="Enter Email" name="email" required> 
					<label for="name"><b>Name</b></label><input type="text"
					placeholder="Enter Name" name="name" required>
					<label for="phone"><b>Phone Number</b></label><input type="text"
					placeholder="Enter Phone" name="phone" required>
					<label for="psw"><b>Password</b></label><input
					type="password" placeholder="Enter Password" name="psw" required>
				<label for="psw-repeat"><b>Repeat Password</b></label> <input
					type="password" placeholder="Repeat Password" name="psw-repeat"
					required> 
				<p>
					FIFA WORLD CUP PRAISE <a href="#" style="color: dodgerblue">APPLE
						& FIFA</a>.
				</p>

				<div class="clearfix">
					<button type="button" class="cancelbtn">Cancel</button>
					<button type="submit" class="signupbtn">Sign Up</button>
				</div>
			</div>
		</form>


</body>
</html>