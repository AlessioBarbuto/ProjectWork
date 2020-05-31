package it.projectwork.alimenti;

public class AlimentiRegistrati extends Alimenti {

	private String pasto;

	//getters e setters
	public String getPasto() {
		return pasto;
	}

	public void setPasto(String pasto) {
		this.pasto = pasto;
	}
	
	//getters e setters overridati
	@Override
	public String getNome() {
		return super.getNome();
	}

	@Override
	public void setNome(String nome) {
		super.setNome(nome);
	}

	@Override
	public double getCarboidrati() {
		return super.getCarboidrati();
	}

	@Override
	public void setCarboidrati(double carboidrati) {
		super.setCarboidrati(carboidrati);
	}

	@Override
	public double getGrassi() {
		return super.getGrassi();
	}

	@Override
	public void setGrassi(double grassi) {
		super.setGrassi(grassi);
	}

	@Override
	public double getProteine() {
		return super.getProteine();
	}

	@Override
	public void setProteine(double proteine) {
		super.setProteine(proteine);
	}

	@Override
	public int getKcal() {
		return super.getKcal();
	}

	@Override
	public void setKcal(int kcal) {
		super.setKcal(kcal);
	}

	//toString per la stampa
	@Override
	public String toString() {
		return super.toString();
	}
	
	
	
	
}
