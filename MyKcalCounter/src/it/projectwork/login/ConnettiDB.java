package it.projectwork.login;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import it.projectwork.alimenti.AlimentiRegistrati;

public class ConnettiDB {


	//metodo per la connessione al DB
	public Connection connessione() throws SQLException {

		// controllo driver
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.err.println(e.getMessage());
		}

		return DriverManager.getConnection("jdbc:mysql://localhost:3306/nutrizione?user=root&password=Alessio97&serverTimezone=UTC");

	}

	//metodo per il controllo delle credenziali (LOGIN)
	public boolean controllaCredenziali(String insertUser, String insertPass) throws SQLException {

		Statement st=null;
		Connection cn = this.connessione();
		Boolean s = false;

		try {
			st = cn.createStatement();
			String query = "SELECT * FROM utenti";
			ResultSet letti = st.executeQuery(query);

			String UserInDB = null;
			String PassInDB = null;

			while (letti.next()) {
				UserInDB = letti.getString("username");
				PassInDB = letti.getString("password");

			}
			if (insertUser.equals(UserInDB) && insertPass.equals(PassInDB)) {
				s=true;}
			else {s=false;}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}


	//metodo per la creazione delle credenziali (REGISTRAZIONE)
	public void registraUtente(String username, String password, double pesoAttuale, double obiettivo, String sesso, int altezza, String nazionalita) throws SQLException {

		Statement st = null;
		Connection cn = this.connessione();

		//creo statement ed eseguo INSERT
		try {
			st = cn.createStatement();
			st.executeUpdate("INSERT INTO nutrizione.utenti (username, password, peso_attuale, obiettivo, sesso, altezza, nazionalita) "
					+"VALUES ('"+username+"','"+password+"','"+pesoAttuale+"','"+obiettivo+"','"+sesso+"','"+altezza+"','"+nazionalita+"');");
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			cn.close(); //chiudo connessione
		}
	}

	//metodo per l'inserimento degli alimenti (REGISTRAZIONE ALIMENTI)
	public void inserisciAlimento(LocalDateTime giorno, String alimento, double quantita, String pasto, String utente) throws SQLException {

		Statement st = null;
		Connection cn = this.connessione();

		//creo statement ed eseguo INSERT
		try {
			st = cn.createStatement();
			st.executeUpdate("INSERT INTO nutrizione.consumati (giorno, alimento, quantita, pasto, utente) "
					+"VALUES ('"+giorno+"','"+alimento+"','"+quantita+"','"+pasto+"','"+utente+"');");
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			cn.close(); //chiudo connessione
		}
	}

}
