<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/x-icon" href="./image/icona_checkout.png">
<link rel="stylesheet" type="text/css" href="./css/Checkout.css">
<title>Pagamento</title>
</head>
<body>

<%@ include file = "../fragments/header.jsp" %>
<h1>Pagamento</h1>
<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="" method="get">
          <div class="col-50">
            <h3>Pagamento</h3>
            <label for="fname">Accettazione carta di Credito</label>
            
           <label for="ccnum">Numero Carta Credito</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
           
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352">
              </div>
            </div>
          
        <label>
          <input type="radio" checked="checked" name="sameadr">Indirizzo
        </label>
        <input type="submit" value="Continua checkout" class="btn">
      </form>
    </div>
    
  <div class="col-25">
    <div class="container">
      <h4>Carrello</h4>
      <p><a href="#">Product 1</a> <span class="price">$15</span></p>
      <p><a href="#">Product 2</a> <span class="price">$5</span></p>
      <p><a href="#">Product 3</a> <span class="price">$8</span></p>
      <p><a href="#">Product 4</a> <span class="price">$2</span></p>
      <hr>
      <p>Totale <span class="price" style="color:black"><b>$30</b></span></p>
    </div>
  </div>
</div>

</body>
</html>