package pacchetto.model;


import java.sql.*;

public class UtentiModelDM implements UtentiDao {
private static String TABELLA_NAME = "cliente"; 

	public ClienteBean cercaUtente(String email, String password) throws SQLException {
	Connection con = null;
	PreparedStatement prep = null;
	String query = "SELECT * FROM " + TABELLA_NAME + " WHERE e_mail = ? AND password = ? " ;
	ClienteBean cliente = new ClienteBean();
	try {
		con = ConnectionPool.getConnection(); 
		prep = con.prepareStatement(query);
		prep.setString(1, email);
		prep.setString(2, password);
		
		ResultSet res  = prep.executeQuery();
		
			while(res.next()) {
			cliente.setEmail(res.getString("e_mail"));
			cliente.setPassword(res.getString("password"));
			cliente.setUsername(res.getString("username"));
			cliente.setId(res.getInt("id_cliente"));
			cliente.setAmministratore(res.getString("amministratore"));	
		}
	}finally {
		try {
			if (prep != null)
				prep.close();
		}
		finally {
			ConnectionPool.relaseConnection(con);
		}
	}
		return cliente;
	}


	public void registraUtente(String nome, String cognome, String username, String email, String password, String telefono, String cf) throws SQLException {
	Connection con =null;
	PreparedStatement pre= null;
	String query = "INSERT INTO cliente(username, e_mail, password, amministratore) VALUES (?, ?, ?, NO)";
	try {
		con = ConnectionPool.getConnection(); 

		pre = con.prepareStatement(query);
		pre.setString(1, username);
		pre.setString(2, email);
		pre.setString(3, password);
	
		pre.executeUpdate();
		
		PreparedStatement prep1= null;
		ClienteBean clientenew = cercaUtente(email, password); 
		String query1 = "INSERT INTO dati_anagrafici (nome, cognome, telefono, cf, id_cliente) VALUES (?, ?, ?, ?, ?)";
		prep1 = con.prepareStatement(query1);
		prep1.setString(1, nome);
		prep1.setString(2, cognome);
		prep1.setString(3, telefono);
		prep1.setString(4, cf);
		prep1.setInt(5, clientenew.getId());
	
		prep1.executeUpdate();
		
	}finally {
		try {
			if (pre != null)
				pre.close();
		}
		finally {
			ConnectionPool.relaseConnection(con);
		}
			}	
				}
					}
