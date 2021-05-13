package pacchetto.model;

import java.util.ArrayList;

public class Carrello {
	
	private ArrayList<ProdottiBean> car;
	private int dimensione;

	
	public Carrello () {
		car= new ArrayList<ProdottiBean>();
		dimensione= 0;
		
	}
	
	/**
	 * Aggiunge un prodotto nel carrello.
	 * @param prod
	 */
	public void addCarrello (ProdottiBean prod) {
		car.add(prod);
		dimensione= dimensione + 1;
	}
	
	/**
	 * Elimina il prodotto che gli viene passato come parametro.
	 * @param prod
	 */
	public void deleteProduct (ProdottiBean prod) {
		
		for (ProdottiBean p : car) {
			if (p.getId() == prod.getId()) {
				car.remove(prod);
				dimensione= dimensione - 1;
			break;
			}
		}
	}
	
	/**
	 * Rimuove tutto il contenuto del carrello.
	 */
	public void delete () {
		car.removeAll(car);
		dimensione= 0;
	}
	
	/**
	 * Restituisce tutto il contenuto del carrello.
	 * @return prodotti nel carrello
	 */
	public ArrayList<ProdottiBean> getCarrello (){
		return new ArrayList<>(car);
	}
	
	/**
	 * Controlla se un prodotto è gia presente nel carrello, se è presente restituisce true e se non lo è restituisce false.
	 * @param code
	 * @return true or false
	 */
	public boolean searchProdotto (int code) {
		
		boolean trovato= false;
		
		for (int i= 0; i < car.size(); i++) {
			if (car.get(i).getId() == code)
				trovato= true;
		}
		
		return trovato;
	}
	
	/**
	 * Restituisce il numero di elementi presenti nell'ArrayList.
	 * @return dimensione
	 */
	public int getDimensione () {
		return dimensione;
	}
	
	/**
	 * Calcola il prezzo del prodotto in base alla quantità scelta dal cliente e restituisce il prezzo totale.
	 * @param quant
	 * @param id
	 * @return prezzo totale
	 */
	public float getPrezzoTotale (int quant, int id) {
		
		float tot= 0;
		
		for (int i= 0; i < car.size(); i++) {
			if (car.get(i).getId() == id) {
				tot= car.get(i).getPrezzo() * quant;
				car.get(i).setTotPrezzo(tot);
			}
				}
		return tot;
	}
	
	


}