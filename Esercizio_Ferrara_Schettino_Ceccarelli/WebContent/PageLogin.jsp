<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/x-icon" href="./image/icona_utente.jpg">
<link rel="stylesheet" type="text/css" href="./css/Login.css">
<title>Login</title>
</head>

<body>
<h1>Accedi al nostro sito</h1>

<form action="Login" method="post">
<div class="container">
<p>Inserisci i tuoi dati per Accedere</p>

<label><b>Email:</b></label><br>
<input type="text" name="email" placeholder="Inserisci email" required>

<label><b>Password:</b></label><br> 
<input type="password" name="password" placeholder="Inserisci password" required>

<input type="submit" class="login" value="Accedi"><br>
</div>
</form>

<br>
<div class="altro">
Se non sei ancora Registrato? <a href="LoginRegistrazione.jsp"><input type="button" value="clicca qui"></a>
<br><br>
Per procedere come ospite invece <a href="ProdottiView.jsp"><input type="button" value="clicca qui"></a>
</div>
</body>
</html>