<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Aggiungi prodotto </title>
</head>
<body>

<h1> Aggiungi le informazioni richieste per aggiungere un nuovo prodotto al catalogo </h1>

<form action="AggiungiProdAdmin" method="post" enctype="multipart/form-data">
<label> Nome prodotto: </label> <br>
<input type="text" name="nomeProd" placeholder="Inserisci il nome del prodotto"  size="40px" required> <br>
<label> Disponibilità: </label> <br>
<input type="text" name="disponibilitaProd" placeholder="Inserisci la disponibilità (SI o NO)" size="40px" required> <br>
<label> Quantità: </label> <br>
<input type="text" name="quantitaProd" placeholder="Inserisci la quantita del prodotto" size="40px" required> <br>
<label> IVA del prodotto: </label> <br>
<input type="text" name="ivaProd" placeholder="Inserisci l'iva del prodotto (0.22)" size="40px" required> <br>
<label> Descrizione: </label> <br>
<input type="text" name="descrizioneProd" placeholder="Inserisci la descrizione del prodotto" size="40px" required> <br>
<label> Prezzo base: </label> <br>
<input type="text" name="prezzoBaseProd" placeholder="Inserisci il prezzo base del prodotto" size="40px" required> <br>
<label> Aggiungi un immagine: </label> <br>
<input type="file" name="fileProd" accept=".jpg, .jpeg, .png"> <br> <br>
<input type="submit" value="Conferma aggiunta">
</form>

</body>
</html>