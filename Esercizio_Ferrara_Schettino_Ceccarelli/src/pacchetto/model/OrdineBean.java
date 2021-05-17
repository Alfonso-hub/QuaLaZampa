package pacchetto.model;

import java.util.GregorianCalendar;

public class OrdineBean {

	int idOrdine;
	float prezzoTot;
	String statoOrdine;
	GregorianCalendar dataOrdine;
	
	public OrdineBean() {
		idOrdine=-1;
		prezzoTot=0;
		statoOrdine="";
		dataOrdine=null;
	}

	public int getIdOrdine() {
		return idOrdine;
	}

	public void setIdOrdine(int idOrdine) {
		this.idOrdine = idOrdine;
	}

	public float getPrezzoTot() {
		return prezzoTot;
	}

	public void setPrezzoTot(float prezzoTot) {
		this.prezzoTot = prezzoTot;
	}

	public String getStatoOrdine() {
		return statoOrdine;
	}

	public void setStatoOrdine(String statoOrdine) {
		this.statoOrdine = statoOrdine;
	}

	public GregorianCalendar getDataOrdine() {
		return dataOrdine;
	}

	public void setDataOrdine(GregorianCalendar dataOrdine) {
		this.dataOrdine = dataOrdine;
	}
	
}
