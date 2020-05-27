<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inserimento alimenti - MyKcalCounter</title>
</head>
<body>

<%out.println("Diario di: "+ session.getAttribute("user"));%>

<!-- immagine -->
 <img class="logo" src="logo.png" style="display:block;margin:auto" height="100px" width="150px"
		alt="impossibile caricare l'immagine">

<h1 >Inserisci informazioni sull'alimento</h1>

<!-- Form inserimento dati -->
<form class="form" action="InserimentoServlet"  method=post>
  
  <fieldset><legend>Registra Alimento</legend>
  
  <br>
  <label for="alimento">Alimento:</label>
  <input type="text" name="alimento" id="alimento" list="alimento_list">
  <datalist id="alimento_list">
  <option value="Pera">Pera</option>
  <option value="Mela">Mela</option>
  <option value="Banana">Banana</option>
  <option value="Kiwi">Kiwi</option>
  
  </datalist>
  <br>
  <br>
  
  <label for="quantita">Quantità:</label>
  <input type="number" step="0.01" min="0.01" max="120" id="quantita" name="quantita"> da 100g
  <br>
  <br>
  
  Colazione <input type="radio" name="pasto" value="Colazione">
  Merenda <input type="radio" name="pasto" value="Merenda">
  Pranzo <input type="radio" name="pasto" value="Pranzo">
  Spuntino <input type="radio" name="pasto"value="Spuntino">
  Cena <input type="radio" name="pasto" value="Cena">
  <br>
  <br>
 
</datalist>
  
  </fieldset>
  
  <br>
  <br>
<input class="invia" type="submit" value="Invia">
</form>





</body>
</html>