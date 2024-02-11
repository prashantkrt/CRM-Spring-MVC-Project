<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Relation Application</title>
<link type=text/css rel="stylesheet" href="./css/style.css">
</head>
<body >
	
	<div id="wrapper">
		<div id="header">
			<h1>Customer relationship management application</h1>			
		</div>
	</div>
	<div id="container">
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
				<tr>
				<td>${c.id}</td>			
				<td>${c.name}</td>			
				<td>${c.age}</td>			
				<td>${c.gender}</td>			
				<td>${c.city}</td>
				<td><input id="update" class = "add-button" type="submit" name ="update" value="update"/></td>		
				<td><input  id="delete"class = "add-button" type="submit" name ="delete" value="delete"/></td>		
				</tr>
				</c:forEach>
			</table>
		</div>
	
	</div>
</body>
</html>