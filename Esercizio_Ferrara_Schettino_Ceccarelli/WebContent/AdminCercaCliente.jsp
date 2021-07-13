<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*, pacchetto.model.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "../fragments/headerAmministratore.jsp" %>
<%ArrayList<?> utente = (ArrayList<?>) request.getAttribute("nome");
DatiAnagraficiBean dati= (DatiAnagraficiBean) request.getAttribute("dati");
%>
<h1> Visualizzazione degli ordini del cliete <%= dati.getNome() %> </h1>

<% 
if (utente.size() == 0){
%>

<h3 align="center"> L'utente non ha effettuato alcun acquisto </h3>

<%
}

else {
%>

<center>
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
	}%>

</table>
</center>

</body>
</html>