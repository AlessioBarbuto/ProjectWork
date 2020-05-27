<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="CSS/mystyle.css">

<title>Accesso - MyKcalCounter</title>
</head>
<body>

<img  src="logo.png" style="display:block;margin:auto" height="100px" width="150px"
		 alt="impossibile caricare l'immagine">

<div align=center>
<h1>Benvenuto! Eseguire l'accesso o effettuare la registrazione!</h1>
<form action="LoginServlet" method="post">
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
</form>
</div>

</body>
</html>