<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Damier</title>
</head>
<body>
	
<%! int n=10; %>

<center><h3> Damier de 10 lignes par 10 colonnes </h3></center> 
<table border="2" align="center">
	<%for ( int i = 0; i < n; i++){ %>
	<tr>
		<%for (int j =0; j< n ; j++) { %>
         	<% if (((j % 2) != 0 ) && (i % 2) == 0 ) { %> 
         
         		<td bgcolor="white"> &nbsp; &nbsp; &nbsp; </td>
         		<td bgcolor="black"> &nbsp; &nbsp; &nbsp;  </td>
         
         	<% } else if(((j % 2) != 0 ) && (i % 2) != 0 )  { %>
         		<td bgcolor="black"> &nbsp; &nbsp; &nbsp; </td>
         		<td bgcolor="white"> &nbsp; &nbsp; &nbsp; </td>
         <%} }%>
      </tr>
      <%} %>
      </table>

</body>
</html>