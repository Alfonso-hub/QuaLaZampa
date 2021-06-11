<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./css/Struttura.css">
<title>QuaLaZampa</title>
</head>

<body>
<header>
<div class="header">
<img src="./image/logo.png" class="logo" width="110" height="110">
<a href="ProdottiCarrello.jsp"><img src="./image/icona_carrello.png" class="icone"></a>
<a href="PageLogin.jsp"><img src="./image/account.png" class="icone"></a>

</div>
</header>

<div class="content">
  <img class="mySlides" src="./image/0scorrimento.jpg">
  <img class="mySlides" src="./image/1scorrimento.jpeg">
  <img class="mySlides" src="./image/2scorrimento.jpeg">
  <img class="mySlides" src="./image/3scorrimento.jpeg">
  <img class="mySlides" src="./image/4scorrimento.jpeg">
</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2000);
}
</script>

<ul>
<li class="dropdown"><a class="dropbtn" href="">Gatto</a>
<div class="dropdown-content">
      <a href="">Alimenti</a>
      <a href="">Igiene e Salute</a>
      <a href="">Accessori</a>
    </div></li>
    
<li class="dropdown" ><a class="dropbtn" href="">Cane</a>
<div class="dropdown-content">
      <a class="dropdown"  href="link.html">Alimenti</a>
      <a href="#">Igiene e Salute</a>
      <a href="#">Accessori</a>
    </div></li>
    
    
<li class="dropdown" ><a class="dropbtn" href="">Animali piccola taglia</a>
<div class="dropdown-content">
      <a href="#">Alimenti</a>
      <a href="#">Igiene e Salute</a>
      <a href="#">Accessori</a>
    </div></li>
    
<li class="dropdown" ><a class="dropbtn" href="">Uccelli</a>
<div class="dropdown-content">
      <a href="#">Alimenti</a>
      <a href="#">Igiene e Salute</a>
      <a href="#">Accessori</a>
    </div></li>
</ul>




<h1>Catalogo </h1><br> 
<br>





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