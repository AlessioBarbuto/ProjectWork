package it.projectwork.diario;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/InserimentoServlet")
public class InserimentoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	
    public InserimentoServlet() {
        super();
   }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		/** inserimento alimenti consumati**/
		
		//istanza
	     it.projectwork.login.ConnettiDB newConnection = new it.projectwork.login.ConnettiDB();
	     
			HttpSession session = request.getSession();
			
	    //creo due variabili che immagazzinano il parametro in ingresso
	        String utente = (String) session.getAttribute("user");
			String alimento = request.getParameter("alimento");
			String pasto = request.getParameter("pasto");
			Double quantita = Double.parseDouble(request.getParameter("quantita"));
			LocalDateTime giorno = LocalDateTime.of(LocalDate.now(), LocalTime.now());
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");
			giorno.format(formatter);

			//eseguo l'INSERT con il metodo eseguiQuery
			try {
				newConnection.inserisciAlimento(giorno, alimento, quantita, pasto, utente);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			//reindirizzo verso una nuova pagina
			response.sendRedirect("Diario.jsp");
			
			//-------------------------------------------------------------------------------------------------------
			//SELECT * FROM nutrizione.consumati LEFT JOIN nutrizione.alimenti ON consumati.alimento = alimenti.NOME WHERE giorno = 'yyyy/MM/dd' AND pasto = 'colazione' AND username = 'user'; 
	        //--------------------------- x selezionare gli inseriti del giorno -------------------------------------
	}

}
