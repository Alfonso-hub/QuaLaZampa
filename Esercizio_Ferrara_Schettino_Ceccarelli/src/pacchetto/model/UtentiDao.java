package pacchetto.model;

import java.sql.SQLException;

public interface UtentiDao {

	public ClienteBean cercaUtente(String email, String password) throws SQLException;
	
	public void registraUtente(String nome, String cognome, String username, String email, String password, String telefono, String cf) throws SQLException;
	
}
