package pacchetto.control;

import java.io.IOException;

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
		String indirizzamento = "";
		
		try{
				ClienteBean cerca = user.cercaUtente(email, pw);
				if(cerca.getId() != -1) {
			
					request.getSession().setAttribute("accedi", true);
					indirizzamento = "/ProdottiView.jsp";
					
				}else {
					request.getSession().setAttribute("accedi", false);
					indirizzamento = "/PageLogin.jsp";
					
				}
				String pass1=request.getParameter("new password");
				String pass2=request.getParameter("rip password");
				if(pass1.equals(pass2)) {
					user.registraUtente(request.getParameter("nome"), request.getParameter("cognome"), request.getParameter("username"), request.getParameter("email"), pass1, request.getParameter("telefono"), request.getParameter("codice"));
					request.getSession().setAttribute("accedi", true);
					response.sendRedirect("ProdottiView.jsp");
					
				}else {
					response.sendRedirect("LoginRegistrazione.jsp");
				}
				
				
			}catch(Exception e) {
			System.out.println("Error ServletLogin: " + e.getMessage());	
			}
			response.sendRedirect(request.getContextPath() + indirizzamento);

	}
}
