<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/x-icon" href="./image/icona_utente.jpg">
<link rel="stylesheet" type="text/css" href="./css/Login.css">
<link rel="stylesheet" type="text/css" href="./css/Struttura.css">

<title>Login</title>
</head>

<body>
<img src="./image/logo.png" class="img-logo" width="200" height="200" >
<div class="container">
<h1>Accedi</h1>
<form action="Login"  method="post" >
<p>Inserisci i tuoi dati per Accedere</p><br>

<label><b>Email:</b></label><br>
<input type="text" name="email" placeholder="Inserisci email" required>

<label><b>Password:</b></label><br> 
<input type="password" name="password" placeholder="Inserisci password" required>

<input type="submit" class="login" value="Accedi"><br>
</form>

<br>
<div class="clicca">
Se non sei ancora Registrato? <a href="LoginRegistrazione.jsp"><input type="button" value="clicca qui"></a>
<br><br>
Per procedere come ospite invece <a href="ProdottiView.jsp"><input type="button" value="clicca qui"></a>
</div>
</div>

<footer>
<div align="center">
  <p> &#169; QuaLaZampa 2021</p>
  </div>
  </footer>
</body>
</html>