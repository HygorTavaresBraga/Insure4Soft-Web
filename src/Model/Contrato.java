package Model;

public class Contrato {
	private int idSeguro;
	private int idCliente;
	private int idAparelho;
	private int idFormaPagamento;
	private String planoSeguro;
	private Double valorSeguro;
	private String statusSeguro;
	
	private int IdClienteOrigin;
	private String nomeCliente;
	private String cpfCliente;
	private String telefoneCliente;
	private String emailCliente;
	private String senhaCliente;
	
	
	public Contrato() {
		
	}


	public Contrato(int idSeguro, int idCliente, int idAparelho, int idFormaPagamento, String planoSeguro,
			Double valorSeguro, String statusSeguro, int idClienteOrigin, String nomeCliente, String cpfCliente,
			String telefoneCliente, String emailCliente, String senhaCliente) {
		super();
		this.idSeguro = idSeguro;
		this.idCliente = idCliente;
		this.idAparelho = idAparelho;
		this.idFormaPagamento = idFormaPagamento;
		this.planoSeguro = planoSeguro;
		this.valorSeguro = valorSeguro;
		this.statusSeguro = statusSeguro;
		IdClienteOrigin = idClienteOrigin;
		this.nomeCliente = nomeCliente;
		this.cpfCliente = cpfCliente;
		this.telefoneCliente = telefoneCliente;
		this.emailCliente = emailCliente;
		this.senhaCliente = senhaCliente;
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


	public Double getValorSeguro() {
		return valorSeguro;
	}


	public void setValorSeguro(Double valorSeguro) {
		this.valorSeguro = valorSeguro;
	}


	public String getStatusSeguro() {
		return statusSeguro;
	}


	public void setStatusSeguro(String statusSeguro) {
		this.statusSeguro = statusSeguro;
	}


	public int getIdClienteOrigin() {
		return IdClienteOrigin;
	}


	public void setIdClienteOrigin(int idClienteOrigin) {
		IdClienteOrigin = idClienteOrigin;
	}


	public String getNomeCliente() {
		return nomeCliente;
	}


	public void setNomeCliente(String nomeCliente) {
		this.nomeCliente = nomeCliente;
	}


	public String getCpfCliente() {
		return cpfCliente;
	}


	public void setCpfCliente(String cpfCliente) {
		this.cpfCliente = cpfCliente;
	}


	public String getTelefoneCliente() {
		return telefoneCliente;
	}


	public void setTelefoneCliente(String telefoneCliente) {
		this.telefoneCliente = telefoneCliente;
	}


	public String getEmailCliente() {
		return emailCliente;
	}


	public void setEmailCliente(String emailCliente) {
		this.emailCliente = emailCliente;
	}


	public String getSenhaCliente() {
		return senhaCliente;
	}


	public void setSenhaCliente(String senhaCliente) {
		this.senhaCliente = senhaCliente;
	}


	
	
	
}
