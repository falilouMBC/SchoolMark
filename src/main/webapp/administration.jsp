		<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="model.*,Metier.*,java.util.*"%>

<%
List<Etudiant> etudiants = EtudiantDAO.listEtudiant();
List<Note> note = Metier.listNote();
List<Classe> classe = Metier.listClasse();
List<Filiere> filiere = Metier.listFiliere();
List<Enseignant> enseignant = EnseignantDAO.listEnseignant();
List<Matiere> matiere = Metier.listMatiere();
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

		<h1>BIENVENUE AU BLOC D'ADMINISTRATION</h1>
		<br>
		<br>
		<br>
		<br>
		<div class="row">
			<div class="offset-sm-2 col-sm-8 offset-sm-2">
			<a href="creerFiliere.jsp"><button class="btn btn-success">Creer filiere</button></a>
				<h1>Liste des filieres</h1>
				<table class="table">
					<thead>
						<tr>
							<th>Identification filiere</th>
							<th>Filiere</th>

						</tr>
					</thead>
					<tbody>
						<%
						for (Filiere f : filiere) {
						%>
						<tr>
							<td><%=f.getId_filiere()%></td>
							<td><%=f.getNom_filiere()%></td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="offset-sm-2 col-sm-8 offset-sm-2">
			<a href="creerClasse.jsp"><button class="btn btn-success">Creer classe</button></a>
				<h1>Liste des classes</h1>

				<table class="table">
					<thead>
						<tr>
							<th>Identification classe</th>
							<th>Classe</th>
							<th>Identifiant filiere</th>
						</tr>
					</thead>
					<tbody>
						<%
						for (Classe c : classe) {
						%>
						<tr>
							<td><%=c.getId_classe()%></td>
							<td><%=c.getClasse()%></td>
							<td><%=c.getId_filiere()%></td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="offset-sm-2 col-sm-8 offset-sm-2">
			<a href="ajoutEtudiant.jsp"><button class="btn btn-success">Ajouter etudiant</button></a>
				<h1>Liste des etudiants</h1>
				<table class="table">
					<thead>
						<tr>
							<th>#</th>
							<th>Nom complet</th>
							<th>login</th>
							<th>Identifiant classe</th>
						</tr>
					</thead>
					<tbody>
						<%
						for (Etudiant e : etudiants) {
						%>
						<tr>
							<td><%=e.getId_etu()%></td>
							<td><%=e.getNomComplet()%></td>
							<td><%=e.getLogin()%></td>
							<td><%=e.getId_classe()%></td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="offset-sm-2 col-sm-8 offset-sm-2">
				<h1>Liste des professeurs</h1>
				<a href="ajouterProf.jsp"><button class="btn btn-success">Ajouter
						Professeur</button></a>
				<table class="table">
					<thead>
						<tr>
							<th>identifiant</th>
							<th>nom complet</th>
							<th>Actions</th>
						</tr>
					</thead>
					<tbody>
						<%
						for (Enseignant e : enseignant) {
						%>
						<tr>
							<td><%=e.getId_prof()%></td>
							<td><%=e.getNomComplet()%></td>
							<td><a href="modifNote.jsp?id=<%=e.getId_prof()%>"><button
										class="btn btn-success">Modifier</button></a></td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="offset-sm-2 col-sm-8 offset-sm-2">
				<h1>Liste des matieres</h1>
				<a href="creerMatiere.jsp"><button class="btn btn-success">Ajouter
						Matiere</button></a>
				<table class="table">
					<thead>
						<tr>
							<th>identifiant</th>
							<th>nom complet</th>
							<th>identifiant professeur</th>
							<th>Actions</th>
						</tr>
					</thead>
					<tbody>
						<%
						for (Matiere m : matiere) {
						%>
						<tr>
							<td><%=m.getId()%></td>
							<td><%=m.intitule%></td>
							<td><%=m.id_prof%></td>
							<td><a href="modifNote.jsp?id=<%=m.getId_prof()%>"><button
										class="btn btn-success">Modifier</button></a></td>
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