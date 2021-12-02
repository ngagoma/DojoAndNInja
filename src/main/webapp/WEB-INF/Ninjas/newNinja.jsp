<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<title>New Ninja</title>
	<link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
	
	<div class="container border">
		<h1>New Ninja</h1>
		<h3>${message}</h3>
		<form:form method="POST" action="/ninjas/new" modelAttribute="ninja">
			 <form:select path="dojo">
				  <div class="form-group ">
				    <form:option value = "">Select a Location</form:option>
				    <c:forEach items="${allLocations}" var="location">
	                	<form:option value = "${location.id}">${location.name}</form:option>
	                </c:forEach>
		  		  </div>
	  		 </form:select> 
	  		 <div class="form-group">
			    <form:label path="firstName">First Name:</form:label>
				<form:errors path="firstName"/>
				<form:input type="text" path="firstName"/>
			 </div>
			 <div class="form-group">
			    <form:label path="lastName">Last Name:</form:label>
				<form:errors path="lastName"/>
				<form:input type="text" path="lastName"/>
			 </div>
			 <div class="form-group">
			    <form:label path="age">Age:</form:label>
				<form:errors path="age"/>
				<form:input type="number" path="age"/>
			 </div>
			 <button class="btn_position">Create A Ninja</button>
  		</form:form>
  		
  		<p class="center"><a href="/">View Dashboard</a></p>
  	</div>
	
	
	

</body>
</html>