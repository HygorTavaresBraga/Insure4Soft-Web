package Model;

public class FormaPagamento {
	
	private int idFormaPagamento;
	private int idCliente;
	private String formaPagamento;
	private String numeroCartao;
	private String dataValidade;
	private int cvv;
	private String titularCartao;
	
	public FormaPagamento() {
		
	}

	public FormaPagamento(int idFormaPagamento, int idCliente, String formaPagamento, String numeroCartao,
			String dataValidade, int cvv, String titularCartao) {
		super();
		this.idFormaPagamento = idFormaPagamento;
		this.idCliente = idCliente;
		this.formaPagamento = formaPagamento;
		this.numeroCartao = numeroCartao;
		this.dataValidade = dataValidade;
		this.cvv = cvv;
		this.titularCartao = titularCartao;
	}

	public int getIdFormaPagamento() {
		return idFormaPagamento;
	}

	public void setIdFormaPagamento(int idFormaPagamento) {
		this.idFormaPagamento = idFormaPagamento;
	}

	public int getIdCliente() {
		return idCliente;
	}

	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}

	public String getFormaPagamento() {
		return formaPagamento;
	}

	public void setFormaPagamento(String formaPagamento) {
		this.formaPagamento = formaPagamento;
	}

	public String getNumeroCartao() {
		return numeroCartao;
	}

	public void setNumeroCartao(String numeroCartao) {
		this.numeroCartao = numeroCartao;
	}

	public String getDataValidade() {
		return dataValidade;
	}

	public void setDataValidade(String dataValidade) {
		this.dataValidade = dataValidade;
	}

	public int getCvv() {
		return cvv;
	}

	public void setCvv(int cvv) {
		this.cvv = cvv;
	}

	public String getTitularCartao() {
		return titularCartao;
	}

	public void setTitularCartao(String titularCartao) {
		this.titularCartao = titularCartao;
	}

	
	
}
