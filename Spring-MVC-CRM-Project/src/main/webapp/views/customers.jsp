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
		<input id="register" type="button" value="Register"
			onclick="window.location.href='/crm/showForm'; return false"
			class="add-button" />
		<div id="content">
			<table border="1">
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Age</th>
					<th>Gender</th>
					<th>City</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
				<c:forEach var="c" items="${customer}">					
					<c:url var="updateLink" value="/updateForm">
					<c:param name="customerId" value="${c.id}"></c:param>
					</c:url>				
					<c:url var="deleteLink" value="/delete">
					<c:param name="customerId" value="${c.id}"></c:param>
					</c:url>
					<tr>
						<td>${c.id}</td>
						<td>${c.name}</td>
						<td>${c.age}</td>
						<td>${c.gender}</td>
						<td>${c.city}</td>
						<td><a href="${updateLink}">Update Data</a></td>
						<td><a href="${deleteLink}">Delete Data</a></td>	
											
						<!-- <td><input id="update" type="button" value="Update"
							onclick="window.location.href='/crm/update'; return false"
							class="add-button" /></td>
						<td><input id="delete" type="button" value="Delete"
							onclick="window.location.href='/crm/showForm'; return false"
							class="add-button" /></td> -->
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>