<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Data</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
	</head>
<body>
		 
			
			<sql:setDataSource driver="com.mysql.jdbc.Driver"
							   url="jdbc:mysql://localhost:3306/butter"
							   user="root"
							   password="root"
							   var="con"/>
			
   		<div class="container">
   		<a href="AddCake.jsp" class="btn btn-info">Add Cake</a>
   		<a href="index.jsp" class=" btn btn-info"> Logout</a>
   		<sql:query var="rs" dataSource="${con}">
			select * from ordered inner join cart on ordered.cart_id=cart.cart_id order by ordered.order_id desc
		</sql:query>
   		
			
			
				<div class="m-2">
				
				<table class="table table-hover">
					<tr>
						<th>Order ID</th>
						<th>Cart ID</th>
						<th>Name</th>
						<th>Price</th>
						<th>Quantitiy</th>
					</tr>
					<c:forEach items="${rs.rows}" var="row">
						<tr>
							<td>${row.order_id}</td>
							<td>${row.cart_id}</td>
							<td>${row.name}</td>
							<td>${row.price}</td>
							<td>${row.qty}</td>
						</tr>
					</c:forEach>
				</table>
				</div>
			
   		</div>
   		
</body>
</html>