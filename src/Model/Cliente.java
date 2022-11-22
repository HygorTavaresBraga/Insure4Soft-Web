  package Model;

public class Cliente {
   private int idCliente;
   private String nomeCliente;
   private String cpfCliente;
   private String telefoneCliente;
   private String emailCliente;
   private String senhaCliente;
   private String confirmarSenhaCliente;

   public Cliente() {
   }

   public Cliente(int idCliente, String nomeCliente, String cpfCliente, String telefoneCliente, String emailCliente, String senhaCliente, String confirmarSenhaCliente) {
      this.idCliente = idCliente;
      this.nomeCliente = nomeCliente;
      this.cpfCliente = cpfCliente;
      this.telefoneCliente = telefoneCliente;
      this.emailCliente = emailCliente;
      this.confirmarSenhaCliente = confirmarSenhaCliente;
   }

   public int getIdCliente() {
      return this.idCliente;
   }

   public void setIdCliente(int idCliente) {
      this.idCliente = idCliente;
   }

   public String getNomeCliente() {
      return this.nomeCliente;
   }

   public void setNomeCliente(String nomeCliente) {
      this.nomeCliente = nomeCliente;
   }
   
   public String getCpfCliente() {
	  return this.cpfCliente;
   }

   public void setCpfCliente(String cpfCliente) {
	  this.cpfCliente = cpfCliente;
   }

   public String getTelefoneCliente() {
      return this.telefoneCliente;
   }

   public void setTelefoneCliente(String telefoneCliente) {
      this.telefoneCliente = telefoneCliente;
   }

   public String getEmailCliente() {
      return this.emailCliente;
   }

   public void setEmailCliente(String emailCliente) {
      this.emailCliente = emailCliente;
   }
   
   public String getSenhaCliente() {
      return this.senhaCliente;
   }

   public void setSenhaCliente(String senhaCliente) {
      this.senhaCliente = senhaCliente;
   }
   
   public String getConfirmarSenhaCliente() {
      return this.confirmarSenhaCliente;
   }

   public void setConfirmarSenhaCliente(String confirmarSenhaCliente) {
      this.confirmarSenhaCliente = confirmarSenhaCliente;
   }
	
}