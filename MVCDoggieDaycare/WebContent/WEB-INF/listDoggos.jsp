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
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="doggo" items="${doggos }">
		<dl>
			<li><strong><a href="getDoggo.do?id=${doggo.id }"><c:out
							value="${doggo.name }" /></a></strong></li>
			<li><em><c:out value="${doggo.breed }"></c:out></em></li>
		</dl>
	</c:forEach>

</body>
</html>