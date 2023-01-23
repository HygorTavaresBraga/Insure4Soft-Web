package Model;

public class Sinistro {

	int idAnaliseSeguro, idCliente, idSeguro ;
	String acontecimento, detalhesAcontecimento;
	
	public Sinistro(int idAnaliseSeguro, int idCliente, int idSeguro, String acontecimento, String detalhesAcontecimento) {
		this.idAnaliseSeguro = idAnaliseSeguro;
		this.idCliente = idCliente;
		this.idSeguro = idSeguro;
		this.acontecimento = acontecimento;
		this.detalhesAcontecimento = detalhesAcontecimento;
	}

	public Sinistro() {
		// TODO Auto-generated constructor stub
	}

	public int getIdAnaliseSeguro() {
		return idAnaliseSeguro;
	}

	public void setIdAnaliseSeguro(int idAnaliseSeguro) {
		this.idAnaliseSeguro = idAnaliseSeguro;
	}

	public int getIdCliente() {
		return idCliente;
	}

	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}
	
	public int getIdSeguro() {
		return idSeguro;
	}
	
	public void setIdSeguro(int idSeguro) {
		this.idSeguro = idSeguro;
	}

	public String getAcontecimento() {
		return acontecimento;
	}

	public void setAcontecimento(String acontecimento) {
		this.acontecimento = acontecimento;
	}

	public String getDetalhesAcontecimento() {
		return detalhesAcontecimento;
	}

	public void setDetalhesAcontecimento(String detalhesAcontecimento) {
		this.detalhesAcontecimento = detalhesAcontecimento;
	}
	
	
	
	
}
