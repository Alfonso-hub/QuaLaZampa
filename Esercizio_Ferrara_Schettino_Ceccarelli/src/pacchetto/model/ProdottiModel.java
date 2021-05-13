package pacchetto.model;

import java.sql.SQLException;
import java.util.ArrayList;

public interface ProdottiModel {
	
	public void doSave (ProdottiBean bean) throws SQLException;
	
	public ProdottiBean doRetriveByKey (int code) throws SQLException;
	
	public ArrayList<ProdottiBean> doRetriveAll () throws SQLException;

}