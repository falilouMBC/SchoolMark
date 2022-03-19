<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="AddTeacherServlet" method="post">
		<div>
			<input type="text" placeholder="login" name="login"><br>
			<input type="text" placeholder="password" name="password"><br>
			<input type="text" placeholder="nomComplet" name="nom"><br>
		</div>
		<div>
			<button type="submit">Ajouter professeur</button>
		</div>
	</form>
</body>
</html>