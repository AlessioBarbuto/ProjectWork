package it.projectwork.login;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//istanza	
		ConnettiDB nuovaConnessione = new ConnettiDB();

		//creo le variabili che immagazzinano i parametri in input
		String username = request.getParameter("usnm");
		String password = request.getParameter("pssw");
		Double pesoAttuale = Double.parseDouble(request.getParameter("pesoAtt"));
		Double obiettivo = Double.parseDouble(request.getParameter("obiettivo"));
	    String sesso = request.getParameter("sesso");
		int altezza = Integer.parseInt(request.getParameter("altezza"));	
		String nazionalita = request.getParameter("nazionalita");

		//eseguo l'INSERT con il metodo registraUtente()

		try {
			nuovaConnessione.registraUtente(username, password, pesoAttuale, obiettivo, sesso, altezza, nazionalita);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		session.setAttribute("user", username);
		//reindirizzo verso una nuova pagina
		response.sendRedirect("homepage.html");

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
