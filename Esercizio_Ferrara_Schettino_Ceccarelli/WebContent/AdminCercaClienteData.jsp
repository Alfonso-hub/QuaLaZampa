<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*, pacchetto.model.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1> Visualizzazione ordini per intervallo di data </h1>

<% 
ArrayList<?> utente = (ArrayList<?>) request.getAttribute("ordine");
if (utente.size() == 0) {
%>

<h3 align="center"> Nell'intervallo di tempo selezionato non c'è alcun acquisto </h3>

<%
}
else {
%>

<table>
<tr>
<th> Id dell'ordine </th>
<th> Stao dell'ordine </th>
<th> Data dell'ordine </th>
<th> Prezzo dell'ordine </th> 
</tr>

<%
if (utente != null && utente.size() != 0) {
	Iterator<?> it= utente.iterator();
	while (it.hasNext()) {
		OrdineBean ben= (OrdineBean) it.next();
%>

<tr>
<td> <%= ben.getIdOrdine() %> </td>
<td> <%= ben.getStatoOrdine() %> </td>
<td> <%= ben.getDataOrdine() %> </td>
<td> <%= ben.getPrezzoTot() %> </td>
</tr>

<%
}
}
}
%>

</table>

</body>
</html>