package pacchetto.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pacchetto.model.UtentiModelDM;


@WebServlet("/Registrazione")
public class ServletRegistrazione extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static UtentiModelDM user = new UtentiModelDM();
    
    public ServletRegistrazione() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nome= request.getParameter("nome");
		String cognome= request.getParameter("cognome");
		String username= request.getParameter("username");
		String email= request.getParameter("email");
		String newPassword= request.getParameter("new password");
		String ripPassword= request.getParameter("rip password");
		String telefono= request.getParameter("telefono");
		String cf =request.getParameter("codice");
		String redirect= "";
		
		if (newPassword.equals(ripPassword)) {
		try {
			user.registraUtente(nome, cognome, username, email, ripPassword, telefono, cf);
			request.getSession().setAttribute("accedi", true);
			redirect= "/ProdottiView.jsp";
		} catch (SQLException e) {
			System.out.println ("Errore nella registrazione: " + e.getMessage());
		}
		}
		else {
			request.getSession().setAttribute("accedi", false);
			redirect= "/LoginRegistrazione.jsp";
		}
			
		response.sendRedirect(request.getContextPath() + redirect);
		
	}

}
