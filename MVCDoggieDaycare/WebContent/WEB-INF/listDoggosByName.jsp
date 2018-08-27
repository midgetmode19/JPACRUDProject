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
<c:choose>
<c:when test="${not empty doggos }">
	<c:forEach var="doggo" items="${doggos }">
		<dl>
			<li><c:out value="${doggo.photoLink }"></c:out></li>
			<li><strong><a href="getDoggo.do?id=${doggo.id }"><c:out
							value="${doggo.name }" /></a></strong></li>
		</dl>
	</c:forEach>
	</c:when>
	<c:otherwise>
	No results matching your search.
	<a href="index.do">Return to Homepage</a>
	</c:otherwise>
</c:choose>

</body>
</html>