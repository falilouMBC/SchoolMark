<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="model.*,Metier.*,java.util.*"%>

<%
List<Etudiant> etudiants = EtudiantDAO.listEtudiant();
List<Note> note = Metier.listNote();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<div class="container">
	<body id="mybody">

	<h1>BIENVENUE AU BLOC ETUDIANT</h1>
	<br>
	<br>
	<h1>Liste des etudiants et notes</h1>
	<br>
	<br>
	<div class="row">
		<div class="offset-sm-2 col-sm-8 offset-sm-2">
			<table class="table">
				<thead>
					<tr>
						<th>identifiant</th>
						<th>Matiere</th>
						<th>Note</th>
					</tr>
				</thead>
				<tbody>
					<%
					for (Note n : note) {
					%>
					<tr>

						<td><%=n.getLogin_etu()%></td>
						<td><%=n.getMatiere()%></td>
						<td><%=n.getNote()%></td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
		</div>
	</div>

</body>
</div>

</html>