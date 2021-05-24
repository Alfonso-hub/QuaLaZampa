package pacchetto.model;

import java.sql.SQLException;

public interface UtentiDao {

	public ClienteBean cercaUtente(String email, String password) throws SQLException;
	
	public void registraUtente(String nome, String cognome, String username, String email, String password, String telefono, String cf) throws SQLException;
	
	public void registaIndirizzo(String via, String citta, String provincia, String cap, int idcliente) throws SQLException;

	public IndirizzoSpedizioneBean cercaIndirizzo(int idcliente) throws SQLException;

	public DatiAnagraficiBean cercadati(int idcli) throws SQLException;
}
