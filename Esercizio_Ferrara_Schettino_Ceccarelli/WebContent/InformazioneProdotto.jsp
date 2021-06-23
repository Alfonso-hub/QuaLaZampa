<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="pacchetto.model.ProdottiBean"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Info Prodotto acquistato</title>
</head>
<body>
<%@ include file = "../fragments/header.jsp" %>
<% ProdottiBean bean= (ProdottiBean) request.getAttribute("informazioni prodotto");
int quantit= (int) request.getAttribute("quantit");
%>
<h1 align="center"> Qui Vengono visualizzate le informazioni di: <%= bean.getNome() %> </h1>

<p align="center">
L identificativo del prodotto è <%= bean.getId() %> e la descrizione ad esso associata è la seguente: <br>
<%= bean.getDescrizione() %> <br>
L'IVA del prodotto è <%= bean.getIva() %>, il prezzo del singolo prodotto è <%= bean.getPrezzo() %> <br>
e il cliente ha acquistato <%= quantit %> quantità di tale prodotto.
</p> <br><br>

<div align="center">
<a href="ProdottiView.jsp">
<input type="button" value="visualizza i prodotti">
</a>
</div>

</body>
</html>