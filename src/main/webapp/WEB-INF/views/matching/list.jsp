<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
var fn_setFormTagList = function(url, id, params) {
	$.ajax({
		type : "POST", url : url, data : {'SEARCH_OPTION': '${paramMap.SEARCH_OPTION}', 'SEARCH_KEYWORD': '${paramMap.SEARCH_KEYWORD}'}, cache : false
		, success : function(data) {
			var formTag = "<table><thead>"
						+ "<tr><th>Location</th>"
							+ "<th>Level</th>"
							+ "<th>Message</th>"
							+ "<th>Written by</th>"
							+ "<th>Status</th>"
							+ "<th>Reporting Date</th>"
							+ "<th>MODIFY/DELETE</th>"
						+ "<tr></thead>"
						+ "<tbody>";
			$.each(data, function(i,item){
				formTag += '<tr>'
							+ '<td>'+ item.REGION +'</td>'
							+ '<td>'+ item.LEVEL_NAME +'</td>'
							+ '<td>'+ item.MESSAGE +'</td>'
							+ '<td>'+ item.NAME +'</td>'
							+ '<td>'+ item.MATCHED +'</td>'
							+ '<td>'+ item.WRITEDATE +'</td>'
							+ '<td>'
							+ '<form role="form" method="POST" style="margin: 0 0 0 0">'
							+ '<input type="hidden" id="" name="GAME_SEQ" value="'+ item.GAME_SEQ +'">'
							+ '<input type="hidden" id="" name="MEMBER_SEQ" value="'+ item.MEMBER_SEQ +'">'
								+ '<button type="submit" class="btn btn-primary"  formaction="'+ '<c:url value="/matching/edit" />'+'">modify</button>'
								+ '<button type="submit" class="btn btn-primary"  formaction="'+ '<c:url value="/matching/delete" />'+'">delete</button></td>'
							+ '</form></tr>';
			});
			formTag += '</tbody><table>';
			$('#'+id).html(formTag);
		}
		, error : function(xhr,status,exception) {
			alert("Failure \n ("+status+")");
			return false;
		}
	});
}
$(function(){
/* 	fn_setFormTagList("<c:url value='/ws/memberList' />", "memberDIV", "${resultMap.SEARCH_OPTION}"); */
	fn_setFormTagList("<c:url value='/ws/matchingList' />", "matchingDIV");
});
</script>

<!-- Main -->

<article id="main">
	<header>
		<h2>Member Management</h2>
		<p>You can manage members.</p>
	</header>
	<section class="wrapper style5">
	<div class="inner">
		<section>
			<h4>Searching Option</h4>
			<form role="form" action="<c:url value='/matching/list' />"	method='POST'>
				<div class="row uniform">
						<div class="4u 12u$(small)">
							<input type="radio" id="SEARCH_OPTION_BY_LOCATION" name="SEARCH_OPTION" value="BY_LOCATION" checked>
							<label for="SEARCH_OPTION_BY_LOCATION">LOCATION</label>
							<input type="radio" id="SEARCH_OPTION_BY_LEVEL" name="SEARCH_OPTION" value="BY_LEVEL">
							<label for="SEARCH_OPTION_BY_LEVEL">LEVEL</label>
						</div>
						<div class="10u 12u$(small)">
							<input type="text" id="" name="SEARCH_KEYWORD"
								placeholder="please type keyword.">
						</div>
						<div class="2u 12u$(small)">
							<button type="submit">SEARCH</button>
						</div>
				</div>
			</form>
			
		</section>
		</div>
	</section>
</article>

<section class="wrapper style1">
	<div class="table-wrapper">
		<div id="matchingDIV"></div>
	</div>
</section>



</body>
</html>