<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/x-icon" href="./image/icona_utente.jpg">
<title> Qui puoi controllare la lista ordini </title>
</head>
<body>
<%@ include file = "../fragments/headerAmministratore.jsp" %>
<div align="center">
<h1> Qui puoi controllare la lista ordini inserendo il nome del cliente </h1>
<form action="CercaCliente" method="post">
<input type="search" name="nome" placeholder="Inserisci nome cliente">
<input type="submit" value="Cerca">
</form>
</div>
</body>
</html>