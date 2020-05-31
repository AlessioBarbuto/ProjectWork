<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" import="java.sql.*" import="java.time.*"
	import="java.time.format.DateTimeFormatter"
	import="java.util.ArrayList"
	import="it.projectwork.alimenti.AlimentiRegistrati"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
	<a href="http://localhost:8080/MyJavaServerPages/Benvenuto.jsp/"> <img
		src="logo.png" height="100px" width="150px"
		alt="impossibile caricare l'immagine"></a>
	<br>
	<br>

	<nav>
		<a href="http://localhost:8080/MyJavaServerPages/Diario.jsp/">Diario</a>
		| <a href="http://localhost:8080/MyJavaServerPages/Grafici.jsp/">Grafici</a>
		| <a href="http://localhost:8080/MyJavaServerPages/Impostazioni.jsp/">Impostazioni</a>
		| <a href="http://localhost:8080/MyJavaServerPages/Help.jsp/">Help</a>
		|

	</nav>

	<!-- messaggio di bentornato -->
	<h3>
		Bentornato nel tuo diario
		<%
		out.println(session.getAttribute("user"));
	%>
		<br> <br>
	</h3>

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

	//imposto i parametri data e user
	String user = "pino"; //(String) session.getAttribute("user");
	LocalDate data = LocalDate.now();
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");
	data.format(formatter);

	String query = "SELECT * FROM nutrizione.consumati LEFT JOIN nutrizione.alimenti ON consumati.alimento = "
			+ "alimenti.NOME WHERE giorno ="+ "'"+ data +"'"+ " AND utente="+ "'" + user +"'"+ "";
	ResultSet rs1 = statement1.executeQuery(query);
	ResultSet rs2 = statement2.executeQuery(query);
    ResultSet rs3 = statement3.executeQuery(query);
    ResultSet rs4 = statement4.executeQuery(query);
    ResultSet rs5 = statement5.executeQuery(query);

	%>

	<div>
		<label for="name"><strong> Colazione :</strong> </label> <br>


		<% while (rs1.next()) {
				double qta = rs1.getDouble("quantita");
				
				if(rs1.getString("pasto").equalsIgnoreCase("Colazione")){
					out.println(rs1.getString("nome")+"    Qtà(grammi):"+qta*100+"    Carboidrati:"+rs1.getDouble("carboidrati")*qta+
							"    Grassi:"+rs1.getDouble("grassi")*qta
					+"    Proteine:"+rs1.getDouble("proteine")*qta+"    Kcal:"+rs1.getDouble("kcal")*qta); 
					%>
		<br>
		<%  }
				 } rs1.close(); %>


	</div>
	<br>
	<div class="form-example">
		<a href=http://localhost:8080/MyKcalCounter/InserimentoAlimenti.jsp>Inserisci
			alimento</a>
	</div>
	<br>
	<div class="form-example">
		<label for="name"><strong>Merenda :</strong> </label> <br>
		<% while (rs2.next()) {
				double qta = rs2.getDouble("quantita");
				
				if(rs2.getString("pasto").equalsIgnoreCase("Merenda")){
					out.println(rs2.getString("nome")+"    Qtà(grammi):"+qta*100+"    Carboidrati:"+rs2.getDouble("carboidrati")*qta+
							"    Grassi:"+rs2.getDouble("grassi")*qta
					+"    Proteine:"+rs2.getDouble("proteine")*qta+"    Kcal:"+rs2.getDouble("kcal")*qta); 
					%>
		<br>
		<%  }
				 } rs2.close();%>

	</div>
	<br>
	<div class="form">
		<a href=http://localhost:8080/MyKcalCounter/InserimentoAlimenti.jsp>Inserisci
			alimento</a>
	</div>
	<br>
	<div class="form">
		<label for="name"><strong>Pranzo :</strong> </label> <br>
		<% while (rs3.next()) {
				double qta = rs3.getDouble("quantita");
				
				if(rs3.getString("pasto").equalsIgnoreCase("Pranzo")){
					out.println(rs3.getString("nome")+"    Qtà(grammi):"+qta*100+"    Carboidrati:"+rs3.getDouble("carboidrati")*qta+
							"    Grassi:"+rs3.getDouble("grassi")*qta
					+"    Proteine:"+rs3.getDouble("proteine")*qta+"    Kcal:"+rs3.getDouble("kcal")*qta); 
					%>
		<br>
		<%  }
				 } rs3.close(); %>

	</div>
	<br>
	<div class="form">
		<a href=http://localhost:8080/MyKcalCounter/InserimentoAlimenti.jsp>Inserisci
			alimento</a>
	</div>
	<br>
	<div class="form">
		<label for="name"><strong>Spuntino :</strong> </label> <br>
		<% while (rs4.next()) {
				double qta = rs4.getDouble("quantita");
				
				if(rs4.getString("pasto").equalsIgnoreCase("Spuntino")){
					out.println(rs4.getString("nome")+"    Qtà(grammi):"+qta*100+"    Carboidrati:"+rs4.getDouble("carboidrati")*qta+
							"    Grassi:"+rs4.getDouble("grassi")*qta
					+"    Proteine:"+rs4.getDouble("proteine")*qta+"    Kcal:"+rs4.getDouble("kcal")*qta); 
					%>
		<br>
		<%  }
				 } rs4.close(); %>
	</div>
	<br>
	<div class="form">
		<a href=http://localhost:8080/MyKcalCounter/InserimentoAlimenti.jsp>Inserisci
			alimento</a>
	</div>
	<br>
	<div class="form">
		<label for="name"><strong>Cena :</strong> </label> <br>
		<% while (rs5.next()) {
				double qta = rs5.getDouble("quantita");
				
				if(rs5.getString("pasto").equalsIgnoreCase("Cena")){
					out.println(rs5.getString("nome")+"    Qtà(grammi):"+qta*100+"    Carboidrati:"+rs5.getDouble("carboidrati")*qta+
							"    Grassi:"+rs5.getDouble("grassi")*qta
					+"    Proteine:"+rs5.getDouble("proteine")*qta+"    Kcal:"+rs5.getDouble("kcal")*qta); 
					%>
		<br>
		<%  }
				 } rs5.close(); %>

	</div>
	<br>
	<div class="form">
		<a href=http://localhost:8080/MyKcalCounter/InserimentoAlimenti.jsp>Inserisci alimento</a>
	</div>
	<br>
	<br>


</body>
</html>