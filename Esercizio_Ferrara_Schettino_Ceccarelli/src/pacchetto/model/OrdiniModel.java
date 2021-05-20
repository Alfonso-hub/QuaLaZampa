package pacchetto.model;

import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Date;

public interface OrdiniModel {
	
	public void registraOrdine (int id_cliente, int id_prodotto, float prezzoTotale, String statoOrdine, Date data, int id_ordine, int quantit, float prezzo) throws SQLException;
	
	public ArrayList<OrdineBean> cercaOrdine (int id_cliente) throws SQLException;

}