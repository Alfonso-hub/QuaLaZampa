<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*, pacchetto.model.OrdineBean"
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
ArrayList<?> ord= (ArrayList<?>) request.getAttribute("ordiniEffettuati");

if (ord != null && ord.size() != 0){
	Iterator<?> it= ord.iterator();
	while(it.hasNext()){
		OrdineBean or= (OrdineBean) it.next();
%>

<tr>
<td> <%= or.getIdOrdine() %> </td>
<td> <%= or.getPrezzoTot() %> </td>
<td> <%= or.getStatoOrdine() %> </td>
<td> <%= or.getDataOrdine() %> </td>
</tr>

<%
}
}
%>

</table>

</body>
</html>