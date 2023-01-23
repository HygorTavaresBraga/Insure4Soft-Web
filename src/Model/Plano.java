package Model;

public class Plano {
	
	/*COLUNAS DA TABELA SEGURO*/
	
	private int idSeguro;
	private int idCliente;
	private int idAparelho;
	private int idFormaPagamento;
	private String planoSeguro;
	private double valorSeguro;
	private String statusSeguro;
	
	/*COLUNAS DA TABELA APARELHO*/
	
	private int idAparelhoOrigin;
	private String marcaAparelho;
	private String modeloAparelho;
	private String armazenamentoAparelho;
	private double valorAparelho;
	
	public Plano() {
		
	}

	public Plano(int idSeguro, int idCliente, int idAparelho, int idFormaPagamento, String planoSeguro,
			double valorSeguro, String statusSeguro, int idAparelhoOrigin, String marcaAparelho, String modeloAparelho,
			String armazenamentoAparelho, double valorAparelho) {
		this.idSeguro = idSeguro;
		this.idCliente = idCliente;
		this.idAparelho = idAparelho;
		this.idFormaPagamento = idFormaPagamento;
		this.planoSeguro = planoSeguro;
		this.valorSeguro = valorSeguro;
		this.statusSeguro = statusSeguro;
		this.idAparelhoOrigin = idAparelhoOrigin;
		this.marcaAparelho = marcaAparelho;
		this.modeloAparelho = modeloAparelho;
		this.armazenamentoAparelho = armazenamentoAparelho;
		this.valorAparelho = valorAparelho;
	}

	public int getIdSeguro() {
		return idSeguro;
	}

	public void setIdSeguro(int idSeguro) {
		this.idSeguro = idSeguro;
	}

	public int getIdCliente() {
		return idCliente;
	}

	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}

	public int getIdAparelho() {
		return idAparelho;
	}

	public void setIdAparelho(int idAparelho) {
		this.idAparelho = idAparelho;
	}

	public int getIdFormaPagamento() {
		return idFormaPagamento;
	}

	public void setIdFormaPagamento(int idFormaPagamento) {
		this.idFormaPagamento = idFormaPagamento;
	}

	public String getPlanoSeguro() {
		return planoSeguro;
	}

	public void setPlanoSeguro(String planoSeguro) {
		this.planoSeguro = planoSeguro;
	}

	public double getValorSeguro() {
		return valorSeguro;
	}

	public void setValorSeguro(double valorSeguro) {
		this.valorSeguro = valorSeguro;
	}

	public String getStatusSeguro() {
		return statusSeguro;
	}

	public void setStatusSeguro(String statusSeguro) {
		this.statusSeguro = statusSeguro;
	}

	public int getIdAparelhoOrigin() {
		return idAparelhoOrigin;
	}

	public void setIdAparelhoOrigin(int idAparelhoOrigin) {
		this.idAparelhoOrigin = idAparelhoOrigin;
	}

	public String getMarcaAparelho() {
		return marcaAparelho;
	}

	public void setMarcaAparelho(String marcaAparelho) {
		this.marcaAparelho = marcaAparelho;
	}

	public String getModeloAparelho() {
		return modeloAparelho;
	}

	public void setModeloAparelho(String modeloAparelho) {
		this.modeloAparelho = modeloAparelho;
	}

	public String getArmazenamentoAparelho() {
		return armazenamentoAparelho;
	}

	public void setArmazenamentoAparelho(String armazenamentoAparelho) {
		this.armazenamentoAparelho = armazenamentoAparelho;
	}

	public double getValorAparelho() {
		return valorAparelho;
	}

	public void setValorAparelho(double valorAparelho) {
		this.valorAparelho = valorAparelho;
	}


	
	
}
