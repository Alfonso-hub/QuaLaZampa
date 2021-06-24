package pacchetto.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pacchetto.model.ClienteBean;
import pacchetto.model.UtentiModelDM;


@WebServlet("/Login")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
  static UtentiModelDM user = new UtentiModelDM();
    
  public ServletLogin() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String pw = request.getParameter("password");
		
		try{
				ClienteBean cerca = user.cercaUtente(email, pw);
				if(cerca.getId() != -1) {
					if(user.cercaAmministratore(email, pw)) {
					request.getSession().setAttribute("Amministratore", true);
					RequestDispatcher dis = request.getRequestDispatcher("/ControlloAmministratore.jsp");
					dis.forward(request, response);
					}
					request.getSession().setAttribute("accedi", cerca);
					RequestDispatcher dis =  request.getRequestDispatcher("/ProdottiView.jsp");
					dis.forward(request, response);
					
				}else {
					request.getSession().setAttribute("accedi", null);
					
					RequestDispatcher dis =  request.getRequestDispatcher("/PageLogin.jsp");
					dis.forward(request, response);
				}
				
				
			}catch(Exception e) {
			System.out.println("Error ServletLogin: " + e.getMessage());	
			}
	}
}
