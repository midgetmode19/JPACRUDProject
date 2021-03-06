<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>Doggie Daycare</title>
</head>
<body>
	<div class="mx-auto" align="center">
		<img alt="Hello This is Dog meme"
			src="https://i.kym-cdn.com/entries/icons/original/000/007/447/yesthisisdog.jpg" width="400">
		<form:form action="getDoggo.do" method="GET">
			<br>
			<input type="text" name="id" placeholder="Search by ID" required />
			<br>
			<button type="submit" class="btn btn-primary btn-std"
				value="Find Doggo">Find Doggo</button>
		</form:form>
		<br>
		<form:form action="getDoggoByName.do" method="GET">
			<input type="text" name="name" placeholder="Search by name" required />
			<br>
			<button type="submit" class="btn btn-primary btn-std"
				value="Find Doggo">Find Doggo</button>
		</form:form>
		<br>
		<form:form action="listDoggos.do" method="GET">
			<button type="submit" class="btn btn-primary btn-std"
				value="View All dogs">View All Dogs</button>
		</form:form>
		<br>
		<form:form action="addDoggo.do" method="POST">
			<a class="btn btn-primary btn-std" href="addDoggo.jsp" role="button">Add
				a New Dog</a>
		</form:form>
		<br>
	</div>
</body>
</html>