<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


		<!-- Main -->
		<article id="main"> <header>
		<h2>MEMBER EDIT</h2>
		<p>you can change member information :)</p>
		</header> <section class="wrapper style5">
		<div class="inner">

			<section>
			<h4>Form</h4>
			<form role="form" method="POST" action="<c:url value='/member/merge' />">
				<div class="row uniform">
					<input type="hidden" id="" name="MEMBER_SEQ" value='${resultMap.MEMBER_SEQ}'>
					<div class="6u$ 12u$(xsmall)">
						<label>Email</label>
						<input type="email" name="EMAIL" id="" value='${resultMap.EMAIL}' />
					</div>
					<div class="6u 12u$(xsmall)">
						<label>Name</label>
						<input type="text" name="NAME" id="" value='${resultMap.NAME}' />
					</div>
					<div class="6u 12u$(xsmall)">
						<label>Phone</label>
						<input type="text" name="PHONE" id="" value='${resultMap.PHONE}' />
					</div>
					<div class="6u 12u$(xsmall)">
						<label>Password</label>
						<input type="password" name="PASSWORD" id="INPUT_PASSWORD" value='${resultMap.PASSWORD}' />
					</div>
					<div class="6u 12u$(xsmall)">
						<label>Password-check</label>
						<input type="password" id="INPUT_PASSWORD_CHECK" value='${resultMap.PASSWORD}' />
					</div>
					<div class ="12u 12u$(small)">
						<label>Authority</label>
						<div class="6u 12u$(small)">
							<input type="radio" id="AUTHORITY_USER" name="ID_AUTHORITY" value="UUID-A001" checked>
							<label for="AUTHORITY_USER">USER</label>
						</div>
						<div class="6u 12u$(small)">
							<input type="radio" id="AUTHORITY_MANAGER" name="ID_AUTHORITY" value="UUID-A002">
							<label for="AUTHORITY_MANAGER">MANAGER</label>
						</div>
					</div>
					
					<div class="12u$">
						<ul class="actions">
							<li><input type="submit" value="UPDATE" class="special" /></li>
							<li><input type="reset" value="RESET" /></li>
						</ul>
					</div>
				</div>
			</form>
			</section>

			<section> </section>
		</div>
		</section> </article>
