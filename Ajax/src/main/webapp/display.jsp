<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="senable.jsp"%>
<%@include file="allscripts.jsp"%>
</head>
<body>

	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th>S.N</th>
				<th>Name</th>
				<th>Password</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:set var="i" value="1"></c:set>
			<c:if test="${page.getCurrentpage()!=0}">
				<c:set var="i" value="${page.getCurrentpage()*5+1}"></c:set>
			</c:if>
			<c:forEach items="${um}" var="u">
				<tr>
					<td>${i}</td>
					<td>${u.getName()}</td>
					<td>${u.getPassword()}</td>
					<td>${u.getEmail()}</td>
					<td>${u.getPhone()}</td>
					<td>
						<button type="button" class="btn btn-outline-success btn-sm"
							data-toggle="modal" data-target="#update"
							onclick="getbyId(${u.getId()})">Edit</button>
					</td>
					<td><button type="button"
							class="btn btn-outline-danger btn-sm"
							onclick="Delete(${u.getId()})">Delete</button></td>
				</tr>
				<c:set var="i" value="${i+1}"></c:set>


			</c:forEach>
		</tbody>
	</table>
	<c:set value="1" var="in"></c:set>

	<c:set value="${page.getCurrentpage()}" var="cp"></c:set>
	<input type="hidden" value="${page.getCurrentpage()}" id="page">
	<input type="hidden" value="${page.getTotalpage()-1}" id="tot">
	
	<c:if test="${cp==page.getTotalpage()-1}">
		<c:set value="0" var="cp"></c:set>
		<c:set value="0" var="in"></c:set>
	</c:if>

	<c:set value="${page.getCurrentpage()}" var="de"></c:set>
	<c:if test="${page.getCurrentpage()==0}">
		<c:set value="${page.getTotalpage()}" var="de"></c:set>

	</c:if>

	<ul class="pagination pagination-sm">

		<li class="page-item"><a class="page-link" href="#"
			onclick="Pagination(${de-1})">Previous</a></li>

		<li class="page-item"><a class="page-link" href="#"
			onclick="Pagination(${in+cp})">Next</a></li>
		<li class="page-item"><a class="page-link" href="#">Page
				: ${page.getCurrentpage()+1}</a></li>
		<input type="search" id="no" width="1" height="1">
		<li class="page-item"><a class="page-link" href="#"
			onclick="SPagination()">Search by page</a></li>



	</ul>
	<c:if test="${page.getCurrentpage()>=page.getTotalpage()}">
		<h2 class="text-primary text-uppercase text-center">404 Error
			Page Not Found</h2>
		<br />
		<h2 class="text-primary text-uppercase text-center">Total Pages
			Is : ${page.getTotalpage()}</h2>
	</c:if>


</body>
</html>