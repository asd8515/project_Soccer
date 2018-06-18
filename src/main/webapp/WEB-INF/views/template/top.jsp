<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header id="header">
	<h1>
		<a href="<c:url value='/'/>">Spectral</a>
	</h1>
	<nav id="nav">
	<ul>
		<li class="special"><a href="#menu" class="menuToggle"><span>Menu</span></a>
			<div id="menu">
				<ul>
					<li><a href="<c:url value='/'/>">Home</a></li>
					<li><a href="<c:url value='/matchingcheck'/>">Matching_check</a></li>
					<li><a href="<c:url value='/matchingsend'/>">Matching_send</a></li>
					<li><a href="<c:url value='/signup'/>">Sign Up</a></li>
					<li><a href="<c:url value='/login'/>">Log In</a></li>
				</ul>
			</div></li>
	</ul>
	</nav> </header>
</body>
</html>