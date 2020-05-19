<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>Home - Diario Alimentare</title> 

</head>
<body>
<form action="LoginServlet" method="post">
<a href="http://localhost:8080/MyKcalCounter/Benvenuto">
    <img src="logo.png" height="100px" width="150px"
		alt="impossibile caricare l'immagine">  
</a>

<% out.println("Benvenuto nel programma "+request.getParameter("user"));%>
 <br>
 
   <p>Questo programma è pensato per tutti gli appassionati del<br>
     fitness e lo scopo è quello di aiutare a tenere conto<br>
     delle <strong>calorie</strong> che si consumano durante la giornata.</p>   
    <br>
   

   
</form>

</body>
</html>