package Model;

	import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.util.ArrayList;
	import java.util.List;

	
	public class DaoCliente {
	   Connection con = (new Conexao()).conectar();
	   ResultSet rs;

	   public void CadastrarCliente(Cliente cliente) {		   	 
		   
	      String sql = "INSERT INTO cliente(nomeCliente, cpfCliente, telefoneCliente, emailCliente, senhaCliente) VALUES (?,?,?,?,?)";
	
	      try {
	         PreparedStatement stmt = this.con.prepareStatement(sql);
	         
	         stmt.setString(1, cliente.getNomeCliente());
	         stmt.setString(2, cliente.getCpfCliente());
	         stmt.setString(3, cliente.getTelefoneCliente());
	         stmt.setString(4, cliente.getEmailCliente());
	         stmt.setString(5, cliente.getSenhaCliente());
	         
	         stmt.executeUpdate();
	         stmt.close();
	         
	      } catch (SQLException e) {
	         System.out.println(e);
	      }
	
	   }
	   
	   public void getIdClientebyCpf(Cliente cliente) {
		   String sql = "SELECT idCliente FROM cliente WHERE cpfCliente = ?";
		   
		   try {
		         PreparedStatement stmt = this.con.prepareStatement(sql);
		         
		         stmt.setString(1, cliente.getCpfCliente());

		         rs = stmt.executeQuery();
		        
		         while (rs.next()) {
		        	 cliente.setIdCliente(rs.getInt(1));
					  
				}
		         
		      } catch (SQLException e) {
		         System.out.println(e);
		      }
		   
	   }
	   
	   public void CadastrarEnderecoCliente(Cliente cliente) {		   	 
		   
		      String sql = "INSERT INTO enderecocliente(idCliente, cep, cidade, bairro, rua, numero, complemento) VALUES (?,?,?,?,?,?,?)";
		
		      try {
		         PreparedStatement stmt = this.con.prepareStatement(sql);
		         
		         stmt.setInt(1, cliente.getIdCliente());
		         stmt.setString(2, "");
		         stmt.setString(3, "");
		         stmt.setString(4, "");
		         stmt.setString(5, "");
		         stmt.setInt(6, 0);
		         stmt.setString(7, "");
		         
		         stmt.executeUpdate();
		         stmt.close();
		         
		      } catch (SQLException e) {
		         System.out.println(e);
		      }
		
		   }
	   
	   
	   public void buscaCliente(Usuario usuario, Cliente cliente) {
		  String sql = "SELECT * FROM cliente WHERE cpfCliente = ? AND senhaCliente = ?";
			  
		  try {
				  
			  PreparedStatement stmt = con.prepareStatement(sql);
		  
			  stmt.setString(1, usuario.getCpfUsuario());
			  stmt.setString(2, usuario.getSenhaUsuario());
		  
			  rs = stmt.executeQuery();
			
			  while (rs.next()) {
				  
			  cliente.setIdCliente(rs.getInt(1));
			  cliente.setNomeCliente(rs.getString(2));
			  cliente.setCpfCliente(rs.getString(3));
			  cliente.setTelefoneCliente(rs.getString(4));
			  cliente.setEmailCliente(rs.getString(5));
			  cliente.setSenhaCliente(rs.getString(6));
					
			  }
				
		} catch (Exception e) {
			System.out.println("Erro ao pesquisar o cliente | (Erro try cath: )"+e);
		}
	}
	   
	   public void AtualizaDados(Cliente cliente) {		   	 
		   
		      String sql = "UPDATE cliente SET nomeCliente = ?, telefoneCliente = ?, emailCliente = ?, senhaCliente = ?  WHERE idCliente = ?";
		
		      try {
		         PreparedStatement stmt = this.con.prepareStatement(sql);
		         
		         stmt.setString(1, cliente.getNomeCliente());
		         stmt.setString(2, cliente.getTelefoneCliente());
		         stmt.setString(3, cliente.getEmailCliente());
		         stmt.setString(4, cliente.getSenhaCliente());
		         stmt.setInt(5, cliente.getIdCliente());
		         
		         stmt.executeUpdate();
		         stmt.close();
		         
		      } catch (SQLException e) {
		         System.out.println(e);
		      }
		
		   }
	   
	   public void AtualizaEndereco(Cliente cliente, Endereco endereco) {		   	 
		   
		      String sql = "UPDATE enderecocliente SET cep = ?, cidade = ?, bairro = ?, rua = ?, logradouro = ?, complemento = ?  WHERE idCliente = ?";
		
		      try {
		         PreparedStatement stmt = this.con.prepareStatement(sql);
		         
		         stmt.setString(1, endereco.getCep());
		         stmt.setString(2, endereco.getCidade());
		         stmt.setString(3, endereco.getBairro());
		         stmt.setString(4, endereco.getRua());
		         stmt.setInt(5, endereco.getLogradouro());
		         stmt.setString(6, endereco.getComplemento());
		         stmt.setInt(7, cliente.getIdCliente());
		         
		         stmt.executeUpdate();
		         stmt.close();
		         
		      } catch (SQLException e) {
		         System.out.println(e);
		      }
		
		   }

	   
	   public static List<Cliente> RelatorioClientes() {
		      String sql = "SELECT * FROM cliente";
		      
		      List<Cliente> clientes = new ArrayList<Cliente>();
		
		      try {
		    	 Connection con = (new Conexao()).conectar();
		         PreparedStatement stmt = con.prepareStatement(sql);
		         ResultSet rs = stmt.executeQuery();
		
		         while(rs.next()) {
		        	 
		            int idCliente = rs.getInt(1);
		            String nomeCliente = rs.getString(2);
		            String cpfCliente = rs.getString(3);
		            String telefoneCliente = rs.getString(4);
		            String emailCliente = rs.getString(5);
		            String senhaCliente = rs.getString(6);
		            
		            clientes.add(new Cliente(idCliente, nomeCliente, cpfCliente, telefoneCliente, emailCliente, senhaCliente, ""));
		         }
		
		         stmt.close();
		         return clientes;
		         
		      } catch (Exception e) {
		         System.out.println(e);
		         return null;
		      }
		   }
}
    
