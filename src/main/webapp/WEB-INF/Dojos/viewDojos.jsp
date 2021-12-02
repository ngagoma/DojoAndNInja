<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link rel="stylesheet" href="/css/style.css"/>
<title>Dojo Page</title>
</head>
<body>

<div class="container border">
		<div class="jumbotron">
		  <h1 class="display-4">List Of Dojos</h1>
	   <hr class="my-4">
     	  <a class="btn btn-primary btn-sm" href="/" role="button">Dashboard</a>
		</div>
		<table class="table table-striped table-hover container">
			   <thead>
			    <tr>
			      <th scope="col">Dojo Name</th>
 			    </tr>
			  </thead>
			
				  
			 <tbody>
				  <c:forEach items="${allDojo}" var="item">
				    <tr>
				      <td><a href="/dojos/${item.id}">
				      		<c:out value="${item.name}"/>
				      	</a>
				      </td>
				    </tr>
				  </c:forEach>
			</tbody>
		</table>
		<hr>
		<p>
			<a href="/dojos/new">Add New Dojo</a> | 
			<a href="/ninjas/new">Add New Ninja</a>
		</p>
		<hr>
		<p>
			<a href="/ninjas/view">View List Of Ninjas</a>
		</p>
	</div>

</body>
</html>