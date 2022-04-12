<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Poids</title>
</head>
<body>
<%! float taille; String genre; %>
<%
taille = Float.parseFloat(request.getParameter("taille"));
genre = request.getParameter("genre");

if (genre.equals("homme")){
%>
Votre poids idéel est <%= (62.1 * taille) - 44.7 %> kg.
<%
}else{
%>
Votre poids idéel est <%= (72.7 * taille) - 58 %> kg.
<%} %>
</body>
</html>