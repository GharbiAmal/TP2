<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Equation Second Degré</title>
</head>


<%! float a,b,c,D,x; %>
<%
a = Float.parseFloat(request.getParameter("a"));
b = Float.parseFloat(request.getParameter("b"));
c = Float.parseFloat(request.getParameter("c"));
D = (b*b)-(4*a*c);
x = -b/(2*a);

%>
<% if (D < 0){ %>

<body bgcolor="red">
<h2>Pas de solution Réelles( dans R )</h2>

<%}

else if(D == 0){%>

<body>
<h2> Une unique solution X = 
  <%= x %></h2>

<%} else{ %>

<body bgcolor="#67BE4B">
<p><h2>deux solution</h2></p>

<ul> 
<li><h3> X1 = <%= -b-Math.sqrt(D)/(2*a)%> <h3></li> 
<li><h3> X2 = <%= -b+Math.sqrt(D)/(2*a)%> <h3></li> 
</ul>

<%} %>


</body>
</html>