<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body class="landing">

	<!-- Banner -->
	<section id="banner">
		<div class="inner">
			<h2>crazy about football</h2>
			<p>
				People who like football<br /> Through this app<br /> Matching
				System</a>.
			</p>
			<ul class="actions">
				<li><a href="#" class="button special">Activate</a></li>
			</ul>
		</div>
		<a href="#two" class="more scrolly">Learn More</a>
	</section>

	<!-- Two -->
	<section id="two" class="wrapper alt style2">
		<c:forEach items="${resultList}" var="resultData" varStatus="loop">
			<section class="spotlight">
				<div class="image">
					<img src="<c:url value='resources/images/${resultData.IMG_NAME}' />" />
				</div>
				<div class="content">
					<h2>${resultData.MESSAGE}</h2>
					<p>
						Level : ${resultData.LEVEL_NAME} <br>
						Region : ${resultData.REGION} <br>
						registration date : ${resultData.WRITEDATE}
					</p>
				</div>
			</section>
		</c:forEach>
	</section>
</body>
