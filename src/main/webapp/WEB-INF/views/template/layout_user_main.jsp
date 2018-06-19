<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<tiles:insertAttribute name="layout.header" />
<title><tiles:getAsString name="layout.title" /></title>
</head>
<body>
    <div id="wrapper">
       	<!-- Navigation -->
		<tiles:insertAttribute name="layout.top" />
	    <!-- /.navbar-static-side -->

        <!-- body -->
        <tiles:insertAttribute name="layout.body" />

		<!-- footer -->
		<tiles:insertAttribute name="layout.footer" />
    </div>
    <!-- /#wrapper -->	

</body>
</html>


