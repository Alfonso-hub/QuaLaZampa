<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/x-icon" href="./image/icona_utente.jpg">
<title>Registrazione</title>
</head>
<body>
<h1>Registrazione</h1>
<form action="Login" method="post">
<p>Compila questo modulo per creare un account.</p>

<label><b>Nome:</b></label>    
<input type="text" name="nome" placeholder="Inserisci nome" required>

<label><b>Cognome:</b></label>
<input type="text" name="cognome" placeholder="Inserisci cognome" required><br><br>

<label><b>Username:</b></label>
<input type="text" name="username" placeholder="Inserisci username" required>

<label><b>Email:</b></label>   
<input type="email" name="email" placeholder="Inserisci email" required><br><br>

<label><b>Nuova Password:</b></label>
<input type="password" name="new password" placeholder="Inserisci password" required>

<label><b>Ripeti Password:</b></label>
<input type="password" name="rip password" placeholder="Reinserisci password" required><br><br>

<label><b>Telefono:</b></label>
<input type="text" name="telefono" placeholder="Inserisci num.Telefono" required>

<label><b>Codice Fiscale:</b></label>
<input type="text" name="codice" placeholder="Inserisci codice fiscale" required><br><br>

<label><b>Via:</b></label> 
<input type="text" name="via" placeholder="Inserisci via" required>

<label><b>Citta:</b></label> 
<input type="text" name="citta" placeholder="Inserisci citta" required><br><br>

<label><b>Provincia:</b></label> 
<input type="text" name="provincia" placeholder="Inserisci provincia" required>

<label><b>Cap:</b></label> 
<input type="text" name="cap" placeholder="Inserisci cap" required><br><br>


<input type="submit" value="Registrati"><br>
</form>
<br><br>
Hai gia un account? <a href="PageLogin.jsp"><input type="button" value="clicca qui"></a>
</body>
</html>