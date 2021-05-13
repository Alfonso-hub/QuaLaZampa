package pacchetto.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pacchetto.model.Carrello;



@WebServlet("/Controllo2")
public class MioControllo2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public MioControllo2() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session= request.getSession(false);
		Carrello car= (Carrello) session.getAttribute("carrello");
		int id=  Integer.parseInt(request.getParameter("nascosto"));
		int scelta= Integer.parseInt(request.getParameter("scelta"));
		car.getPrezzoTotale(scelta, id);
		
		
		RequestDispatcher dis= getServletContext().getRequestDispatcher("/ProdottiCarrello.jsp");
		dis.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
