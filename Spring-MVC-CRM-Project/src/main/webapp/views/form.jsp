<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form for Implementers</title>
<link type=text/css rel="stylesheet" href="./css/style.css">
<link type=text/css rel="stylesheet" href="./css/add-customer-style.css">
</head>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h1>
				<b>Welcome to Implementers registration page</b>
			</h1>
		</div>
	</div>

	<div id="container">
		<form:form action="registerCustomer" modelAttribute="customer">
			<table>
				<form:hidden path="id" />	
						
				<%-- <tr>
					<th>Customer ID</th>
					<td><form:input type="text" path="id" /></td>
				</tr>  --%>
				<tr>
					<th>Name</th>
					<td><form:input type="text" path="name" /></td>
				</tr>
				<tr>
					<th>Age</th>
					<td><form:input type="text" path="age" /></td>
				</tr>
				<tr>
					<th>Gender</th>
					<td><form:input type="text" path="gender" /></td>
				</tr>
				<tr>
					<th>City</th>
					<td><form:input type="text" path="city" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Register" name="submit" /></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>