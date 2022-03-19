<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="model.*"%>
	<%@page import="Metier.*"%>
	<%
	int id  = Integer.parseInt(request.getParameter("id"));
	
	
	NoteDAO nDAO = new NoteDAO(); 
	Note n = nDAO.read(id);
	String login = request.getParameter("login");
	String matiere = request.getParameter("matiere");
	double note = Double.parseDouble(request.getParameter("note"));
	
	%>
	
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
<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.no-icons.min.css"
	rel="stylesheet">
<link
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css"
	rel="stylesheet">
<link rel="stylesheet" href="path/to/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="path/to/font-awesome/css/font-awesome.min.css">
</head>
<body id="mybody">

	<h1>
		CONNECTEZ-VOUS <i class="fas fa-sign-in-alt"></i>
	</h1>
	<br>
	<br>

	<div class="container row w-25 w-25-sm p-0-sm mx-auto shadow-lg mt-5">


		<form method="post" action="UpdateNoteServlet=<%= request.getParameter("id") %>">
			<div class="form-group">
				<input type="text" name="login" class="form-control my-3 " value="<%=n.getLogin_etu()%>">
			</div>
			<div class="form-group">
				<input type="text" name="matiere" class="form-control my-3" value="<%=n.getMatiere()%>">
			</div>
			<div class="form-group">
				<input type="number" name="note" class="form-control my-3" value="<%=n.getNote()%>">
			</div>
			<div class="form-group mx-auto text-center mt-5">
				<button class="btn btn-primary" type="submit">Modifier</button>
				<button class="btn btn-danger" type="submit">Annuler</button>
			</div>
			<br> <br>
		</form>
</body>
</html>