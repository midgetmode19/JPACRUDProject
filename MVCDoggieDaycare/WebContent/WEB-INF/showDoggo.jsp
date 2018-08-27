<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Doggo</title>
</head>
<body>
	<div>
		<h5>${doggo.name}
			<p>ID: ${doggo.id }</p>
			<p>${doggo.gender}</p>
			<p>Breed: ${doggo.breed}</p>
			<p>Age: ${doggo.age}</p>
			<p>Weight: ${doggo.weightLbs }</p>
			<p>Nickname: ${doggo.nickname }</p>
		</h5>
	</div>

	<br>
	<form action="updateDoggo.do" method="POST">
	<h4>Update your Dog's Informtion</h4>
		<input type="hidden" name="id" value="${doggo.id}">
		<p>
			Name: <input type="text" name="name" value="${doggo.name }" />
		</p>
		<p>
			Breed: <input type="text" name="breed" value="${doggo.breed }" />
		</p>
		<p>
			Age (please state whether years or months): <input type="text"
				name="age" value="${doggo.age }" />
		</p>
		<p>
			Weight in pounds: <input type="number" name="weightLbs"
				value="${doggo.weightLbs }" />
		</p>
		<select class="inlineFormCustomSelect" name="Gender">
			<option selected value="${doggo.gender }">${doggo.gender }</option>
			<option value="male">male</option>
			<option value="female">female</option>
			<option value="neutered male">neutered male</option>
			<option value="spayed female">spayed female</option>
		</select>
		<p>
			Does your dog have a nickname? <input type="text" name="nickname"
				value="${doggo.nickname }">
		</p>
		<p>
			Add a link to a photo of your dog! <input type="url" name="photoLink"
				value="${doggo.photoLink }" />
		</p>
		<button type="submit" class="btn btn-primary btn-std" value="Submit">Submit</button>

	</form>
	<br>
	<form action="deleteDoggo.do" method="POST">
		Remove this dog from the list:<input type="number" name="id"
			value="${doggo.id}">
		<button type="submit" class="btn btn-primary btn-sm" value="Submit">Delete
			This Dog</button>

		<br> <a class="btn btn-primary btn-std" href="index.do"
			role="button">Return to Main Menu</a>
</body>
</html>