<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="pacchetto.model.ProdottiBean"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/x-icon" href="./image/icona_catalogo.png">
<link rel="stylesheet" type="text/css" href="./css/Carrello.css">
<title> Dettagli del prodotto </title>
</head>
<body>

<h1> Dettagli del prodotto </h1>

<%
ProdottiBean prod= (ProdottiBean) request.getAttribute("descrizione");
%>

<table>
<tr>
<th> Codice</th>
<th> Nome </th>
<th> Descrizione </th>
<th> Disponibilita </th>
<th> Quantita </th>
<th> Prezzo Unitario</th>
</tr>

<tr>
<td> <%= prod.getId()  %>  </td>
<td> <%= prod.getNome() %> </td>
<td> <%= prod.getDescrizione() %> </td> 
<td> <%= prod.getDisponibilita() %> </td>
<td> <%= prod.getQuantita() %> </td>
<td> <%= prod.getPrezzo() %> </td>
</tr>

</table>
<br><br>
<a href="Controllo?action=aggiungi&id=<%= prod.getId() %>">
<input type="button" value="Aggiungi al carrello">
</a> <br><br>
<a href="ProdottiCarrello.jsp">
<input type="button" value="Visualizza carrello">
</a>

</body>
</html>