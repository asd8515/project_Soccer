<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<header id="header">
	<h1>
		<a href="<c:url value='/'/>">FM</a>
	</h1>
	<nav id="nav">
	<ul>
		<li class="special"><a href="#menu" class="menuToggle"><span>Menu</span></a>
			<div id="menu">
				<ul>
					<li><a href="<c:url value='/'/> ">Home</a></li>
					<li><a href="<c:url value='/matching/list'/> ">Game list</a></li>
					<li><a href="<c:url value='/matching/edit'/> ">Register Matching</a></li>
					<li><a href="<c:url value='/member/signup'/> ">Sign up</a></li>
					<li><a href="<c:url value='/login'/> ">Log in</a></li>
				</ul>
			</div></li>
	</ul>
	</nav>
	
	</header>

</html>