<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<c:set var="principalName" value="${pageContext.request.userPrincipal.name}"/>

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
					<li><a href="<c:url value='/matching/register?MEMBER_SEQ=${principalName} '/> ">Register Matching</a></li>
					<li><a href="<c:url value='/member/list'/> ">Member list</a></li>
					<li><a href="<c:url value='/member/signup'/> ">Sign up</a></li>
					<li><a href="<c:url value='/login'/> ">Log in</a></li>
					<li><a href="<c:url value='/j_spring_security_logout'/> ">Log out</a></li>
					<li><a href="<c:url value="#"/> ">${principalName}</a></li>
				</ul>
			</div></li>
	</ul>
	</nav>
	
	</header>