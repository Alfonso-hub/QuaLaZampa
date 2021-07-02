<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="pacchetto.model.Carrello"
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
          <input type="radio" name="sameadr">Indirizzo inserito nel lato registrazione
        </label>
        <label>
        	<input type="radio" name="sameadr" id="selezionato" onclick="funzione()"> Nuovo indirizzo spedizione
        </label>
        
        <script> function funzione(){
        	var variabile= document.getElementById("selezionato");
    		document.createElements("p");
    		
        } 
        		
        </script>
        <input type="submit" value="Continua checkout" class="btn">
      </form>
    </div>
    
  <div class="col-25">
    <div class="container">
      <h4>Carrello</h4>
      <% Carrello car= (Carrello) request.getSession().getAttribute("carrello");
       		for(int i=0;i<car.getDimensione();i++){
       			
       
       %>
       <p> <%= car.getCarrello().get(i).getNome() %> prezzo: <%= car.getCarrello().get(i).getTotPrezzo() %> </p>
       <%}%>
       
      <hr>
      
      <p>Totale <b><%= String.format("%.2f",car.calcolaSpesa())  %></b></p>
    </div>
  </div>
</div>

</body>
</html>