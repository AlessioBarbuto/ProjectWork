<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" import="java.sql.*" import="java.time.*"
	import="java.time.format.DateTimeFormatter"
	import="java.util.ArrayList" import="java.text.DecimalFormat"
	import="it.projectwork.alimenti.AlimentiRegistrati"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<head>
<link href="CSS/style1.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="CSS/menu.css">
<link rel="stylesheet" type="text/css" href="CSS/all.min.css">
<link rel="stylesheet" href="CSS/owl.carousel.min.css">
<link rel="stylesheet" href="CSS/owl.theme.default.min.css">
<link rel="stylesheet" type="text/css" href="CSS/styles.css">
</head>

<meta charset="ISO-8859-1">
<title>Diario - MyKcalCounter</title>

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
				<li><a href="http://localhost:8080/MyKcalCounter/Diario.jsp">Diario</a> <!-- * -->
				<li><a href="#">grafici</a> <!-- * -->
				<li><a href="http://localhost:8080/MyKcalCounter/Impostazioni.jsp">Impostazioni</a> <!-- * -->
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
	<div align="center">
		<!-- messaggio di bentornato -->
		<h2>
			Bentornato nel tuo diario
			<%
			out.println(session.getAttribute("user"));
		%>
			<br> <br>
		</h2>

		<!-- connessione con il DB -->
		<%
			Connection dbconn = null;

		// carica il file di classe del driver 
		Class.forName("com.mysql.cj.jdbc.Driver");

		// apre la connessione con il database "nutrizione"
		dbconn = DriverManager
				.getConnection("jdbc:mysql://localhost:3306/nutrizione?user=root&password=Alessio97&serverTimezone=UTC");

		// manda in esecuzione l'istruzione SQL
		Statement statement1 = dbconn.createStatement();
		Statement statement2 = dbconn.createStatement();
		Statement statement3 = dbconn.createStatement();
		Statement statement4 = dbconn.createStatement();
		Statement statement5 = dbconn.createStatement();
		Statement statement6 = dbconn.createStatement();

		//imposto i parametri data e user
		String user = (String) session.getAttribute("user");
		LocalDate data = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");
		data.format(formatter);

		String query = "SELECT * FROM nutrizione.consumati LEFT JOIN nutrizione.alimenti ON consumati.alimento = "
				+ "alimenti.NOME WHERE giorno =" + "'" + data + "'" + " AND utente=" + "'" + user + "'" + "";
		ResultSet rs1 = statement1.executeQuery(query);
		ResultSet rs2 = statement2.executeQuery(query);
		ResultSet rs3 = statement3.executeQuery(query);
		ResultSet rs4 = statement4.executeQuery(query);
		ResultSet rs5 = statement5.executeQuery(query);
		ResultSet rs6 = statement6.executeQuery(query);
		%>

		<div>
			<h4>
				<strong> Colazione :</strong>
			</h4>
			<br>


			<%
				DecimalFormat df = new DecimalFormat("#.##"); // per troncare a 2 cifre decimali

			while (rs1.next()) {
				double qta = rs1.getDouble("quantita");

				if (rs1.getString("pasto").equalsIgnoreCase("Colazione")) {
					out.println(rs1.getString("nome") + "    Qtà(grammi):" + qta * 100 + "    Carboidrati:"
					+ df.format(rs1.getDouble("carboidrati") * qta) + "    Grassi:"
					+ df.format(rs1.getDouble("grassi") * qta) + "    Proteine:"
					+ df.format(rs1.getDouble("proteine") * qta) + "    Kcal:" + df.format(rs1.getInt("kcal") * qta));
			%>
			<br>
			<%
				}
			}
			rs1.close();
			%>


		</div>
		<br>
		<div class="form-example">
			<a href=http://localhost:8080/MyKcalCounter/InserimentoAlimenti.jsp>Inserisci
				alimento</a>
		</div>
		<br>
		<div class="form-example">
			<h4>
				<strong>Merenda</strong> :
			</h4>
			<br>
			<%
				while (rs2.next()) {
				double qta = rs2.getDouble("quantita");

				if (rs2.getString("pasto").equalsIgnoreCase("Merenda")) {
					out.println(rs2.getString("nome") + "    Qtà(grammi):" + qta * 100 + "    Carboidrati:"
					+ df.format(rs2.getDouble("carboidrati") * qta) + "    Grassi:"
					+ df.format(rs2.getDouble("grassi") * qta) + "    Proteine:"
					+ df.format(rs2.getDouble("proteine") * qta) + "    Kcal:" + df.format(rs2.getInt("kcal") * qta));
			%>
			<br>
			<%
				}
			}
			rs2.close();
			%>

		</div>
		<br>
		<div class="form">
			<a href=http://localhost:8080/MyKcalCounter/InserimentoAlimenti.jsp>Inserisci
				alimento</a>
		</div>
		<br>
		<div class="form">
			<h4>
				<strong>Pranzo :</strong>
			</h4>
			<br>
			<%
				while (rs3.next()) {
				double qta = rs3.getDouble("quantita");

				if (rs3.getString("pasto").equalsIgnoreCase("Pranzo")) {
					out.println(rs3.getString("nome") + "    Qtà(grammi):" + qta * 100 + "    Carboidrati:"
					+ df.format(rs3.getDouble("carboidrati") * qta) + "    Grassi:"
					+ df.format(rs3.getDouble("grassi") * qta) + "    Proteine:"
					+ df.format(rs3.getDouble("proteine") * qta) + "    Kcal:" + df.format(rs3.getInt("kcal") * qta));
			%>
			<br>
			<%
				}
			}
			rs3.close();
			%>

		</div>
		<br>
		<div class="form">
			<a href=http://localhost:8080/MyKcalCounter/InserimentoAlimenti.jsp>Inserisci
				alimento</a>
		</div>
		<br>
		<div class="form">
			<h4>
				<strong>Spuntino :</strong>
			</h4>
			<br>
			<%
				while (rs4.next()) {
				double qta = rs4.getDouble("quantita");

				if (rs4.getString("pasto").equalsIgnoreCase("Spuntino")) {
					out.println(rs4.getString("nome") + "    Qtà(grammi):" + qta * 100 + "    Carboidrati:"
					+ df.format(rs4.getDouble("carboidrati") * qta) + "    Grassi:"
					+ df.format(rs4.getDouble("grassi") * qta) + "    Proteine:"
					+ df.format(rs4.getDouble("proteine") * qta) + "    Kcal:" + df.format(rs4.getInt("kcal") * qta));
			%>
			<br>
			<%
				}
			}
			rs4.close();
			%>
		</div>
		<br>
		<div class="form">
			<a href=http://localhost:8080/MyKcalCounter/InserimentoAlimenti.jsp>Inserisci
				alimento</a>
		</div>
		<br>
		<div class="form">
			<h4>
				<strong>Cena :</strong>
			</h4>
			<br>
			<%
				while (rs5.next()) {
				double qta = rs5.getDouble("quantita");

				if (rs5.getString("pasto").equalsIgnoreCase("Cena")) {
					out.println(rs5.getString("nome") + "    Qtà(grammi):" + qta * 100 + "    Carboidrati:"
					+ df.format(rs5.getDouble("carboidrati") * qta) + "    Grassi:"
					+ df.format(rs5.getDouble("grassi") * qta) + "    Proteine:"
					+ df.format(rs5.getDouble("proteine") * qta) + "    Kcal:" + df.format(rs5.getInt("kcal") * qta));
			%>
			<br>
			<%
				}
			}
			rs5.close();
			%>

		</div>
		<br>
		<div class="form">
			<a href=http://localhost:8080/MyKcalCounter/InserimentoAlimenti.jsp>Inserisci
				alimento</a>
		</div>
		<br> <br>
		<%
			ArrayList<AlimentiRegistrati> toSum = new ArrayList<AlimentiRegistrati>();

		while (rs6.next()) {
			AlimentiRegistrati alimento = new AlimentiRegistrati();
			double qta = rs6.getDouble("quantita");
			alimento.setCarboidrati(rs6.getDouble("carboidrati") * qta);
			alimento.setGrassi(rs6.getDouble("grassi") * qta);
			alimento.setProteine(rs6.getDouble("proteine") * qta);
			alimento.setKcal((int) Math.round(rs6.getInt("kcal") * qta));

			toSum.add(alimento);
		}
		rs6.close();

		int cho = 0;
		int fat = 0;
		int pro = 0;
		int cal = 0;

		for (AlimentiRegistrati alim : toSum) {

			cho += (int) Math.round(alim.getCarboidrati());
			fat += (int) Math.round(alim.getGrassi());
			pro += (int) Math.round(alim.getProteine());
			cal += (int) Math.round(alim.getKcal());
		}
		toSum.clear();
		%>
		<div class="totale">
			<fieldset>
				<legend>Tabella riassuntiva</legend>
				<strong>
					<%
						out.println("carboidrati: " + cho + "  grassi: " + fat + "  proteine: " + pro + "  kcal: " + cal);
					%>
				</strong>
			</fieldset>
		</div>
		<br> <br>
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