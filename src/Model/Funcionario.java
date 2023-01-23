package Model;

public class Funcionario {
	private int idFuncionario;
	private String nomeFuncionario;
	private String telefoneFuncionario;
	private String emailFuncionario;
	private String cpfFuncionario;
	private String senhaFuncionario;
	private String cargoFuncionario;
	
	public Funcionario() {
		super();
	}
	
	public Funcionario(int idFuncionario, String nomeFuncionario, String telefoneFuncionario, String emailFuncionario,
			String cpfFuncionario, String senhaFuncionario, String cargoFuncionario) {
		
		this.idFuncionario = idFuncionario;
		this.nomeFuncionario = nomeFuncionario;
		this.telefoneFuncionario = telefoneFuncionario;
		this.emailFuncionario = emailFuncionario;
		this.cpfFuncionario = cpfFuncionario;
		this.senhaFuncionario = senhaFuncionario;
		this.cargoFuncionario = cargoFuncionario;
	}

	public int getIdFuncionario() {
		return idFuncionario;
	}

	public void setIdFuncionario(int idFuncionario) {
		this.idFuncionario = idFuncionario;
	}

	public String getNomeFuncionario() {
		return nomeFuncionario;
	}

	public void setNomeFuncionario(String nomeFuncionario) {
		this.nomeFuncionario = nomeFuncionario;
	}

	public String getTelefoneFuncionario() {
		return telefoneFuncionario;
	}

	public void setTelefoneFuncionario(String telefoneFuncionario) {
		this.telefoneFuncionario = telefoneFuncionario;
	}

	public String getEmailFuncionario() {
		return emailFuncionario;
	}

	public void setEmailFuncionario(String emailFuncionario) {
		this.emailFuncionario = emailFuncionario;
	}

	public String getCpfFuncionario() {
		return cpfFuncionario;
	}

	public void setCpfFuncionario(String cpfFuncionario) {
		this.cpfFuncionario = cpfFuncionario;
	}

	public String getSenhaFuncionario() {
		return senhaFuncionario;
	}

	public void setSenhaFuncionario(String senhaFuncionario) {
		this.senhaFuncionario = senhaFuncionario;
	}

	public String getCargoFuncionario() {
		return cargoFuncionario;
	}

	public void setCargoFuncionario(String cargoFuncionario) {
		this.cargoFuncionario = cargoFuncionario;
	}
	
	
	
}
