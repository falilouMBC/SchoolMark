<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Metier.*,model.*,java.util.*"%>
<%
    	List<Filiere> filieres = Metier.listFiliere();
		List<Classe> classes = Metier.listClasse();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="AddEtudiantServlet" method='post'>
		<div>
			<input placeholder="login" type="text" name="login">
		</div>
		<div>
			<input placeholder="mot de passe" type="text" name="password">
		</div>
		<div>
			<input placeholder="prenom et nom" type="text" name="name">
		</div>
		<div>
			<label>Classe</label> <select name="classe">
				<% for(Classe c : classes){ %>
				<option value="<%=c.getId_classe() %>"><%=c.getClasse() %></option>
				<% } %>
			</select>
		</div>


		</div>
		<div>
			<button type="submit">Inscrire</button>
		</div>
	</form>
</body>
</html>