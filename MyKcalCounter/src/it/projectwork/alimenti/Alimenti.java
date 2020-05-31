package it.projectwork.alimenti;

public class Alimenti {
	
	private String nome;
	private double carboidrati;
	private double grassi;
	private double proteine;
	private int kcal;
	
	//getters e setters
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public double getCarboidrati() {
		return carboidrati;
	}
	public void setCarboidrati(double carboidrati) {
		this.carboidrati = carboidrati;
	}
	public double getGrassi() {
		return grassi;
	}
	public void setGrassi(double grassi) {
		this.grassi = grassi;
	}
	public double getProteine() {
		return proteine;
	}
	public void setProteine(double proteine) {
		this.proteine = proteine;
	}
	public int getKcal() {
		return kcal;
	}
	public void setKcal(int kcal) {
		this.kcal = kcal;
	}
	
	@Override
	public String toString() {
		return  nome + carboidrati + grassi + proteine + kcal;
	}
	
	

}
