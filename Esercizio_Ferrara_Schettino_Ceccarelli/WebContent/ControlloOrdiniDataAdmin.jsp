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
<h1> Qui puoi controllare la lista ordini inserendo due date </h1>

<form action="CercaClienteData" method="post">
Inserisci la data di inizio: <input type="date" name="dataInizio"> <br>
Inserisci la data di fine: <input type="date" name="dataFine">

<input type="submit" value="Cerca">
</form>

</body>
</html>