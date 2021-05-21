<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*, pacchetto.model.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Ordini effettuati </title>
</head>
<body>

<h1 align="center"> Qui viene visualizzata la lista degli </h1>

<table>
<tr>
<th> id_ordine </th>
<th> prezzo_totale </th>
<th> stato ordine </th>
<th> data ordine </th>
</tr>


<%
ArrayList<OrdineBean> ord= (ArrayList<OrdineBean>) request.getAttribute("ordiniEffettuati");

for (int i= 0; i < ord.size(); i++){
%>

<tr>
<td> <%= ord.get(i).getIdOrdine() %> </td>
<td> <%= ord.get(i).getPrezzoTot() %> </td>
<td> <%= ord.get(i).getStatoOrdine() %> </td>
<td> <%= ord.get(i).getDataOrdine() %>
</tr>

<%
}
%>

</table>

</body>
</html>