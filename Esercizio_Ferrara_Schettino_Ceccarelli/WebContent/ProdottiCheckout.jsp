<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="pacchetto.model.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/x-icon" href="./image/icona_checkout.png">
<link rel="stylesheet" type="text/css" href="./css/Carrello.css">
<title> Checkout </title>
</head>
<body>
<%@ include file = "../fragments/header.jsp" %>

<h1> Grazie per aver utilizzato il nostro sito </h1>

<h3>L'ordine da te effettuato è andato a buon fine <br>Grazie</h3>
<br>
<blockquote>
<!-- metti il nome del cliente che acquista  -->
<% DatiAnagraficiBean dati = (DatiAnagraficiBean) request.getAttribute("telefono"); 
IndirizzoSpedizioneBean  utentibean = (IndirizzoSpedizioneBean) request.getAttribute("indirizzo"); %>

<%= dati.getNome() %> <%= dati.getCognome()%>,<br>
<%= utentibean.getVia() %>, <br>
<%= dati.getTelefono() %> <br>
<%= utentibean.getCap() %>
<%= utentibean.getCittà() %> (<%= utentibean.getProvincia() %>) <br>
</blockquote>
<br>
<p>
Gli sviluppatori del sito: Ferrara Miriam, Schettino Alfonso e Ceccarelli Sabrina la ringraziano per aver scelto il sito Qua La Zampa creato da noi.
<br>Speriamo di aver soddisfatto tutte le richieste.
<br>Torni presto ad acquistare!
</p>

<a href="ProdottiCarrello.jsp">
<input type="button" value="Visualizza il carrello">
</a> <br><br>
<a href="ProdottiView.jsp">
<input type="button" value="Torna alla lista prodotti">
</a> <br><br>
<a href="Ordini?action=ordiniEffettuati">
<input type="button" value="Visualizza tabella ordini effettuati">
</a>

</body>
</html>