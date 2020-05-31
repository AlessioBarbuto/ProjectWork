<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inserimento alimenti - MyKcalCounter</title>
</head>
<body>

	<%
		out.println("Diario di: " + session.getAttribute("user"));
	%>

	<!-- immagine -->
	<img class="logo" src="logo.png" style="display: block; margin: auto"
		height="100px" width="150px" alt="impossibile caricare l'immagine">

	<h1>Inserisci informazioni sull'alimento</h1>

	<!-- Form inserimento dati -->
	<form class="form" action="InserimentoServlet" method=post>

		<fieldset>
			<legend>Registra Alimento</legend>

			<br> <label for="alimento">Alimento:</label> <input type="text"
				name="alimento" id="alimento" list="alimento_list">
			<datalist id="alimento_list">
				<option value="Pera">Pera</option>
				<option value="Anguria">Anguria</option>
				<option value="Arachidi">Arachidi</option>
				<option value="Carote">Carote</option>
				<option value="Yogurt Bianco">Yogurt Bianco</option>
				<option value="Yogurt greco">Yogurt greco</option>
				<option value="Mela">Mela</option>
				<option value="Arancio">Arancio</option>
				<option value="Burro di arachidi">Burro di arachidi</option>
				<option value="Ciliegie">Ciliegie</option>
				<option value="Mandorle">Mandorle</option>
				<option value="Melone">Melone</option>
				<option value="Noccole">Nocciole</option>
				<option value="Pancetta">Pancetta</option>
				<option value="Vitello">Vitello</option>
				<option value="Banana">Banana</option>
				<option value="Cioccolato">Cioccolato</option>
				<option value="Mela">Fette Biscottate</option>
				<option value="Fragola">Fragola</option>
				<option value="Mandarino">Mandarino</option>
				<option value="Marmellata">Marmellata</option>
				<option value="Noci">Noci</option>
				<option value="Olio EVO">Olio EVO</option>
				<option value="Uovo">Uovo</option>
				<option value="Kiwi">Kiwi</option>
				<option value="Gallette">Gallette</option>
				<option value="Gallette Farro">Gallette Farro</option>
				<option value="Gallette Mais">Gallette Mais</option>
				<option value="Latte scremato">Latte scremato</option>
				<option value="Merluzzo">Merluzzo</option>
				<option value="Nutella">Nutella</option>
				<option value="Tonno sott'olio">Tonno sott'olio</option>
				<option value="Grissini">Grissini</option>
				<option value="Kiwi">Kiwi</option>
				<option value="Latte parz. scremato ">Latte parz. scremato</option>
				<option value="Latte Intero">Latte Intero</option>
				<option value="Lattuga">Lattuga</option>
				<option value="Mozzarella">Mozzarella</option>
				<option value="Mozzarella light">Mozzarella light</option>
				<option value="Sugo di pomodoro">Sugo di pomodoro</option>
				<option value="Pane Bianco">Pane Bianco</option>
				<option value="Pane di segale">Pane di segale</option>
				<option value="Pane integrale">Pane integrale</option>
				<option value="Parmigiano">Parmigiano</option>
				<option value="Pollo coscia">Pollo coscia</option>
				<option value="Pomodoro">Pomodoro</option>
				<option value="Riso">Riso</option>
				<option value="Sottiletta">Sottiletta</option>
				<option value="Pasta">Pasta</option>
				<option value="Pasta Integrale">Pasta Integrale</option>
				<option value="Pecorino">Pecorino</option>
				<option value="Peperone">Peperone</option>
				<option value="Pistacchi">Pistacchi</option>
				<option value="Petto pollo">Pollo petto</option>
				<option value="Prosciutto cotto">Prosciutto cotto</option>
				<option value="Salmone Affumicato">Salmone Affumicato</option>

			</datalist>
			<br> <br> <label for="quantita">Quantità:</label> <input
				type="number" step="0.01" min="0.01" max="120" id="quantita"
				name="quantita"> da 100g <br> <br> Colazione <input
				type="radio" name="pasto" value="Colazione"> Merenda <input
				type="radio" name="pasto" value="Merenda"> Pranzo <input
				type="radio" name="pasto" value="Pranzo"> Spuntino <input
				type="radio" name="pasto" value="Spuntino"> Cena <input
				type="radio" name="pasto" value="Cena"> <br> <br>

			</datalist>

		</fieldset>

		<br> <br> <input class="invia" type="submit" value="Invia">
	</form>





</body>
</html>