<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.Map" %>

<% 
			String currentSearchOption =""; 

			// 검색옵션 체크박스를 유지해 주기 위해서
			if((String)((Map)request.getAttribute("paramMap")).get("SEARCH_OPTION") != null){
				currentSearchOption = (String)((Map)request.getAttribute("paramMap")).get("SEARCH_OPTION");
			}
				
			String emailChecked = "";
			String nameChecked = "";
			final String CHECKED = "checked";
			
			if (currentSearchOption.equals("BY_NAME")) nameChecked = CHECKED;
			else emailChecked = CHECKED;
		
%>

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
							+ '<td>'
							+ '<form role="form" method="POST" style="margin: 0 0 0 0">'
							+ '<input type="hidden" id="" name="MEMBER_SEQ" value="'+ item.MEMBER_SEQ +'">'
								+ '<button type="submit" class="btn btn-primary"  formaction="'+ '<c:url value="/member/edit" />'+'">modify</button>'
								+ '<button type="submit" class="btn btn-primary"  formaction="'+ '<c:url value="/member/delete" />'+'">delete</button></td>'
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
							<input type="radio" id="SEARCH_OPTION_BY_EMAIL" name="SEARCH_OPTION" value="BY_EMAIL" <% out.write(emailChecked); %> >
							<label for="SEARCH_OPTION_BY_EMAIL">EMAIL</label>
							<input type="radio" id="SEARCH_OPTION_BY_NAME" name="SEARCH_OPTION" value="BY_NAME"<% out.write(nameChecked); %> >
							<label for="SEARCH_OPTION_BY_NAME">NAME</label>
						</div>
						<div class="10u 12u$(small)">
							<input type="text" id="" name="SEARCH_KEYWORD" value="${paramMap.SEARCH_KEYWORD}"
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