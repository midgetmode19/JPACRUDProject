<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>Update Dog</title>
</head>
<body>
	<form action="updateDoggo.do" method="POST">
	<input type="hidden" name="id" value="${doggo.id}">
		<input type="text" name="name" value="${doggo.name }" />
		<input type="text" name="breed" placeholder="Breed" />
		<input type="text" name="age" placeholder="Age" />
		<input type="number" name="weightLbs" placeholder="Weight" />
		<select class="inlineFormCustomSelect" name="Gender">
			<option selected>Gender</option>
			<option value="male">Male</option>
			<option value="female">Female</option>
			<option value="neutered male">Neutered Male</option>
			<option value="spayed female">Spayed Female</option>
		</select>
		<input type="text" name="nickname" placeholder="Nickname">
		<input type="url" name="photoLink" placeholder="Photo Link" />

		<button type="submit" class="btn btn-primary btn-std" value="Submit">Submit</button>


	</form>
</body>
</html>