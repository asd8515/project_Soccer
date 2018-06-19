<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

		<div class="wrapper">
			<form class="form-signin" role="form" action="<c:url value='/j_spring_security_check' />" method="POST">
				<h2 class="form-signin-heading">F.b login</h2>
				<label for="email"><b>Email</b></label>
				<input type="text" class="form-control" name="email"
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
	</div>
