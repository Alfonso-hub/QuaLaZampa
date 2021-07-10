<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="pacchetto.model.ProdottiBean"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/x-icon" href="./image/icona_catalogo.png">
<link rel="stylesheet" type="text/css" href="./css/Bottone.css">
<title>Info Prodotto acquistato</title>
</head>
<body>
<%@ include file = "../fragments/header.jsp" %>
<% ProdottiBean bean= (ProdottiBean) request.getAttribute("informazioni prodotto");
int quantit= (int) request.getAttribute("quantit");
 %>

<h1 align="center">Dettagli del Prodotto Acquistato:<br> <%= bean.getNome() %> </h1>

<p align="center">

Codice Prodotto: <b><%= bean.getId() %></b><br>
Descrizione:<br> <b><%= bean.getDescrizione() %></b><br>
Prezzo del singolo Prodotto: <b><%= bean.getPrezzo() %> &euro; </b><br> 
IVA <b><%= bean.getIva() %></b><br>
Quantità acquistata <b><%= quantit %></b></p>





<div align="center">
<a href="ProdottiView.jsp">
<input type="button"  class="small" value="visualizza i prodotti">
</a>
</div>
<br><br>
<%@ include file="../fragments/footer.jsp" %>
</body>
</html>