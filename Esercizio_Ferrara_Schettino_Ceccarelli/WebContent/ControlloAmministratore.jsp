<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="pacchetto.model.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Quetsa è la pagina del controllo dell'amministratore </title>
</head>
<body>

<%
ClienteBean cerca= (ClienteBean)request.getAttribute("admin");

if (cerca == null){
response.sendRedirect("./ControlloAdmin");
return ;
}
%>

<h1> Benvenuto Amministratore <%= cerca.getUsername() %></h1>

<a href="ControlloAdmin?azione=controllo">
<input type="button" value="Controlla il catalogo"> <br><br>
</a>

<a href="ControlloAdmin?azione=ordiniNominativo">
<input type="button" value="Controlla gli ordini per nominativo cliente"> <br><br>
</a>

<a href="ControlloAdmin?azione=ordiniData">
<input type="button" value="Controlla gli ordini per Data">
</a>

</body>
</html>