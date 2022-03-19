<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link href="style.css" rel="stylesheet">
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.no-icons.min.css" rel="stylesheet">
<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="path/to/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
</head>
<body id="mybody">
	<h1>CONNECTEZ-VOUS <i class="fas fa-sign-in-alt"></i></h1>
	<br><br>
	<div class="container row w-25 w-25-sm p-0-sm mx-auto shadow-lg mt-5">
		<form action="LoginProfServlet" method="post">
			<div class="form-group">
				<input type="text" placeholder="Login" name="login" class="form-control my-3">
			</div>
			<div class="form-group">
				<input type="password" placeholder="mot de passe" name="pwd" class="form-control my-3">
			</div>
			<div class="form-group mx-auto text-center mt-5">
				<button class="btn btn-primary" type="submit">Connecter</button>
				<button class="btn btn-danger" type="submit">Annuler</button>
			</div>
			<br> <br>
		</form>
	</div>

</body>
</html>