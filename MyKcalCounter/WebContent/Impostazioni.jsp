<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Impostazioni - MyKcalCounter</title> 
<link href="CSS/style1.css"
rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="CSS/menu.css">
<link rel="stylesheet" type="text/css" href="CSS/all.min.css">
<link rel="stylesheet" href="CSS/owl.carousel.min.css">
<link rel="stylesheet" href="CSS/owl.theme.default.min.css">
<link rel="stylesheet" type="text/css" href="CSS/styles.css">
</head>
<body class="contactBody">
	<div class="banner"></div>
	<div class="header">
		<div class="header1">
			<div class="logo">
				<a href="Login.jsp"><img src="images/logo1.png" alt="logo-1"></a>
			</div>
		</div>

		<div class="header2">
			<ul class="nav site-nav">
				<li class="flyout"><a href="#">About</a> <!-- Flyout -->
					<ul class="flyout-content nav stacked">
						<li class="flyout-alt"><a href="#">Versione</a>
							<ul class="flyout-content nav stacked">
								<li><a href="#">1.1.2020</a></li>
							</ul></li>
						<li class="flyout-alt"><a href="#">Data di siviluppo</a>
							<ul class="flyout-content nav stacked">
								<li><a href="#">27/05/2020</a></li>
							</ul></li>
						<li class="flyout-alt"><a href="#">Autori</a> <!-- Flyout -->
							<ul class="flyout-content nav stacked">
								<li><a href="#">Andrea<br> <br>Alessio<br>
										<br>Alessandro<br> <br>Suzie
								</a></li>
							</ul></li>
					</ul> <!-- * -->
				<li><a href="#">Diario</a> <!-- * -->
				<li><a href="#">grafici</a> <!-- * -->
				<li><a href="#">Impostazioni</a> <!-- * -->
				<li class="flyout"><a href="#">Help</a>
					<ul class="flyout-content nav stacked">
						<li><a href="#">Come Registrarsi</a></li>
						<li><a href="#">Come Inserire alimenti<br> <br>
								nel mio diario
						</a></li>
						<!-- * -->
					</ul>
			</ul>
		</div>
	</div>
	
	<!-- connessione con il DB -->
	<%
	// carica il file di classe del driver 
	Class.forName("com.mysql.cj.jdbc.Driver");

	// apre la connessione con il database "nutrizione"
	Connection dbconn = DriverManager
			.getConnection("jdbc:mysql://localhost:3306/nutrizione?user=root&password=Alessio97&serverTimezone=UTC");

	// creo uno statement
	Statement statement = dbconn.createStatement();

	//imposto i parametri user
    String user = (String) session.getAttribute("user");
	%>
   
<div class="wrapper">
		<div class="title"></div>
		<form class="form">
			
			<fieldset>
				<legend>Modifica Account</legend>
				<br>
				<p>NB: devi reimpostare <strong>tutti</strong> i parametri</p><br>
				<label for="newUsnm">Username:</label> <input type="text"
				class="name entry " id="NewUsnm" name="newUsnm"> <label for="newPssw">Password:</label>
			<input type="password" class="name entry " id="newPssw" name="newPssw">
			<br> <br>
				
				<!-- peso attuale -->
				<label for="newPesoAtt">Peso attuale(kg):</label> <input 
				    type="number" step="0.01" min="40" max="120"
					class="name entry " id="newPesoAtt" name="newPesoAtt"> <br>
					
					
					<!-- obiettivo di peso -->
				<br> <label for="newObiettivo">Obiettivo (kg):</label> <input
					type="number" step="0.01" min="40" max="120" 
					class="name entry "	id="newObiettivo" name="newObiettivo"> <br> 
					
					
					<!-- altezza -->
					<br> <label
					for="newAltezza">Altezza (cm):</label> <input type="number"
					step="0.01" min="120" max="220" class="name entry " id="newAltezza"
					name="newAltezza"><br>
					
			    <!-- sesso -->
				<br> Femmina<input type="radio" name="newSesso" value="F">
			       	Maschio <input type="radio" name="newSesso" value="M"> <br>
				
				<!-- nazionalità -->
				<br> Nazionalità <select name="newNazionalita">
					<option value="Italiana" selected="selected">Italiana</option>
					<option value="Francese">Francese</option>
					<option value="Tedesca">Tedesca</option>
					<option value="Olandese">Olandese</option>
					<option value="Russa">Russa</option>
					<option value="Inglese">Inglese</option>
					<option value="Spagnola">Spagnola</option>
					<option value="Altro">Altro</option>
				</select>
				<br>
			</fieldset>
			<br>
			<button class="submit entry" onclick="thanks()">Invia modifiche</button>
			<br><br><br>
			<div class="shadow"></div>
			 <% 
			 
			 String newUser = request.getParameter("newUsnm");
			 String newPass = request.getParameter("newPssw");
			 Double newPesoAtt = Double.parseDouble(request.getParameter("newPesoAtt"));
			 Double newObiettivo = Double.parseDouble(request.getParameter("newObiettivo"));
			 int newAltezza = Integer.parseInt(request.getParameter("newAltezza"));
			 String newSesso = request.getParameter("newSesso");
			 String newNazionalita = request.getParameter("newNazionalita");
			 
			 
			 String query = "UPDATE nutrizione.utenti SET USERNAME = '"+newUser+"', PASSWORD = '"+newPass+"', PESO_ATTUALE = '"+newPesoAtt+"', "+
    		 "OBIETTIVO = '"+newObiettivo+"', SESSO = '"+newSesso+"', ALTEZZA = '"+newAltezza+"', NAZIONALITA = '"+newNazionalita+"' WHERE (USERNAME = '"+session.getAttribute("user")+"');";
              ResultSet rs = statement.executeQuery(query);
    %>
			
		</form>

	</div>	
	<div class=form></div>
	<div class="footer">
		<p>
			CONTATTI:<br>011200649<br>EMAIL:<br>mykcalcounter@gmail.com
		</p>
		<a target="_blank" href="http://www.facebook.com"><img
			src="images/face2.png" alt="face-1"></a> <a target="_blank"
			href="http://www.twitter.com"><img src="images/twi1.png"
			alt="tw-1"></a> <a target="_blank" href="http://www.instagram.com"><img
			src="images/insta.jpg" alt="tw-1"></a> <a target="_blank"
			href="http://www.youtube.com"><img src="images/you.png"
			alt="tw-1"></a> <a target="_blank" href="http://www.twitter.com"><img
			src="images/email.jpg" alt="tw-1"></a>
	</div>

</body>
</html>