<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CRM</title>
<link type=text/css rel="stylesheet" href="./css/style.css">
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h1>Customer relationship management application</h1>
		</div>
	</div>
	<div id="container">
		<c:url var="updateLink" value="/update">
			<c:param name="customerId" value="${customer.id}"></c:param>
		</c:url>
		<a href="${updateLink}">Update Data</a>
		<!-- <input type="button" value="update"
			onclick="window.location.href='/crm/update'; return false"
			class="add-button" /> -->
		<div id="content">
			<table border="1">
				<c:url var="deleteLink" value="/delete">
					<c:param name="customerId" value="${customer.id}"></c:param>
				</c:url>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Age</th>
					<th>Gender</th>
					<th>City</th>
					<th>Delete</th>
				</tr>
				<tr>
					<td>${customer.id}</td>
					<td>${customer.name}</td>
					<td>${customer.age}</td>
					<td>${customer.gender}</td>
					<td>${customer.city}</td>
					<td><a href="${deleteLink}">Delete Data</a></td>
					<!-- <td><input type="button" value="Delete"
						onclick="window.location.href='/crm/delete'; return false"
						class="add-button" /></td> -->
				</tr>
			</table>
		</div>
	</div>
</body>
</html>