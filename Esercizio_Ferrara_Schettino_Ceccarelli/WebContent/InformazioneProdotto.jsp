<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="pacchetto.model.ProdottiBean"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Info Prodotto acquistato</title>
</head>
<body>

<% ProdottiBean bean= (ProdottiBean) request.getAttribute("informazioni prodotto"); %>
<h1 allign="center"> Qui Vengono visualizzate le informazioni di: <%= bean.getNome() %> </h1>

</body>
</html>