package it.projectwork.login;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//istanza	
		ConnettiDB nuovaConnessione = new ConnettiDB();

		//creo due variabili che immagazzinano il parametro in ingresso
		String username = request.getParameter("usnm");
		String password = request.getParameter("pssw");
		Double pesoAttuale = Double.valueOf(request.getParameter("pesoAtt"));
		Double obiettivo = Double.valueOf(request.getParameter("obiettivo"));
	    String sesso = request.getParameter("sesso");
		int altezza = Integer.parseInt(request.getParameter("altezza"));	
		String nazionalita = request.getParameter("nazionalita");

		//eseguo l'INSERT con il metodo eseguiQuery

		try {
			nuovaConnessione.eseguiQuery(username, password, pesoAttuale, obiettivo, sesso, altezza, nazionalita);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//reindirizzo verso una nuova pagina
		response.sendRedirect("Benvenuto.jsp");

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
