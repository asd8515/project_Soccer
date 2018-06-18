<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Bootstrap Core CSS -->
<link type="text/css" href="../resources/css/bootstrap.min.css"
	rel="stylesheet" />

<title>Edit</title>
<%@ page import="com.soccer.project.javabean.MemberBean"%>
</head>
<body>
	<div id="wrapper">
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Login Status</div>
					<div class="panel-body">
						<!-- /.row (nested) -->
						<fieldset>
							<div class="form-group">
								Session Member ID :
								<%= request.getParameter("username") %>
							</div>
							<div class="form-group">
								Session Password :
								<%= request.getParameter("password") %>
							</div>
						</fieldset>
						<% String host = request.getContextPath(); %>
						<form action="<c:url value='/'/>" method="GET">
							<% String userID = (String)request.getParameter("username"); %>
							<% String userPass = (String)request.getParameter("password"); %>
							<%
								MemberBean memberBean = new MemberBean();
								boolean rightAccount = memberBean.getRightAccount(userID, userPass);
								if (rightAccount == true) {
									session.setAttribute("userID", userID);
									session.setAttribute("userPass", userPass);
								} else {
									System.out.println("login x");
								}
							%>
							<input type="submit" class="btn btn-lg btn-success btn-block"
								value="Home" name="home">
						</form>
						<!-- /.row (nested) -->
					</div>

					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /#wrapper -->

</body>
</html>