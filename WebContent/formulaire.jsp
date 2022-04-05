<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>formulaire</title>
</head>
<body bgcolor="#ffffcc">
<% if ((request.getParameter("Nom")==null) && (request.getParameter("Email")==null)) { %>
<p>
<b>Vous n'avez fourni aucune information</b>
<% }else{ %>
<%! String nom, email; %>
<%
nom = request.getParameter("Nom");
email = request.getParameter("Email");
%>
<p>
<b> Vous avez fourni les informations suivantes</b>
<p><b>Nom:</b><%= nom %>
<P><b>Email:</b><%= email%>
<%} %>
</body>
</html>