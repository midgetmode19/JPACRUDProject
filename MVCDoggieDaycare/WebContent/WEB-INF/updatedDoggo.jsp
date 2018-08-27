<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Complete</title>
</head>
<body>
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
				<h5>${doggo.name}
					<p>ID: ${doggo.id }</p>
					<p>${doggo.gender}</p>
					<p>Breed: ${doggo.breed}</p>
					<p>Age: ${doggo.age}</p>
					<p>Weight: ${doggo.weightLbs }</p>
					<p>Nickname: ${doggo.nickname }</p>
				</h5>
			</div>

		</c:if>
		<c:if test="${updated = false}">
			<p>Failed to update the Dog's information</p>
		</c:if>
	</div>
	<a class="btn btn-primary btn-std" href="index.do" role="button">Return
		to Main Menu</a>
</body>
</html>