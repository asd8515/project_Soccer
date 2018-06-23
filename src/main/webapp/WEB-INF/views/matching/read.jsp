<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import = "java.util.Map" %>

<!-- Main -->
<article id="main">
	<header>
		<h2>Matching Details</h2>
		<p>Details about the matching that you may concern.</p>
	</header>
	<section class="wrapper style5">
		<div class="inner">

			<section>
				<h4>Matching Board</h4>
					<input type="hidden" name="GAME_SEQ" value="${resultMap.GAME_SEQ}" />
					<input type="hidden" name="MEMBER_SEQ" value="${resultMap.MEMBER_SEQ}" />
					<div class="row uniform">
						<div class="6u 12u$(xsmall)">
							<input type="text" name="NAME" id="demo-name" value="${resultMap.NAME}" placeholder="Name" disabled />
						</div>
						<div class="6u$ 12u$(xsmall)">
							<input type="text" name="EMAIL" id="demo-email" value="${resultMap.EMAIL}" placeholder="Email" disabled />
						</div>

						<div class="12u$">
							<div class="select-wrapper">
								<select name="ID_REGION" id="demo-category" disabled  >
									<option>- Area -</option>
									<%
										//DB에서 가져온 ID_REGION을 가져옴
										String ID_REGION = (String)((Map)request.getAttribute("resultMap")).get("ID_REGION");
									%>
									<option value="UUID-R001" <% if(ID_REGION.equals("UUID-R001")) out.write("selected");  %> >성북/동대문/종로</option>
									<option value="UUID-R002" <% if(ID_REGION.equals("UUID-R002")) out.write("selected");  %> >은평/서대문/마포</option>
									<option value="UUID-R003" <% if(ID_REGION.equals("UUID-R003")) out.write("selected");  %> >용산/중구</option>
									<option value="UUID-R004" <% if(ID_REGION.equals("UUID-R004")) out.write("selected");  %> >성동/광진/강동</option>
									<option value="UUID-R005" <% if(ID_REGION.equals("UUID-R005")) out.write("selected");  %> >송파/서초/강남</option>
									<option value="UUID-R006" <% if(ID_REGION.equals("UUID-R006")) out.write("selected");  %> >금천/관악/동작</option>
									<option value="UUID-R007" <% if(ID_REGION.equals("UUID-R007")) out.write("selected");  %> >도봉/노원/강북/중랑</option>
								</select>
							</div>
						</div>
						<div class="12u$">
							<div class="select-wrapper">
								<select name="ID_LEVEL" id="demo-category" disabled>
									<option>- Level -</option>
									<%
										//DB에서 가져온 ID_REGION을 가져옴
										String ID_LEVEL = (String)((Map)request.getAttribute("resultMap")).get("ID_LEVEL");
									%>
									<option value="UUID-L001" <% if(ID_LEVEL.equals("UUID-L001")) out.write("selected");  %> >Bronze</option>
									<option value="UUID-L002" <% if(ID_LEVEL.equals("UUID-L002")) out.write("selected");  %> >Silver</option>
									<option value="UUID-L003" <% if(ID_LEVEL.equals("UUID-L003")) out.write("selected");  %> >Gold</option>
									<option value="UUID-L004" <% if(ID_LEVEL.equals("UUID-L004")) out.write("selected");  %> >Platinum</option>
									<option value="UUID-L005" <% if(ID_LEVEL.equals("UUID-L005")) out.write("selected");  %> >Diamond</option>
								</select>
							</div>
						</div>

						<div class="12u$">
							<div class="select-wrapper">
								<select name="MATCHED" id="demo-category"  disabled>
									<%
										//DB에서 가져온 ID_REGION을 가져옴
										String MATCHED = (String)((Map)request.getAttribute("resultMap")).get("MATCHED");
									%>								
									<option>- Status -</option>
									<option value="UNMATCHED" <% if(MATCHED.equals("UNMATCHED")) out.write("selected");  %> >UNMATCHED</option>
									<option value="MATCHED" <% if(MATCHED.equals("MATCHED")) out.write("selected");  %> >MATCHED</option>
								</select>
							</div>
						</div>

						<div class="12u$">
							<textarea name="MESSAGE" id="demo-message" placeholder="Enter your message" rows="6"  disabled>${resultMap.MESSAGE}</textarea>
						</div>
						<div class="12u$">
						</div>
					</div>
			</section>

			<section></section>
		</div>
	</section>
</article>