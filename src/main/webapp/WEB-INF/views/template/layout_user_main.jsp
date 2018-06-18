<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!-- top, left -->
	<tiles:insertAttribute name="layout.header"/>
	<tiles:insertAttribute name="layout.top" />
	
<!-- body -->
<tiles:insertAttribute name="layout.body"/>
<tiles:insertAttribute name="layout.footer"/>
</body>
</html>