package pacchetto.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProdottiModelDM implements ProdottiModel {
	
	private static final String NAME_TABLE= "prodotti";

	@Override
	public void doSave(ProdottiBean bean) throws SQLException {
		
		Connection con= null;
		PreparedStatement prep= null;
		String query= "INSERT INTO " + ProdottiModelDM.NAME_TABLE + " (nome, disponibilita, quantita, descrizione, prezzo_base) VALUES (?, ?, ?, ?, ?)";
		
		try {
			con= ConnectionPool.getConnection();
			prep= con.prepareStatement(query);
			prep.setString(1, bean.getNome());
			prep.setString(2, bean.getDisponibilita());
			prep.setInt(3, bean.getQuantita());
			prep.setString(4, bean.getDescrizione());
			prep.setFloat(5, bean.getPrezzo());
			
			prep.executeUpdate();
			
			con.commit();
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

	}

	@Override
	public ProdottiBean doRetriveByKey(int code) throws SQLException {
		
		Connection con= null;
		PreparedStatement prep= null;
		ProdottiBean bean= new ProdottiBean ();
		
		String query= "SELECT * FROM " + ProdottiModelDM.NAME_TABLE + " WHERE id_prodotto=?";
		
		try {
			con= ConnectionPool.getConnection();
			prep= con.prepareStatement(query);
			prep.setInt(1, code);
			
			ResultSet res= prep.executeQuery();
			
			while (res.next()) {
				bean.setId(res.getInt("id_prodotto"));
				bean.setNome(res.getString("nome"));
				bean.setDisponibilita(res.getString("disponibilita"));
				bean.setQuantita(res.getInt("quantita"));
				bean.setIva(res.getFloat("iva"));
				bean.setDescrizione(res.getString("descrizione"));
				bean.setPrezzo(res.getFloat("prezzo_base"));
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
		
		return bean;
	}

	@Override
	public ArrayList<ProdottiBean> doRetriveAll() throws SQLException {
		
		Connection con= null;
		PreparedStatement prep= null;
		ArrayList<ProdottiBean> prod= new ArrayList<ProdottiBean>();
		String query= "SELECT * FROM " + ProdottiModelDM.NAME_TABLE;
		
		try {
			con= ConnectionPool.getConnection();
			prep= con.prepareStatement(query);
			ResultSet res= prep.executeQuery();
			
			while (res.next()) {
				ProdottiBean pr= new ProdottiBean();
				
				pr.setId(res.getInt("id_prodotto"));
				pr.setNome(res.getString("nome"));
				pr.setDisponibilita(res.getString("disponibilita"));
				pr.setQuantita(res.getInt("quantita"));
				pr.setIva(res.getFloat("iva"));
				pr.setDescrizione(res.getString("descrizione"));
				pr.setPrezzo(res.getFloat("prezzo_base"));
				
				prod.add(pr);
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
		
		return prod;
	}

}
