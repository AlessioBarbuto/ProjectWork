<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
<meta charset="ISO-8859-1">
<title>Accesso - Diario Alimentare</title>
<link href="CSS/contact.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="CSS/menu.css">
<script src="JS/slide.js" type="text/javascript"></script>

</head>
<body class="contactBody"> 
 <div class="banner"></div>
 <div  class="header">
   <div class="header1">
    <div class="logo"><a href="homepage.html"><img src="images/logo1.png" alt="logo-1"></a></div>
    <div class="link"> <a href="Login.jsp">Login</a></div>
	 <div class="link"><a href="Registrazione.jsp">Registrati</a></div>
 </div>
 
 <div class="header2">
<ul class="nav site-nav">
<li class="flyout">
<a href="#">About</a>
<!-- Flyout -->
<ul class="flyout-content nav stacked">
<li class="flyout-alt"><a href="#">Versione</a>
 <ul class="flyout-content nav stacked">
 <li><a href="#">1.1.2020</a></li>
 </ul>
</li>
<li class="flyout-alt"><a href="#">Data di siviluppo</a>
 <ul class="flyout-content nav stacked">
<li><a href="#">27/05/2020</a></li>
</ul>
</li>
<li class="flyout-alt">
<a href="#">Autori</a>
<!-- Flyout -->
<ul class="flyout-content nav stacked">
<li><a href="#">Alessio<br><br>Alessandro<br><br>Suzie</a></li>
</ul>
</li>
</ul>
<!-- * -->
<li><a href="#">Diario</a><!-- * -->
<li><a href="#">grafici</a><!-- * -->
<li><a href="#">Impostazione</a><!-- * -->
<li class="flyout"><a href="#">Help</a>
<ul class="flyout-content nav stacked">
<li><a href="#">Come Registrati</a></li>
<li><a href="#">Come Personalizzare<br><br> la Mia Dieta</a></li><!-- * -->
</ul>
</ul>

            <!--<a href="Login.jsp">About</a> 
			 <a href="Login.jsp">Diario</a> 
			 <a href="Login.jsp">Grafici</a> 
			 <a href="Login.jsp">Impostazioni</a> 
			 <a href="Login.jsp">Help</a>-->
  </div>
</div>

<!--  <img  src="logo.png" height="100px" width="150px"
		 alt="impossibile caricare l'immagine">-->

<h1>Benvenuto! Eseguire l'accesso o effettuare la registrazione!</h1>
  <div class="wrapper">
        <div class="title"></div>
       <form class="form">
        <form action="LoginServlet" method=post>
        <input type="text" class="name entry "  id="user" name="user" placeholder="Nome"/>
		<input type="text" class="email entry"  id="pass"  name="pass" placeholder="Password"/> 
		<button class="submit entry" onclick="thanks()">Invia</button>
		<a  href="http://localhost:8080/MyJavaServerPages/Registrazione.jsp">Registrati</a>
	<div class="shadow"></div>
      </div>
 <script src="app.js"></script>
<!--  <form action="LoginServlet" method=post>
<br>
<br>
<label for="user">Username:</label>
<input type="text" id="user" name="user">
<br>
<br>
<label for="pass">Password:</label>
<input type="password" id="pass" name="pass">
<br>
<br>                             
<input type="submit" value="Invia">
<br>
<a  href="http://localhost:8080/MyJavaServerPages/Registrazione.jsp">Registrati</a>
</form>-->
<div class="footer">
   <p> CONTATTI:<br>011200649<br>EMAIL:<br>mykcalcounter@gmail.com</p>
   <a  target="_blank" href="http://www.facebook.com"><img src="images/face2.png" alt="face-1"></a>
   <a  target="_blank"  href="http://www.twitter.com"><img src="images/twi1.png"  alt="tw-1"></a>
   <a  target="_blank"  href="http://www.instagram.com"><img src="images/insta.jpg"  alt="tw-1"></a>
   <a  target="_blank"  href="http://www.youtube.com"><img src="images/you.png"  alt="tw-1"></a>
   <a target="_blank"  href="http://www.twitter.com"><img src="images/email.jpg"  alt="tw-1"></a>
   </div>
</body>
</html>