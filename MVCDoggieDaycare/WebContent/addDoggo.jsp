<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>Add A Dog</title>
</head>
<body>
	<form action="addDoggo.do" method="POST">
		<input type="text" name="name" value="Duke" /> <input type="text"
			name="breed" value="Border Collie" />
	<!-- This may not work? -->
			<input type="text" name="age" value="11 years"> 
		
		<input type="number" name="weightLbs" value="60">
		
		<select class="inlineFormCustomSelect" name="gender">
		<option selected>Gender</option>
		<option value="male">Male</option>
		<option value="female">Female</option>
		<option value="neutered male">Neutered Male</option>
		<option value="spayed female">Spayed Female</option>
		</select>
		
		<input type="text" name="nickname" placeholder="Nickname">
		<input type="url" name="photoLink" placeholder="Photo Link"/>
		
		<button type="submit" class="btn btn-primary btn-std"
			value="Submit">Submit</button>
			

	</form>
</body>
</html>