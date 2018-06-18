<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Sign up</title>
<!-- Meta-Tags -->
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="<c:url value='/resources/assets/css/main.css'/>" />
</head>
<body>

	

		<!-- Page Wrapper -->



		<div class="wrapper">
			<form class="form-signin" action="<c:url value='/loginstatus'/>"
				method="POST">
				<h2 class="form-signin-heading">F.b login</h2>
				<label for="email"><b>Email</b></label>
				<input type="text" class="form-control" name="username"
					placeholder="Email Address" required="" autofocus="" /> 
					
					<label for="psw"><b>Password</b></label>
					<input type="password" class="form-control" name="password"
					placeholder="Password" required="" /> <label class="checkbox">
					<input type="checkbox" value="remember-me" id="rememberMe"
					name="rememberMe"> Remember me
				</label>
				<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
			</form>
		</div>
		<footer id="footer">
		<ul class="icons">
			<li><a href="https://www.apple.com/" class="icon fa-apple"><span
					class="label">Twitter</span></a></li>
			<li><a href="https://www.facebook.com/" class="icon fa-facebook"><span
					class="label">Facebook</span></a></li>
			<li><a href="https://www.instagram.com/?hl=ko"
				class="icon fa-instagram"><span class="label">Instagram</span></a></li>
		</ul>
		<ul class="copyright">
			<li>&copy; Untitled</li>
			<li>Design: <a href="#">PARK HONG</a></li>
		</ul>
		</footer>
	</div>


	

</body>
</html>