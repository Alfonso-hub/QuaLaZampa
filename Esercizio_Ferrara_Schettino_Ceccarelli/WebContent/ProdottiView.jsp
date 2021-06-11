<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*, pacchetto.model.ProdottiBean"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/x-icon" href="./image/icona_catalogo.png">
<link rel="stylesheet" type="text/css" href="./css/Carrello.css">


<title>Catalogo</title>
</head>
<body>

<%
ArrayList<?> prod= (ArrayList<?>) request.getAttribute("prodotti");

if (prod == null){
	response.sendRedirect("./Controllo");
	return;
}
%>
<%@ include file = "../fragments/header.jsp" %>
<%@ include file="../fragments/menu.jsp" %>
<h1> Catalogo Prodotti </h1>

<div style="overflow-x:auto;">
<table>
<tr>
<th> Codice</th>
<th> Immagine </th>
<th> Nome </th>
<th> Descrizione </th>
<th> Azioni </th>
</tr>

<%
if (prod != null && prod.size() != 0) {
	Iterator<?> it= prod.iterator();
	while (it.hasNext()) {
		ProdottiBean ben= (ProdottiBean) it.next();
		String nome= ben.getPat().substring(95);
%>

<tr>
<td> <%= ben.getId() %> </td>
<td> <img src="./image/<%= nome %>" height="180" width="180">
<td> <%= ben.getNome() %> </td>
<td> <%= ben.getDescrizione() %> </td>
<td>
<a href="Controllo?action=dettagli&id=<%= ben.getId() %>">
<input type="button" value="Dettagli prodotto"><br>
</a> <br>
<a href="Controllo?action=aggiungi&id=<%= ben.getId() %>">
<input type="button" value="Aggiungi al carrello">
</a> <br><br>
</td>
</tr>

<%
	}
}
%>
</table></div>

<br><br>
<%@ include file="../fragments/footer.jsp" %>
</body>
</html>