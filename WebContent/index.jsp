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
	
<style>
    .cc-img {
        margin: 0 auto;
    }



</style>
<body>
<jsp:include page="header.jsp"></jsp:include>
		 <div class="container">
			
			<sql:setDataSource driver="com.mysql.jdbc.Driver"
							   url="jdbc:mysql://localhost:3306/butter"
							   user="root"
							   password="root"
							   var="con"/>
			
			<c:if test="${param.name==null}">
	   			<sql:query var="rs" dataSource="${con}">
					select * from cakes
				</sql:query>
			</c:if>
			
			<c:if test="${param.name!=null}">
				<sql:query var="rs" dataSource="${con}">
					select * from cakes where name like '%' ? '%'
				<sql:param>${param.name}</sql:param>
				</sql:query>
   			</c:if>
   			
			<div class="container">
				<div class="row">
					<c:forEach items="${rs.rows}" var="row">
						<div class=m-2  >	
							<div class="card" style="width: 20rem; margin-top:10px; background-color:#FADCD9;">
								<center><img src="Image?id=${row.cake_id}" style="height:250px; width:auto;" class="card-img-top mt-2" alt="..."></center>
								<div class="card-body">
									<h5 class="card-title">${row.name}</h5>
									<p class="card-text">Description:${row.description}</p>
								</div>
								<ul class="list-group list-group-flush">
									<li class="list-group-item" style="background-color:#FADCD9;">RS. ${row.price}</li>
								</ul>
								<div class="card-body">
					 				<form action="AddToCart" method="post">
					 				<input type="hidden" name="name" value="${row.name}">
									<input type="hidden" name="id" value="${row.cake_id}">
									<input type="hidden" name="price" value="${row.price}">
									<div class="form-group">
									<input class="" type="number" name="qty" value="1" min="1" max="5">
									</div>
									<div class="form-group">
									<input type="submit" class="btn btn-block btn-primary" value="Add To Cart"/>
									</div>
									</form>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>	
			</div>
		


</body>
</html>