<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="CSS/style1.css">

<title>Registrazione - MyKcalCounter</title>
</head>
<body>

<!-- immagine -->
<img class="logo" src="logo.png" style="display:block;margin:auto" height="100px" width="150px"
		alt="impossibile caricare l'immagine">  
<br>

<h1 >Inserisci i dati di registrazione</h1>

<!-- Form inserimento dati -->
<form class="form" action="RegistrationServlet"  method=get>
  
  
  <label for="user">Username:</label>
  <input type="text" id="user" name="user">
  <label for="pass">Password:</label>
  <input type="password" id="pass" name="pass">
  
  <br>
  <br>
  <fieldset><legend>Dati personali</legend>
  <label for="pesoAtt">Peso attuale:</label>
  <input type="number" step="0.01" min="40" max="120" id="pesoAtt" name="pesoAtt">
  
  <br>
  <br>
  <label for="obiettivo">Obiettivo:</label>
  <input type="number" step="0.01" min="40" max="120" id="obiettivo" name="obiettivo">
  
  <br>
  <br>
  Maschio <input type="radio" name="sesso" value="M">
  Femmina <input type="radio" name="sesso" value="F">
  
  <br>
  <br>
   <label for="altezza">Altezza (cm):</label>
   <input type="number" id="altezza" name="altezza">
   
   <br>
   <br>
   Nazionalità <select name="nazionalita">
   <option value="Italiana" selected="selected"> Italiana</option>
   <option value="Francese" > Francese</option>
   <option value="Tedesca" > Tedesca</option>
   <option value="Olandese" > Olandese</option>
   <option value="Russa" > Russa</option>
   <option value="Inglese" > Inglese</option>
   <option value="Spagnola" > Spagnola</option>
   <option value="Altro" > Altro </option>
   </select>
  
  </fieldset>
  <br>
  <a  href="http://localhost:8080/MyJavaServerPages/Login.jsp">Gia registrato? Login</a>
  <br>
  <br>
<input class="invia" type="submit" value="Invia">
</form>


</body>
</html>