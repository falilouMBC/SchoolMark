<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Metier.*,model.*,java.util.*"%>
<%
    	List<Filiere> filieres = Metier.listFiliere();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="AddClasseServlet" method='post'>
		<div>
			<input placeholder="Classe" type="text" name="nomclasse">
		</div>
		<div>
			<label>Filiere</label> <select name="filiere">
				<% for(Filiere f : filieres){ %>
				<option value="<%=f.getId_filiere() %>"><%=f.getNom_filiere() %></option>
				<% } %>
			</select>

		</div>
		<div>
			<button type="submit">Creer classe</button>
		</div>
	</form>
</body>
</html>