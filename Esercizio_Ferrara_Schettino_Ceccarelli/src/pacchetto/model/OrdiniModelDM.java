package pacchetto.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Date;

public class OrdiniModelDM implements OrdiniModel {

	
	public void registraOrdine(int id_cliente, int id_prodotto, float prezzoTotale, String statoOrdine, Date data, int id_ordine, int quantit, float prezzo) throws SQLException {
		
		Connection con= null;
		PreparedStatement prep= null;
		PreparedStatement prep2= null;
		PreparedStatement prep3= null;
		PreparedStatement prep4= null;
		String query= "INSERT INTO acquista VALUES (?, ?)";
		String query2= "INSERT INTO ordine (prezzo_totale, stato_ordine, data_ordine) VALUES (?, ?, ?)";
		String query3= "INSERT INTO inserito (quantita_inserito, prezzo_inserito, id_prodotto_inserito, id_ordine_inserito) VALUES (?, ?, ?, ?)";
		String query4= "INSERT INTO effettua (id_cliente_effettua, id_ordine_effettua) VALUES (?, ?)";
		
		try {
			con= ConnectionPool.getConnection();
			prep= con.prepareStatement(query);
			prep.setInt(1, id_cliente);
			prep.setInt(2, id_prodotto);
			
			prep.executeUpdate();
			con.commit();
			
			prep2= con.prepareStatement(query2);
			prep2.setFloat(1, prezzoTotale);
			prep2.setString(2, statoOrdine);
			prep2.setDate(3, data);
			
			prep2.executeUpdate();
			con.commit();
			
			prep3= con.prepareStatement(query3);
			prep3.setInt(1, quantit);
			prep3.setFloat(2, prezzo);
			prep3.setInt(3, id_prodotto);
			prep3.setInt(4, id_ordine);
			
			prep3.executeUpdate();
			con.commit();
			
			prep4= con.prepareStatement(query4);
			prep4.setInt(1, id_cliente);
			prep4.setInt(2, id_ordine);
			
			prep4.executeUpdate();
			con.commit();
			
		}
		finally {
			try {
				if ((prep != null) && (prep2 != null) && (prep3 != null) && (prep4 != null)) {
					prep.close();
					prep2.close();
					prep3.close();
					prep4.close();
				}
			}
			finally {
				ConnectionPool.relaseConnection(con);
			}
		}

	}

	
	public ArrayList<OrdineBean> cercaOrdine(int id_cliente) throws SQLException {
		
		Connection con= null;
		PreparedStatement prep= null;
		ArrayList<OrdineBean> order= new ArrayList<OrdineBean>();
		String query= "SELECT (id_ordine, prezzo_totale, stato_ordine, data_ordine) FROM effettua, ordine WHERE id_cliente_effettua= ?";
		
		try {
			con= ConnectionPool.getConnection();
			prep= con.prepareStatement(query);
			prep.setInt(1, id_cliente);
			ResultSet res= prep.executeQuery();
			
			while (res.next()) {
				OrdineBean ordin= new OrdineBean();
				ordin.setIdOrdine(res.getInt("id_ordine"));
				ordin.setPrezzoTot(res.getFloat("prezzo_totale"));
				ordin.setStatoOrdine(res.getString("stato_ordine"));
				ordin.setDataOrdine(res.getDate("data_ordine"));
				
				order.add(ordin);
			}
		}
		finally {
			try {
				if (prep != null)
					prep.close();
			}
			finally {
				ConnectionPool.relaseConnection(con);
			}
		}
		
		return order;
	}

}
