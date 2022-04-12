<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Niveau</title>
</head>
<body>
<% int sommeh = 0; %>
<% int sommep = 0; %>
<% int score = 0; %>
<% String name = request.getParameter("nom"); %>
<% 
// score connaissances
if(request.getParameter("html").equals("f")) {
    sommeh = sommeh + 1;
}
else if(request.getParameter("html").equals("m")) {
    sommeh = sommeh + 2;
}
else if(request.getParameter("html").equals("b")) {
    sommeh = sommeh + 3;
}
// score programmation
if(request.getParameter("prog").equals("ab")) {
    sommep = sommep + 1;
}
else if(request.getParameter("prog").equals("mo")) {
    sommep = sommep + 2;
}
else if(request.getParameter("prog").equals("bo")) {
    sommep = sommep + 3;
}
// calcule Score totale
score = sommeh + sommep;
// affiche Resultat
if (score < 3) {%>
	<h1> <%= name%> Vous êtes un débutant </h1><%
}
else if ((score < 5 ) && (score >2 )) { %>
	<h1> <%= name%> Vous avez un niveau moyen</h1><%
}
else { %>
	<h1><%= name%> Vous êtes un expert !</h1>
<% } %>
</body>
</html>