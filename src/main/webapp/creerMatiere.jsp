<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Metier.*,model.*,java.util.*"%>
<%
    	List<Filiere> filieres = Metier.listFiliere();
		List<Enseignant> professeurs = EnseignantDAO.listEnseignant();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="AddMatiereServlet" method='post'>
		<div>
			<input placeholder="intitule" type="text" name="intitule">
		</div>
		<div>
			<label>Classe</label> <select name="prof">
				<% for(Enseignant e : professeurs){ %>
				<option value="<%=e.getId_prof() %>"><%=e.getNomComplet() %></option>
				<% } %>
			</select>
		</div>


		</div>
		<div>
			<button type="submit">Ajouter matiere</button>
		</div>
	</form>
</body>
</html>