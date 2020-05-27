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
<h3> Benvenuto nel tuo diario<%//out.println(session.getAttribute("user"));%>
<br>
<br> </h3>
<form class="form" action="DBDiarioServlet"  method=post>
<div >
    <label for="name"><strong> Colazione :</strong> </label>
    <br>
<%//out.println(request.getAttribute("valore")); %>
<p>Mela, 10kcal, 5,5 carboidrati, 0,0 grassi, 0,2 proteine<p>

  </div>
 <br>
  <div class="form-example">
    <a href=http://localhost:8080/MyKcalCounter/InserimentoAlimenti.jsp>Inserisci alimento</a>
  </div>
  <br>
  <div class="form-example">
    <label for="name"><strong>Merenda :</strong> </label>
  </div>
 <br>
  <div class="form-example">
  <a href=http://localhost:8080/MyKcalCounter/InserimentoAlimenti.jsp>Inserisci alimento</a>
  </div>
  <br>
  <div class="form-example">
    <label for="name"><strong>Pranzo :</strong> </label>
  </div>
  <p>olio, 90kcal, 5,5 carboidrati, 0,0 grassi, 0,2 proteine<p>
<p>pane, 340kcal, 5,5 carboidrati, 0,0 grassi, 0,2 proteine<p>
<p>Mela, 10kcal, 5,5 carboidrati, 0,0 grassi, 0,2 proteine<p>
 <br>
  <div class="form-example">
     <a href=http://localhost:8080/MyKcalCounter/InserimentoAlimenti.jsp>Inserisci alimento</a>
  </div>
  <br>
  <div class="form-example">
    <label for="name"><strong>Spuntino :</strong> </label>
  </div>
 <br>
  <div class="form-example">
     <a href=http://localhost:8080/MyKcalCounter/InserimentoAlimenti.jsp>Inserisci alimento</a>
  </div>
  <br>
  <div class="form-example">
    <label for="name"><strong>Cena :</strong> </label>
  </div>
 <br>
  <div class="form-example">
    <a href=http://localhost:8080/MyKcalCounter/InserimentoAlimenti.jsp>Inserisci alimento</a>
  </div>
  <br>
  <br>
  </form>

  </body>
</html>