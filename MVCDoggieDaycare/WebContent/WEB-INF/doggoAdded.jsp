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
		<c:if test="${not empty doggo}">
			<p>Dog successfully added!</p>
			<p>${doggo }</p>
		</c:if>
		<c:if test="${empty doggo }">
			<p>Failed to add Dog</p>
		</c:if>
	<a href="index.do">Return to Main Menu</a>

</body>
</html>