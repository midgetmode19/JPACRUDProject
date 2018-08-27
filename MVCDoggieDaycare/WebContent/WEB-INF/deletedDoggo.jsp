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
		<c:if test="${succeeded = true}">
			<p>The Dog has been removed from the list.</p>
		</c:if>
		<c:if test="${succeeded = false}">
			<p>Failed to delete Dog from the list.</p>
		</c:if>
	<a class="btn btn-primary btn-std" href="index.do"
			role="button">Return to Main Menu</a>

</body>
</html>