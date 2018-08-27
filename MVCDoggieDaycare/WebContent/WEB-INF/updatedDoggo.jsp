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
			<c:if test="${updated = true}">
			<p>The Dog's information has been successfully updated!</p>
			<p><c:out value="${doggo }"></c:out></p>
		</c:if>
		<c:if test="${updated = false}">
			<p>Failed to update the Dog's information</p>
		</c:if>
	<a class="btn btn-primary btn-std" href="index.do"
			role="button">Return to Main Menu</a>

</body>
</html>