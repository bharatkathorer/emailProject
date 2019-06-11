<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>CrudOperation</title>
<meta charset="utf-8">
<%@include file="senable.jsp"%>
<%@include file="allscripts.jsp"%>
</head>
<body onload="Pagination(${0})">

	<%@include file="navigation.jsp"%>
	<div class="container">
		<br />
		<h2 class="text-primary text-uppercase text-center">Crud
			Operations</h2>

		<!-- Button to Open the Modal -->


		<h2 class="text-danger">All Records</h2>

		<ul class="pagination pagination-sm">


			<input type="search" id="searchbyid" width="1" height="1"
				onkeyup="SByPagination()">
			<li class="page-item"><a class="page-link" href="#"> Search
					by <select id="Serchby">
						<option>Name</option>
						<option>Gmail</option>
				</select>
			</a></li>
			<li class="page-item "><a class="page-link btn-warning" data-toggle="modal"
				data-target="#insertdata">Add Record</a></li>


		</ul>

		<br />
		<div id="record"></div>
	</div>
	<form name="insert">
		<%@include file="models.jsp"%>
	</form>
<form action="uploadFile" method="post" enctype="multipart/form-data">
<input type="file" name="file" id="fileToUpload">
<input type="submit" value="Upload Image" name="submit">
</form>
</body>
</html>
