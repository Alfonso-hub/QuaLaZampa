<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*, pacchetto.model.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Amministratore</title>
<link rel="icon" type="image/x-icon" href="./image/icona_utente.jpg">
</head>
<body>
<%
ArrayList<?> prod= (ArrayList<?>) request.getAttribute("prodotti");
if (prod == null){
	response.sendRedirect("./Amministratore");
	return;
}

ClienteBean cerca= (ClienteBean)request.getAttribute("admin");
%>
<%@ include file = "../fragments/headerAmministratore.jsp" %>
<h1>Salve Amministratore <%= cerca.getUsername() %></h1>
<h1> Catalogo Prodotti </h1>

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
		String nome= ben.getPat().substring(104);
%>

<tr>
<td> <%= ben.getId() %> </td>
<td> <script type="text/javascript" src="./resources/imageZoom.js"></script>
<img onmouseover="bigImg(this)" onmouseout="normalImg(this)" border="0" src="./image/<%= nome %>" height="180" width="180">
<td> <%= ben.getNome() %> </td>
<td> <%= ben.getDescrizione() %> </td>
<td>
<a href="Amministratore?action=dettagli&id=<%= ben.getId() %>">
<input type="button" value="Dettagli prodotto"><br>
</a> <br>
<a href="Amministratore?action=modifica&id=<%= ben.getId() %>">
<input type="button" value="Modifica"> <br>
</a> <br>
<form action="EliminaProdAdmin" method="get">
<input type="hidden" name="id" value="<%= ben.getId()%>">
<input type="submit" value="Elimina">
</form>
</td>
</tr>

<%
	}
}
%>
</table>

<a href="Amministratore?action=aggiungi">
<input type="button" value="Aggiungi prodotto al catalogo">
</a>

</body>
</html>