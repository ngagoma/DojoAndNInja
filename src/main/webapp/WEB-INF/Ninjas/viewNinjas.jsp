
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>View Ninjas</title>
    <meta charset="ISO-8859-1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
	<div class="container border">
		<h1>All Ninja and Locations</h1>
		<table class="table table-striped table-hover container">
			   <thead>
			    <tr>
			      <th scope="col">First Name</th>
			      <th scope="col">Last Name</th>
			      <th scope="col">State</th>
			      <th scope="col">Location</th>
			 </tr>
			  </thead>
				  
			 <tbody>
				  <c:forEach items="${allNinjas}" var="item">
				    <tr>
				      <td><c:out value="${item.firstName}"/></td>
				      <td><c:out value="${item.lastName}"/></td>
				      <td><c:out value="${item.age}"/></td>
				      <td><c:out value="${item.getDojo().getName()}"/></td>
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
			<a href="/dojos/view">View List Of Dojos</a>
		</p>
	</div>
</body>
</head>