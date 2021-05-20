package pacchetto.control;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pacchetto.model.Carrello;
import pacchetto.model.ClienteBean;
import pacchetto.model.OrdiniModelDM;

/**
 * Servlet implementation class ServletOrdini
 */
@WebServlet("/Ordini")
public class ServletOrdini extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ServletOrdini() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getSession().getAttribute("accedi")== null) {
			
			response.sendRedirect("PageLogin.jsp");
			
		}
		Carrello car= (Carrello) request.getSession().getAttribute("carrello");
		/*
		car.delete();
		request.getSession().setAttribute("carrello", car);
		*/
		ClienteBean bean=(ClienteBean) request.getSession().getAttribute("accedi");
		OrdiniModelDM ordini= new OrdiniModelDM();
		Date data= new Date(System.currentTimeMillis());
		
		try {
			for(int i = 0; i<car.getDimensione(); i++) {
		ordini.registraOrdine(bean.getId(), car.getCarrello().get(i).getId(), car.getCarrello().get(i).getTotPrezzo(), "acquistato", data, car.getCarrello().get(i).getQuantitaDesiderata(), car.getCarrello().get(i).getPrezzo());
			
			}
		}catch (SQLException e){
		System.out.println("Error Ordine " + e.getMessage());
		}
		}
}
