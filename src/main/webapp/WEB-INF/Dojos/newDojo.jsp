<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<link rel="stylesheet" href="/css/style.css"/>
	<title>New Dojo</title>
</head>
<body>

	
	<div class="container">
		
		<h1>New Dojo</h1>
		<div><c:out value="${message}"></c:out></div>
		<form:form method="POST" action="/dojos/new" modelAttribute="dojo">
					<p class="form-group">
						<form:label path="name">Dojo Name:</form:label>
						<form:errors path="name"/>
						<form:input type="text" path="name"/>
					</p >
				<button class="btn-success btn_position">Create A Dojo</button>
			</form:form>
		<hr>
		<p> 
			<a href="/ninjas/new">Add New Ninja</a>
		</p>
		<hr>
		<p>
			<a href="/ninjas/view">View List Of Ninjas</a> | 
			<a href="/dojos/view">View List Of Dojos</a>
		</p>
	</div>

</body>
</html>