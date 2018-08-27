<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"
	rel="stylesheet" />
<meta charset="UTF-8">
<title>Show Doggo</title>
</head>
<body>
	<div class="container">
		<div class="mx-auto" style="width: 200px;">
			<div>
				<c:choose>
					<c:when test="${not empty doggo.photoLink }">
						<img alt="Photo of ${doggo.name }" src="${doggo.photoLink}"
							width="300px">
					</c:when>
					<c:otherwise>
						<em>No photo available</em>
					</c:otherwise>
				</c:choose>
				<div>
					<h5>${doggo.name}</h5>
					<p>
						<strong>ID Number: </strong>${doggo.id }</p>
					<p>
						<strong>Gender: </strong>${doggo.gender}</p>
					<p>
						<strong>Breed: </strong> ${doggo.breed}
					</p>
					<p>
						<strong>Age: </strong> ${doggo.age}
					</p>
					<p>
						<strong>Weight: </strong> ${doggo.weightLbs }lbs
					</p>
					<p>
						<strong>Nickname: </strong> <em>${doggo.nickname }</em>
					</p>
				</div>
			</div>
		</div>
		<div class="container">
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
					Add a link to a photo of your dog! <input type="url"
						name="photoLink" value="${doggo.photoLink }" />
				</p>
				<button type="submit" class="btn btn-primary btn-sm" value="Submit">Submit</button>

			</form>
			<br>
			<form action="deleteDoggo.do" method="POST">
				Remove this dog from the list:<input type="number" name="id"
					value="${doggo.id}">
				<button type="submit" class="btn btn-danger btn-sm" value="Submit">Delete
					This Dog</button>
			</form>

			<br> <a class="btn btn-primary btn-std" href="index.do"
				role="button">Return to Main Menu</a>
		</div>
	</div>
</body>
</html>