package Model;

public class Endereco {

	private int idEndereco;
	private String cep;
	private String cidade;
	private String bairro;
	private String rua;
	private int logradouro;
	private String complemento;
	
	public Endereco() {

	}

	public Endereco(int idEndereco, String cep, String cidade, String bairro, String rua, int logradouro, String complemento) {
		this.idEndereco = idEndereco;
		this.cep = cep;
		this.cidade = cidade;
		this.bairro = bairro;
		this.rua = rua;
		this.logradouro = logradouro;
		this.complemento = complemento;
	}

	public int getIdEndereco() {
		return idEndereco;
	}

	public void setIdEndereco(int idEndereco) {
		this.idEndereco = idEndereco;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getRua() {
		return rua;
	}

	public void setRua(String rua) {
		this.rua = rua;
	}

	public int getLogradouro() {
		return logradouro;
	}

	public void setLogradouro(int logradouro) {
		this.logradouro = logradouro;
	}

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}
	
	
	
}
