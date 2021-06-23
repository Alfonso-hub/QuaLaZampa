<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*, pacchetto.model.ProdottiBean"
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
%>
<%@ include file = "../fragments/header.jsp" %>
<h1>Salve Amministratore <%=  %></h1><!-- volevo inserire il nome amministratore -->
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
		String nome= ben.getPat().substring(95);
%>

<tr>
<td> <%= ben.getId() %> </td>
<td> <img onmouseover="bigImg(this)" onmouseout="normalImg(this)" border="0" src="./image/<%= nome %>" height="180" width="180">
<td> <%= ben.getNome() %> </td>
<td> <%= ben.getDescrizione() %> </td>
<td>
<a href="Amministratore?action=dettagli&id=<%= ben.getId() %>">
<input type="button" value="Dettagli prodotto"><br>
</a> <br>
<a href="Amministratore?action=modifica&id=<%= ben.getId() %>">
<input type="button" value="Modifica">
</a>

</td>
</tr>

<%
	}
}
%>
</table>

<%@ include file = "../fragments/footerSemplice.jsp" %>
</body>
</html>