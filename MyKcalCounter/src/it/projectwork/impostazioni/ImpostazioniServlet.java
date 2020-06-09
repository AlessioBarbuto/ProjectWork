package it.projectwork.impostazioni;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.projectwork.login.ConnettiDB;


@WebServlet("/ImpostazioniServlet")
public class ImpostazioniServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ImpostazioniServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		//istanza	
				ConnettiDB nuovaConnessione = new ConnettiDB();
				
				//creo le variabili che immagazzinano i parametri in input
				 String newUser = request.getParameter("newUsnm");
				 String newPass = request.getParameter("newPssw");
				 Double newPesoAtt = Double.parseDouble(request.getParameter("newPesoAtt"));
				 Double newObiettivo = Double.parseDouble(request.getParameter("newObiettivo"));
				 int newAltezza = Integer.parseInt(request.getParameter("newAltezza"));
				 String newSesso = request.getParameter("newSesso");
				 String newNazionalita = request.getParameter("newNazionalita");
				 String user = request.getParameter("user");
				
				//eseguo l'INSERT con il metodo registraUtente()

				try {
					nuovaConnessione.aggiornaAccount(newUser, newPass, newPesoAtt, newObiettivo, newSesso, newAltezza, newNazionalita, user);
				} catch (SQLException e) {
					e.printStackTrace();
				}
				HttpSession session = request.getSession();
				session.setAttribute("user", newUser);
				//reindirizzo verso una nuova pagina
				response.sendRedirect("homepage.html");
				
	}

}
