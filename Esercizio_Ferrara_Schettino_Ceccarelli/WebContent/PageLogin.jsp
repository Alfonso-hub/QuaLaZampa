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
<img src="./image/logoPNG.png" class="img-logo" width="200" height="200" >
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
<div class="col-container">
  <div class="col">
 <h3>Sviluppatori</h3>
  <img src="./image/cat.png" class="image">
 	<p>Nome: Sabrina Ceccarelli <br>
     Email: s.ceccarelli1@studenti.unisa.it</p><br>
  
  
  <img src="./image/coniglio.png" class="image">
    <p>Nome: Miriam Ferrara <br>
  	 Email: M.Ferrara115@studenti.unisa.it</p><br>
 
  <img src="./image/pappagallo.png" class="image">
 	<p>Nome: Alfonso Schettino <br>
 	 Email: a.schettino23@studenti.unisa.it </p> 
 </div>
 <div class="col">
  <h3>Dove ci trovi</h3>
<p>
  Università degli Studi di Salerno<br>
  Via Giovanni Paolo II, 132<br>
  84084 Fisciano (SA)<br>
  Sito web: <a href="https://www.unisa.it">www.unisa.it</a></p> 
  </div>
  
<div class="col"> 
  <h3>Per conoscerci meglio</h3>
  <p>Github: <a href="https://github.com/Alfonso-hub/QuaLaZampa.git">QuaLaZampa</a></p>
  </div>
  </div>
</footer>
</body>
</html>