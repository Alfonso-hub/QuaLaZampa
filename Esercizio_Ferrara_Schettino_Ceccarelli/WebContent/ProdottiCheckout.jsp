<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="pacchetto.model.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/x-icon" href="./image/icona_checkout.png">
<link rel="stylesheet" type="text/css" href="./css/Bottone.css">
<title> Checkout </title>
</head>
<body>
<%@ include file = "../fragments/header.jsp" %>
<div align="center">
<h1> Grazie per aver scelto QuaLaZampa </h1>
<h3>L'ordine da te effettuato � andato a buon fine <br>Grazie</h3>


<% DatiAnagraficiBean dati = (DatiAnagraficiBean) request.getAttribute("telefono"); 
IndirizzoSpedizioneBean  utentibean = (IndirizzoSpedizioneBean) request.getAttribute("indirizzo"); 
%>
<blockquote><b>
<%= dati.getNome() %> <%= dati.getCognome()%>,<br>
<%= utentibean.getVia() %>, <br>
<%= dati.getTelefono() %> <br>
<%= utentibean.getCap() %>
<%= utentibean.getCitt�() %> (<%= utentibean.getProvincia() %>) <br>
</b></blockquote>

<p>Gli sviluppatori di QuaLaZampa:<br>
Ferrara Miriam, Schettino Alfonso, Ceccarelli Sabrina<br> 
la ringraziano per aver scelto QuaLaZampa.
<br>Speriamo di aver soddisfatto tutte le richieste.
<br>Torni presto ad acquistare!</p>
</div>
<div class="container" align="center">
<a style="color: white" href="ProdottiCarrello.jsp">
<input type="button" class="small" value="Visualizza il carrello">
</a>
<a style="color: white" href="ProdottiView.jsp">
<input type="button" class="small" value="Torna alla lista prodotti">
</a>
<a style="color: white" href="Ordini?action=ordiniEffettuati">
<input type="button" class="small" value="Visualizza Ordini effettuati">
</a>
</div>
<br><br>
<%@ include file="../fragments/footer.jsp" %>
</body>
</html>