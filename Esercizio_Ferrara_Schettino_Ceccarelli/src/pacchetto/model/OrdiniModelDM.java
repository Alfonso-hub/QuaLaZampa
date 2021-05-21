package pacchetto.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Date;

public class OrdiniModelDM implements OrdiniModel {

	
	public void registraOrdine(int id_cliente, int id_prodotto, float prezzoTotale, String statoOrdine, Date data, int quantit, float prezzo) throws SQLException {
		
		Connection con= null;
		PreparedStatement prep= null;
		PreparedStatement prep2= null;
		PreparedStatement prep3= null;
		PreparedStatement prep4= null;
		PreparedStatement prep5= null;
		String query= "INSERT INTO acquista VALUES (?, ?)";
		String query2= "INSERT INTO ordine (prezzo_totale, stato_ordine, data_ordine) VALUES (?, ?, ?)";
		String query3="SELECT id_ordine FROM ordine";
		String query4= "INSERT INTO inserito (quantita_inserito, prezzo_inserito, id_prodotto_inserito, id_ordine_inserito) VALUES (?, ?, ?, ?)";
		String query5= "INSERT INTO effettua (id_cliente_effettua, id_ordine_effettua) VALUES (?, ?)";
		int temp=0;
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
			
			prep3=con.prepareStatement(query3);
			ResultSet result= prep3.executeQuery();
			while(result.next()) {
				if(temp<result.getInt("id_ordine")) {
					temp=result.getInt("id_ordine");
				}
			}
			
			prep4= con.prepareStatement(query4);
			prep4.setInt(1, quantit);
			prep4.setFloat(2, prezzo);
			prep4.setInt(3, id_prodotto);
			prep4.setInt(4, temp);
			
			prep4.executeUpdate();
			con.commit();
			
			prep5= con.prepareStatement(query5);
			prep5.setInt(1, id_cliente);
			prep5.setInt(2, temp);
			
			prep5.executeUpdate();
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
		String query= "SELECT id_ordine, prezzo_totale, stato_ordine, data_ordine FROM effettua, ordine WHERE id_cliente_effettua= ? AND id_ordine_effettua=id_ordine";
		
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
