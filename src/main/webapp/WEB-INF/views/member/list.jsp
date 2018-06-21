<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
var fn_setFormTagList = function(url, id, params) {
	$.ajax({
		type : "POST", url : url, data : {'SEARCH_OPTION': '${paramMap.SEARCH_OPTION}', 'SEARCH_KEYWORD': '${paramMap.SEARCH_KEYWORD}'}, cache : false
		, success : function(data) {
			var formTag = "<table><thead>"
						+ "<tr><th>MEMBER_SEQ</th>"
							+ "<th>EMAIL</th>"
							+ "<th>NAME</th>"
							+ "<th>AUTHORITY</th>"
							+ "<th>MODIFY/DELETE</th>"
						+ "<tr></thead>"
						+ "<tbody>";
			$.each(data, function(i,item){
				formTag += '<tr>'
							+ '<td>'+ item.MEMBER_SEQ +'</td>'
							+ '<td>'+ item.EMAIL +'</td>'
							+ '<td>'+ item.NAME +'</td>'
							+ '<td>'+ item.AUTHORITY +'</td>'
							+ '<td><button type="button" class="btn btn-primary">modify</button>'
							+    '<button type="button" class="btn btn-primary">delete</button></td>'
							+ '</tr>';
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
	fn_setFormTagList("<c:url value='/ws/memberList' />", "memberDIV");
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
			<form role="form" action="<c:url value='/member/list' />"	method='POST'>
				<div class="row uniform">
						<div class="4u 12u$(small)">
							<input type="radio" id="SEARCH_OPTION_BY_EMAIL" name="SEARCH_OPTION" value="BY_EMAIL" checked>
							<label for="SEARCH_OPTION_BY_EMAIL">EMAIL</label>
							<input type="radio" id="SEARCH_OPTION_BY_NAME" name="SEARCH_OPTION" value="BY_NAME">
							<label for="SEARCH_OPTION_BY_NAME">NAME</label>
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
		<div id="memberDIV"></div>
	</div>
</section>



</body>
</html>