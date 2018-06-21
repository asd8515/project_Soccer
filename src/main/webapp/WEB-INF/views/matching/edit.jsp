<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<!-- Main -->
		<article id="main"> <header>
		<h2>Register Matching</h2>
		<p>Aliquam ut ex ut interdum donec amet imperdiet eleifend</p>
		</header> <section class="wrapper style5">
		<div class="inner">

			<section>
			<h4>Matching Board</h4>
			<form method="post" action="<c:url value='/matching/insert' />">
				<div class="row uniform">
					<div class="6u 12u$(xsmall)">
						<input type="text" name="NAME" id="demo-name" value="${resultMap.NAME}"
							placeholder="Name" readonly/>
					</div>
					<div class="6u$ 12u$(xsmall)">
						<input type="text" name="EMAIL" id="demo-email" value="${resultMap.EMAIL}"
							placeholder="Email" readonly/>
					</div>

					<div class="12u$">
						<div class="select-wrapper">
							<select name="demo-category" id="demo-category">
								<option>- Area -</option>
								<option name="ID_REGION" value="UUID-R001">성북/동대문/종로</option>
								<option name="ID_REGION" value="UUID-R002">은평/서대문/마포</option>
								<option name="ID_REGION" value="UUID-R003">용산/중구</option>
								<option name="ID_REGION" value="UUID-R004">성동/광진/강동</option>
								<option name="ID_REGION" value="UUID-R005">송파/서초/강남</option>
								<option name="ID_REGION" value="UUID-R006">금천/관악/동작</option>
								<option name="ID_REGION" value="UUID-R007">도봉/노원/강북/중랑</option>
							</select>
						</div>
					</div>
					
					<div class="12u$">
						<div class="select-wrapper">
							<select name="demo-category" id="demo-category">
								<option>- Level -</option>
								<option name="ID_LEVEL" value="UUID-L001">Bronze</option>
								<option name="ID_LEVEL" value="UUID-L002">Silver</option>
								<option name="ID_LEVEL" value="UUID-L003">Gold</option>
								<option name="ID_LEVEL" value="UUID-L004">Platinum</option>
								<option name="ID_LEVEL" value="UUID-L005">Diamond</option>
							</select>
						</div>
					</div>

					<div class="12u$">
						<textarea name="MESSAGE" id="demo-message" value="${resultMap.MESSAGE}"
							placeholder="Enter your message" rows="6"></textarea>
					</div>
					<div class="12u$">
						<ul class="actions">
							<li><input type="submit" value="Register Matching"
								class="special" /></li>
							<li><input type="reset" value="Reset" /></li>
						</ul>
					</div>
				</div>
			</form>
			</section>

			<section> </section>
		</div>
		</section> </article>