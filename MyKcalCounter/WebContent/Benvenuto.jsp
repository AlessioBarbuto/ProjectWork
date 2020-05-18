<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>Home - Diario Alimentare</title> <!-- landing page, questa è la pagina di reindirazzamento -->

</head>
<body>
<form action="LoginServlet">
<img src="logo.png" height="100px" width="150px"
		alt="impossibile caricare l'immagine">

<% String nome = request.getParameter("usnm");
out.println("Benvenuto nel programma "+nome);%>

 <h1>ecco il tuo diario alimentare</h1>  
 <br>
   <%= "Expression tag: Benvenuto "+ nome %>
   <p>Questo programma è pensato per tutti gli appassionati del<br>
     fitness e lo scopo è quello di aiutarti a tenere conto<br>
     delle <strong>calorie</strong> che consumi durante il giorno.</p>   
   
   <br>
   
</form>

</body>
</html>