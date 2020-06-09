<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrazione - Diario Alimentare</title>
<link href="CSS/contact1.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="CSS/menu.css">
<script src="JS/slide.js" type="text/javascript"></script>
<body class="contactBody">
</head>
<body class="contactBody">
	<div class="banner"></div>
	<div class="header">
		<div class="header1">
			<div class="logo">
				<a href="homepage.html"><img src="images/logo1.png" alt="logo-1"></a>
			</div>
			<div class="link">
				<a href="Login.jsp">Login</a>
			</div>
			<div class="link">
				<a href="Registrazione.jsp">Registrati</a>
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
								<li><a href="#">Andrea<br>
									<br>Alessio<br>
									<br>Alessandro<br>
									<br>Suzie
								</a></li>
							</ul></li>
					</ul>
				<li><a href="#">Diario</a>
				<!-- * -->
				<li><a href="#">grafici</a>
				<!-- * -->
				<li><a href="#">Impostazioni</a>
				<!-- * -->
				<li class="flyout"><a href="#">Help</a>
					<ul class="flyout-content nav stacked">
						<li><a href="#">Come Registrarsi</a></li>
						<li><a href="#">Come Inserire alimenti<br>
							<br> nel mio diario
						</a></li>
						<!-- * -->
					</ul>
			</ul>
		</div>
	</div>

	<h1>Inserisci i dati di registrazione</h1>
	<div class="wrapper">
		<div class="title"></div>
		<form class="form" action="RegistrationServlet" method=get>
			<label for="usnm">Username:</label> <input type="text"
				class="name entry " id="usnm" name="usnm"> <label for="pssw">Password:</label>
			<input type="password" class="name entry " id="pssw" name="pssw">
			<br> <br>
			<fieldset>
				<legend>Dati personali</legend>
				<label for="pesoAtt">Peso attuale (kg):</label> <input type="number" step="0.01" min="40" max="120"
					class="name entry " id="pesoAtt" name="pesoAtt"> <br>
				<br> <label for="obiettivo">Obiettivo (kg):</label> <input
					type="number" step="0.01" min="40" max="120" class="name entry "
					id="obiettivo" name="obiettivo"> <br> <br> <label
					for="altezza">Altezza (cm):</label> <input type="number"
					step="0.01" min="120" max="220" class="name entry " id="altezza"
					name="altezza"><br>
				<br> Femmina<input type="radio" name="sesso" value="F">
				Maschio <input type="radio" name="sesso" value="M"> <br>
				<br> Nazionalità <select name="nazionalita">
					<option value="Italiana" selected="selected">Italiana</option>
					<option value="Francese">Francese</option>
					<option value="Tedesca">Tedesca</option>
					<option value="Olandese">Olandese</option>
					<option value="Russa">Russa</option>
					<option value="Inglese">Inglese</option>
					<option value="Spagnola">Spagnola</option>
					<option value="Altro">Altro</option>
				</select>
			</fieldset>
			<br>
			<button class="submit entry" onclick="thanks()">Registrati</button>
			<div class="shadow"></div>
		</form>

	</div>
	<script src="app.js"></script>
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