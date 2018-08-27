<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"
	rel="stylesheet" />
<meta charset="UTF-8">
<meta charset="UTF-8">
<title>Action Complete</title>
</head>
<body>
	<div class="container">
		<div>
			<c:if test="${updated = true}">
				<p>The Dog's information has been successfully updated!</p>
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

			</c:if>
			<c:if test="${updated = false}">
				<p>Failed to update the Dog's information</p>
			</c:if>
			<a class="btn btn-primary btn-std" href="index.do" role="button">Return
				to Main Menu</a>
		</div>
</body>
</html>