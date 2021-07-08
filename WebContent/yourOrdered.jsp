<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
		 <div class="container">
			
			<sql:setDataSource driver="com.mysql.jdbc.Driver"
							   url="jdbc:mysql://localhost:3306/butter"
							   user="root"
							   password="root"
							   var="con"/>
			
   	<sql:query var="rs" dataSource="${con}">
		select * from cart where status='ordered' AND uid=?
		<sql:param>${m.uid}</sql:param>
	</sql:query>
	
	<div class="container">
				<div class="row">	
	<c:forEach items="${rs.rows}" var="cart">
		<sql:query var="rs2" dataSource="${con}">
			select * from cakes where cake_id=?
			<sql:param>${cart.cake_id}</sql:param>
		</sql:query>
   		
			
					<c:forEach items="${rs2.rows}" var="row">
						<div class=m-2>	
							<div class="card" style="width: 20rem; margin-top:10px;background-color: #FADCD9;">
								<center><img src="Image?id=${row.cake_id}" style="height:250px; width:auto;" class="card-img-top" alt="..."></center>
								<div class="card-body">
									<h5 class="card-title">${row.name}</h5>
									<p class="card-text">${row.description}</p>
								</div>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">Quantity: ${cart.qty}</li>
									<li class="list-group-item">RS.${row.price*cart.qty}</li>
								</ul>
							</div>
						</div>
					</c:forEach>
					</c:forEach>
				</div>
				</div>
				
				
			</div>
		
</body>
</html>