<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Register New Student</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>Register New Customer</h2>
	</div>
	<hr/>
	<div class="container">
	<c:choose>
		<c:when test="${customer.firstName == null}">
			<form action="saveCustomer" method="post">
				<div class="form-group">
					<input class="form-control" type="hidden" name="id" value="${customer.id}">
				</div>
				<div class="form-group">
					<label>First name: </label><input class="form-control" type="text" name="firstName" value="${customer.firstName}">
				</div>
				<div class="form-group">
					<label>Last Name: </label><input class="form-control" type="text" name="lastName" value="${customer.lastName}">
				</div>
				<div class="form-group">
					<label>Email: </label><input class="form-control" type="text" name="email" value="${customer.email}">
				</div>
				<button class="btn btn-default" type="submit">Submit</button>
			</form>
		</c:when>
		<c:otherwise>
			<form 	action="../saveCustomer" method="post">
				<div class="form-group">
					<input class="form-control" type="hidden" name="id" value="${customer.id}">
				</div>
				<div class="form-group">
					<label>First name: </label><input class="form-control" type="text" name="firstName" value="${customer.firstName}">
				</div>
				<div class="form-group">
					<label>Last Name: </label><input class="form-control" type="text" name="lastName" value="${customer.lastName}">
				</div>
				<div class="form-group">
					<label>Email: </label><input class="form-control" type="text" name="email" value="${customer.email}">
				</div>
				<button class="btn btn-default" type="submit">Submit</button>
			</form>
		</c:otherwise>
	</c:choose> 
	</div>
</body>
</html>