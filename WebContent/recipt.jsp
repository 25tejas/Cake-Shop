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

		 <div class="container">
			<jsp:include page="header.jsp"></jsp:include>
			<sql:setDataSource driver="com.mysql.jdbc.Driver"
							   url="jdbc:mysql://localhost:3306/butter"
							   user="root"
							   password="root"
							   var="con"/>
			

				<sql:query var="rs" dataSource="${con}">
					select * from ordered inner join cart on ordered.cart_id=cart.cart_id where ordered.cart_id=?
				<sql:param>${param.oid}</sql:param>
				</sql:query>
   			
			<div class="container">
			
			<center>
				<h1>Recipt</h1>
					<c:forEach items="${rs.rows}" var="row">
						<div class=m-2  >	
							<div class="card" style="width: 20rem; margin-top:10px; background-color: #FADCD9;">
								
								<div class="card-body">
									<h5 class="card-title"> Ordered id: ${row.order_id}</h5>

								
								<ul class="list-group list-group-flush">
									<li class="list-group-item" style="background-color: #FADCD9 ;">Name Of Cake. ${row.name}</li>
									<li class="list-group-item" style="background-color: #FADCD9 ;">Price. ${row.price}</li>
									<li class="list-group-item" style="background-color: #FADCD9 ;">Payment Type : card</li>
									<li class="list-group-item" style="background-color: #FADCD9 ;">card no. ${row.cardno}</li>
									<li class="list-group-item" style="background-color: #FADCD9 ;">User ID. ${row.uid}</li>
								</ul>
								</div>
							</div>
						</div>
					</c:forEach>
					</center>
				</div>
		
			</div>
		


</body>
</html>