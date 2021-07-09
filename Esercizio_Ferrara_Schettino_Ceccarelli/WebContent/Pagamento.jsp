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
      <form action="Pagamento" method="get">
          <div class="col-50">
            <h3>Pagamento</h3>
            <label for="fname">Accettazione carta di Credito</label>
            
           <label>Numero Carta Credito</label>
            <input type="text" name="cardnumber" placeholder="1111-2222-3333-4444">
           
                <label>CVV</label>
                <input type="text" name="cvv" placeholder="352">
              </div>
          
        <label>
          <input type="radio" name="sameadr" onclick="elimina()" value="vecchioIndirizzo">Indirizzo inserito nel lato registrazione
        </label>
        
        <script>
        function elimina(){
        	var container= document.getElementById("divisore");
        	var element= document.getElementById("p1");
        	var element2= document.getElementById("inp1");
        	var element3= document.getElementById("p2");
        	var element4= document.getElementById("inp2");
        	var element5= document.getElementById("p3");
        	var element6= document.getElementById("inp4");
        	var element7= document.getElementById("p5");
        	var element8= document.getElementById("inp7");
        	container.removeChild(element);
        	container.removeChild(element2);
        	container.removeChild(element3);
        	container.removeChild(element4);
        	container.removeChild(element5);
        	container.removeChild(element6);
        	container.removeChild(element7);
        	container.removeChild(element8);
        }
        </script>
        
        <label>
        	<input type="radio" name="sameadr" onclick="aggiungi()" value="nuovoIndirizzo"> Nuovo indirizzo spedizione
        </label>
        
        <div id="divisore"></div>
        
        <script> function aggiungi(){
    		var p= document.createElement("p");
    		var tipo0= document.createAttribute("id");
    		tipo0.value="p1";
    		p.setAttributeNode(tipo0);
    		var text= document.createTextNode("Inserisci il CAP: ");
    		p.appendChild(text);
            document.getElementById("divisore").appendChild(p);
    		
            var inpText= document.createElement("input");
    		var tipo= document.createAttribute("type");
    		tipo.value="text";
    		inpText.setAttributeNode(tipo);
    		var tipo1= document.createAttribute("id");
    		tipo1.value="inp1";
    		inpText.setAttributeNode(tipo1);
    		var nome= document.createAttribute("name");
    		nome.value="cap";
    		inpText.setAttributeNode(nome);
    		var place= document.createAttribute("placeholder");
    		place.value="Esempio: 80053";
    		inpText.setAttributeNode(place);
    		document.getElementById("divisore").appendChild(inpText);
    		
    		var prov= document.createElement("p");
    		var text2= document.createTextNode("Inserisci la provincia: ");
    		prov.appendChild(text2);
    		var tip= document.createAttribute("id");
    		tip.value="p2";
    		prov.setAttributeNode(tip);
    		document.getElementById("divisore").appendChild(prov);
    		
    		var inpText2= document.createElement("input");
    		var tipo2= document.createAttribute("type");
    		tipo2.value="text";
    		inpText2.setAttributeNode(tipo2);
    		var tip1= document.createAttribute("id");
    		tip1.value="inp2";
    		inpText2.setAttributeNode(tip1);
    		var nome2= document.createAttribute("name");
    		nome2.value="provincia";
    		inpText2.setAttributeNode(nome2);
    		var place2= document.createAttribute("placeholder");
    		place2.value="Esempio: Salerno";
    		inpText2.setAttributeNode(place2);
    		document.getElementById("divisore").appendChild(inpText2);
    		
    		var city= document.createElement("p");
    		var text3= document.createTextNode("Inserisci la città: ");
    		city.appendChild(text3);
    		var tip3= document.createAttribute("id");
    		tip3.value="p3";
    		city.setAttributeNode(tip3);
    		document.getElementById("divisore").appendChild(city);
    		
    		var inpText3= document.createElement("input");
    		var tipo3= document.createAttribute("type");
    		tipo3.value="text";
    		inpText3.setAttributeNode(tipo3);
    		var tip4= document.createAttribute("id");
    		tip4.value="inp4";
    		inpText3.setAttributeNode(tip4);
    		var nome3= document.createAttribute("name");
    		nome3.value="citta";
    		inpText3.setAttributeNode(nome3);
    		var place3= document.createAttribute("placeholder");
    		place3.value="Esempio: Maiori";
    		inpText3.setAttributeNode(place3);
    		document.getElementById("divisore").appendChild(inpText3);
    		
    		var via= document.createElement("p");
    		var text4= document.createTextNode("Inserisci la via: ");
    		via.appendChild(text4);
    		var tip5= document.createAttribute("id");
    		tip5.value="p5";
    		via.setAttributeNode(tip5);
    		document.getElementById("divisore").appendChild(via);
    		
    		var inpText4= document.createElement("input");
    		var tipo4= document.createAttribute("type");
    		tipo4.value="text";
    		inpText4.setAttributeNode(tipo4);
    		var tip7= document.createAttribute("id");
    		tip7.value="inp7";
    		inpText4.setAttributeNode(tip7);
    		var nome4= document.createAttribute("name");
    		nome4.value="via";
    		inpText4.setAttributeNode(nome4);
    		var place4= document.createAttribute("placeholder");
    		place4.value="Esempio: via Verdi n 85";
    		inpText4.setAttributeNode(place4);
    		document.getElementById("divisore").appendChild(inpText4);
        } 
        </script>
        <input type="submit" value="Continua checkout" class="btn">
      </form>
      </div>
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