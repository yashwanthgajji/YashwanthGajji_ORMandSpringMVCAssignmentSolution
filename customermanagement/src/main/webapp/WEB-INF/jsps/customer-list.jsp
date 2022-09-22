<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<title>All Books</title>
</head>
<body>
	<div class="container">
		<h1>Customer Relationship Management</h1>
	</div>
	<hr/>
	<div class="container">
		<h2>All Customers</h2>
	</div>
	<hr/>
	<div class="container">
		<a href="registerCustomer"><button class="btn btn-primary">Add Customer</button></a>
	</div>
	<div class="container">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>S.no</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="customer" items="${customers}" varStatus="c">
					<tr>
						<td>${c.count}</td>
						<td>${customer.firstName}</td>
						<td>${customer.lastName}</td>
						<td>${customer.email}</td>
						<td>
							<a href="updateCustomer/${customer.id}">
								<button class="btn btn-primary">
									Update
								</button>
							</a>
							<a href="deleteCustomer/${customer.id}">
								<button class="btn btn-danger" onClick="if (!(confirm('Are you sure you want to delete?'))) return false">
									Delete
								</button>
							</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>