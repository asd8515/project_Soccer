<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
	Spectral by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Member List</title>

</head>
<body>
		<!-- Main -->
		<article id="main"> <header>
		<h2>MAtching Page</h2>
		<p>Anytime, Anywhere, Anyone can match.</p>
		</header> <section class="wrapper style5">
		<div class="inner"></div>
		<section>
		<div class="select-wrapper">
			<select name="demo-category" id="demo-category">
				<option value="">- Area -</option>
				<option value="1">도봉/노원/강북/중랑</option>
				<option value="1">성북/동대문/종로</option>
				<option value="1">은평/서대문/마포</option>
				<option value="1">용산/중구</option>
				<option value="1">성동/광진/강동</option>
				<option value="1">송파/서초/강남</option>
				<option value="1">금천/관악/동작</option>
			</select>
		</div>
		</section> <section>
		<h4>Level</h4>
		<form method="post" action="#">
			<div class="row uniform">

				<div class="12u$">
					<div class="select-wrapper"></div>
				</div>
				<div class="4u 12u$(small)">
					<input type="radio" id="demo-priority-low" name="demo-priority"
						checked> <label for="demo-priority-low">Hign</label>
				</div>
				<div class="4u 12u$(small)">
					<input type="radio" id="demo-priority-normal" name="demo-priority">
					<label for="demo-priority-normal">Middle</label>
				</div>
				<div class="4u$ 12u$(small)">
					<input type="radio" id="demo-priority-high" name="demo-priority">
					<label for="demo-priority-high">Low</label>
				</div>


			</div>
		</form>
		</section> </section> </article>

		<section> </section>

		<section> </section>

		<section>
		<h4>Table</h4>
		<h5>Default</h5>
		<div class="table-wrapper">
			<table>
				<thead>
					<tr>
						<th>Name</th>
						<th>Description</th>
						<th>Price</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Item One</td>
						<td>Ante turpis integer aliquet porttitor.</td>
						<td>29.99</td>
					</tr>
					<tr>
						<td>Item Two</td>
						<td>Vis ac commodo adipiscing arcu aliquet.</td>
						<td>19.99</td>
					</tr>
					<tr>
						<td>Item Three</td>
						<td>Morbi faucibus arcu accumsan lorem.</td>
						<td>29.99</td>
					</tr>
					<tr>
						<td>Item Four</td>
						<td>Vitae integer tempus condimentum.</td>
						<td>19.99</td>
					</tr>
					<tr>
						<td>Item Five</td>
						<td>Ante turpis integer aliquet porttitor.</td>
						<td>29.99</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2"></td>
						<td>100.00</td>
					</tr>
				</tfoot>
			</table>
		</div>

		<h5>Alternate</h5>
		<div class="table-wrapper">
			<table class="alt">
				<thead>
					<tr>
						<th>Name</th>
						<th>Description</th>
						<th>Price</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Item One</td>
						<td>Ante turpis integer aliquet porttitor.</td>
						<td>29.99</td>
					</tr>
					<tr>
						<td>Item Two</td>
						<td>Vis ac commodo adipiscing arcu aliquet.</td>
						<td>19.99</td>
					</tr>
					<tr>
						<td>Item Three</td>
						<td>Morbi faucibus arcu accumsan lorem.</td>
						<td>29.99</td>
					</tr>
					<tr>
						<td>Item Four</td>
						<td>Vitae integer tempus condimentum.</td>
						<td>19.99</td>
					</tr>
					<tr>
						<td>Item Five</td>
						<td>Ante turpis integer aliquet porttitor.</td>
						<td>29.99</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2"></td>
						<td>100.00</td>
					</tr>
				</tfoot>
			</table>
		</div>
		</section>

		<section> </section>


</body>
</html>