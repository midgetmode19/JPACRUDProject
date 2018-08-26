<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Doggo</title>
</head>
<body>
	<div>
		<h5>${doggo.name}
			<p>${doggo.breed}</p>
			<p>${doggo.age}</p>
			<p>${doggo.nickname }</p>
		</h5>
	</div>

	<br>
	<form:form action="updateDoggo.do" method="POST">
		<a class="btn btn-primary btn-std" href="updateDoggo.jsp"
			role="button">Update a Dog's Information</a>
	</form:form>
	<br>
<%-- 	<form:form action="deleteDoggo.do" method="POST" value="${doggo.id }">
		<a class="btn btn-primary btn-std"
			role="button">Delete this Dog from the list</a>
	</form:form> --%>
	<form action="deleteDoggo.do" method="POST">
				Remove this dog from the list:<input type="number"
					name="id" value="${doggo.id}">
				<button type="submit" class="btn btn-primary btn-sm" value="Submit">Delete
					This Dog</button>
</body>
</html>