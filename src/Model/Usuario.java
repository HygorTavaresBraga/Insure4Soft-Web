package Model;

public class Usuario {
	private String cpfUsuario;
	private String senhaUsuario;
	
	public Usuario() {
		
	}
	
	public Usuario(String cpfUsuario, String senhaUsuario) {
		super();
		this.cpfUsuario = cpfUsuario;
		this.senhaUsuario = senhaUsuario;
	}

	public String getCpfUsuario() {
		return cpfUsuario;
	}

	public void setCpfUsuario(String cpfUsuario) {
		this.cpfUsuario = cpfUsuario;
	}

	public String getSenhaUsuario() {
		return senhaUsuario;
	}

	public void setSenhaUsuario(String senhaUsuario) {
		this.senhaUsuario = senhaUsuario;
	}
	
	
	
}
