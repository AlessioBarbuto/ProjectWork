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


@WebServlet("/DBDiarioServlet")
public class DBDiarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DBDiarioServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
     
		   it.projectwork.login.ConnettiDB newConnection = new it.projectwork.login.ConnettiDB();
		   
		   String utente = request.getParameter("user");
		   LocalDateTime data = LocalDateTime.of(LocalDate.now(), LocalTime.now());
		   DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");
		   data.format(formatter);
		   
		   try {
			newConnection.selezionaAlimentiPerGiorno(utente, data);
			
//			request.setAttribute("valore",);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
