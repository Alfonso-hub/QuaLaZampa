<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/x-icon" href="./image/icona_utente.jpg">
<title>Login</title>
</head>
<body>
<h1>Accedi al nostro sito</h1>

<form action="Login" method="post">
<p>Inserisci i tuoi dati per Accedere</p>

<label><b>Username:</b></label><br>
<input type="text" name="username" placeholder="Inserisci username" required><br><br>
<label><b>Password:</b></label><br> 
<input type="password" name="password" placeholder="Inserisci password" required><br><br>

<input type="submit" value="Accedi"><br>
</form>
<br>
Se non sei ancora Registrato <a href="LoginRegistrazione.jsp"><input type="button" value="clicca qui"></a>
<br><br>
Per procedere come ospite invece <a href="ProdottiView.jsp"><input type="button" value="clicca qui"></a>
</body>
</html>