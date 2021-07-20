<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/x-icon" href="./image/icona_utente.jpg">
<link rel="stylesheet" type="text/css" href="./css/Login.css">
<link rel="stylesheet" type="text/css" href="./css/Struttura.css">
<title>Registrazione</title>
</head>
<body>
<img src="./image/logo.png" class="img-logo" width="200" height="200" >
<h1 align="center">Registrazione</h1>
<form action="Registrazione" method="post">
<div class="container">
<p>Compila questo modulo per creare un account.</p><br>

<label><b>Nome:</b></label>    
<input type="text" name="nome" placeholder="Inserisci nome" required>

<label><b>Cognome:</b></label>
<input type="text" name="cognome" placeholder="Inserisci cognome" required>

<label><b>Username:</b></label>
<input type="text" name="username" placeholder="Inserisci username" required>

<label><b>Email:</b></label>   
<input type="email" name="email" placeholder="Inserisci email" required>

<label><b>Nuova Password:</b></label>
<input type="password" name="new password" placeholder="Inserisci password" required>

<label><b>Ripeti Password:</b></label>
<input type="password" name="rip password" placeholder="Reinserisci password" required>

<label><b>Telefono:</b></label>
<input type="text" name="telefono" placeholder="Inserisci num.Telefono" required>

<label><b>Codice Fiscale:</b></label>
<input type="text" name="codice" placeholder="Inserisci codice fiscale" required>

<label><b>Provincia:</b></label>
<input type="text" name="provincia" placeholder="Inserisci la provincia" required>

<label><b>Cap:</b></label>
<input type="text" name="cap" placeholder="Inserisci il cap" required>

<label><b>Città:</b></label>
<input type="text" name="citta" placeholder="Inserisci la città" required>

<label><b>Via:</b></label>
<input type="text" name="via" placeholder="Inserisci la via" required> <br><br>

<input type="submit" class="login" value="Registrati">
</div>
</form>
<br>
<div class="clicca">
Hai gia un account? <a href="PageLogin.jsp"><input type="button" value="clicca qui" style="background-color: #ffd963; text-align: center;color:black; font-weight:bold; border: 2px solid black;"></a>
</div>

<%@ include file = "../fragments/footerSemplice.jsp" %>
</body>
</html>