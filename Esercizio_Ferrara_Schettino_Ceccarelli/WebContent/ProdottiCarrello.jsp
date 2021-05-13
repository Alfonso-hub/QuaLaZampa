<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="pacchetto.model.* , java.util.* "
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/x-icon" href="./image/icona_carrello.png">
<link rel="stylesheet" type="text/css" href="./css/Carrello.css">
<title> Carrello del cliente </title>
</head>
<body>

<h1 align="center"> Qui viene visualizzato il carrello del cliente </h1>

<%
Carrello car= (Carrello) session.getAttribute("carrello");

if (car.getDimensione()==0) {
%>

<p>
Spiacenti ma il carrello è vuoto.
</p>

<a href="ProdottiView.jsp">
<input type="button" value="Torna alla lista prodotti">
</a>

<%
}
else {
	for (int i=0; i<car.getDimensione(); i++) {
%>


Id prodotto: <%= car.getCarrello().get(i).getId() %> <% request.setAttribute("iden", car.getCarrello().get(i).getId()); %><br>
Nome prodotto: <%= car.getCarrello().get(i).getNome() %> <br>
Prezzo singolo prodotto: <%= car.getCarrello().get(i).getPrezzo() %> <br>
<form action="Controllo2" method="get">
<input type="hidden" value="<%= car.getCarrello().get(i).getId() %>" name="nascosto">
Quantità desiderata: <input type="number" name="scelta">
<input type="submit" value="Aggiorna">
</form>
<br>

Prezzo totale: <%= car.getCarrello().get(i).getTotPrezzo() %>
<br><br>

<%
}
%>

<a href="TheEnd.jsp">
<input type="button" value="Effettua pagamento">
</a> <br><br>

<a href="ProdottiView.jsp">
<input type="button" value="Torna alla lista prodotti">
</a>

<%
}
%>

</body>
</html>