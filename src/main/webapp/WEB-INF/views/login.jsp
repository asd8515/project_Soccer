<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

		<div class="wrapper">
			<div class="inner">
			<form class="form-signin" role="form" action="<c:url value='/j_spring_security_check' />" method="POST">
				<h2 class="form-signin-heading">FB login</h2>
				
				<div class="row uniform">
					<div class ="12u 12u$(small)">
						<label for="email"><b>Email</b></label>
						<input type="text" class="form-control" name="email"
										 placeholder="Email Address" /> 
					</div>
					<div class ="12u 12u$(small)">
						<label for="psw"><b>Password</b></label>
						<input type="password" class="form-control" name="password"
										placeholder="Password" />
					</div>								
					<div class ="12u 12u$(small)">
						<c:choose>
						    <c:when test="${paramMap.fail eq 'true'}">
						        로그인실패
						    </c:when>
						    <c:otherwise>
						        
						    </c:otherwise>
						</c:choose>
					</div>
					<div class ="12u 12u$(small)">
						<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
					</div>
				</div>
			</form>
		</div>
	</div>
