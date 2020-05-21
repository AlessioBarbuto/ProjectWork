<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<head>
<link rel="stylesheet" type="text/css" href="resources/StileDiario.css">
</head>

<meta charset="ISO-8859-1">
<title>DIARIO</title>
</head>

<body>
  <a href="http://localhost:8080/MyJavaServerPages/Benvenuto.jsp/">
<img src="logo.png" height="100px" width="150px"
		alt="impossibile caricare l'immagine"></a>
<br>
<br>
<nav> 
    <a href="http://localhost:8080/MyJavaServerPages/Diario.jsp/">Diario</a> |
    <a href="http://localhost:8080/MyJavaServerPages/Grafici.jsp/">Grafici</a>  |
    <a href="http://localhost:8080/MyJavaServerPages/Impostazioni.jsp/">Impostazioni</a> |
    <a href="http://localhost:8080/MyJavaServerPages/Help.jsp/">Help</a> |
    
    </nav>
<h3> Benvenuto nel tuo diario </h3>

<div >
    <label for="name"><strong> Colazione :</strong> </label>
    <input type="text" name="name" id="name" >
  </div>
 <br>
  <div class="form-example">
    <input type="submit" value="Aggiungi alimento">
  </div>
  <br>
  <div class="form-example">
    <label for="name"><strong>Spuntino :</strong> </label>
    <input type="text" name="name" id="name" >
  </div>
 <br>
  <div class="form-example">
    <input type="submit" value="Aggiungi alimento">
  </div>
  <br>
  <div class="form-example">
    <label for="name"><strong>Pranzo :</strong> </label>
    <input type="text" name="name" id="name" >
  </div>
 <br>
  <div class="form-example">
    <input type="submit" value="Aggiungi alimento">
  </div>
  <br>
  <div class="form-example">
    <label for="name"><strong>Merenda :</strong> </label>
    <input type="text" name="name" id="name" >
  </div>
 <br>
  <div class="form-example">
    <input type="submit" value="Aggiungi alimento">
  </div>
  <br>
  <div class="form-example">
    <label for="name"><strong>Cena :</strong> </label>
    <input type="text" name="name" id="name" >
  </div>
 <br>
  <div class="form-example">
    <input type="submit" value="Aggiungi alimento">
  </div>
  <br>
  <br>
  <form>
  <label><strong>Inserisci data di riferimento</strong>
    <input type="date" name="mydatetime">
  </label>
  <input type="reset"  value="Reset">
  <input type="submit" value="Invio">
</form>

  </body>
</html>