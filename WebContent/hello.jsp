<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello</title>
</head>
<body bgcolor="#22d4b1">
<% if ((request.getParameter("nom") == null) || (request.getParameter("nom").equals(""))) { %>
<p>
<b>Pas de nom! Entrer votre nom </b>
<% }else{ %>
<%! String nom; %>
<%
nom = request.getParameter("nom");
%>
<p>
<b> Hello  </b>
  <%= nom %>

<%} %>
</body>
</html>