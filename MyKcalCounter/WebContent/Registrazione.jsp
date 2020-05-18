<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrazione - Diario Alimentare</title>
</head>
<body>

<h1>Inserisci i dati di registrazione</h1>

<form action="RegistrationServlet"  method=get>
  
  
  <label for="usnm">Username:</label>
  <input type="text" id="usnm" name="usnm">
  <label for="pssw">Password:</label>
  <input type="password" id="pssw" name="pssw">
  
  <br>
  <br>
  <fieldset><legend>Dati personali</legend>
  <label for="pesoAtt">Peso attuale:</label>
  <input type="number" id="pesoAtt" name="pesoAtt">
  
  <br>
  <br>
  <label for="obiettivo">Obiettivo:</label>
  <input type="number" id="obiettivo" name="obiettivo">
  
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
  <br>
  <br>
<input type="submit" value="Invia">
</form>


</body>
</html>