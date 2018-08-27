<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>List of Dogs matching your search</title>
</head>
<body>
	<div class="container">
		<c:choose>
			<c:when test="${not empty doggos }">
				<c:forEach var="doggo" items="${doggos }">
					<dl>
						<li><strong><a href="getDoggo.do?id=${doggo.id }"><c:out
										value="${doggo.name }" /></a></strong></li>
					</dl>
				</c:forEach>
			</c:when>
			<c:otherwise>
				No Doggos found.
		</c:otherwise>
		</c:choose>
		<a class="btn btn-primary btn-std" href="index.do" role="button">Return
			to Main Menu</a>
	</div>

</body>
</html>