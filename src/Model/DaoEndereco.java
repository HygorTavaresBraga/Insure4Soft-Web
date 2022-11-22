package Model;

	import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;

	
	public class DaoEndereco {
	   Connection con = (new Conexao()).conectar();
	   ResultSet rs;
	   
	   /* CLIENTE */
	   
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
	   
	   public void getEnderecoClientebyId(Cliente cliente, Endereco endereco) {
		   String sql = "SELECT * FROM enderecocliente WHERE idCliente = ?";
		   
		   try {
		         PreparedStatement stmt = this.con.prepareStatement(sql);
		         
		         stmt.setInt(1, cliente.getIdCliente());

		         rs = stmt.executeQuery();
		        
		         while (rs.next()) {

					  endereco.setIdEndereco(rs.getInt(1));
					  endereco.setCep(rs.getString(3));
					  endereco.setCidade(rs.getString(4));
					  endereco.setBairro(rs.getString(5));
					  endereco.setRua(rs.getString(6));
					  endereco.setLogradouro(rs.getInt(7));
					  endereco.setComplemento(rs.getString(8));
					  
				}
		         
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
	   
	   /* FUNCIONARIO */
	   
	   public void CadastrarEnderecoFuncionario(Funcionario funcionario) {		   	 
		   
		      String sql = "INSERT INTO enderecofuncionario(idFuncionario, cep, cidade, bairro, rua, numero, complemento) VALUES (?,?,?,?,?,?,?)";
		
		      try {
		         PreparedStatement stmt = this.con.prepareStatement(sql);
		         
		         stmt.setInt(1, funcionario.getIdFuncionario());
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
	   public void getEnderecoFuncionariobyId(Funcionario funcionario, Endereco endereco) {
		   String sql = "SELECT * FROM enderecofuncionario WHERE idFuncionario = ?";
		   
		   try {
		         PreparedStatement stmt = this.con.prepareStatement(sql);
		         
		         stmt.setInt(1, funcionario.getIdFuncionario());

		         rs = stmt.executeQuery();
		        
		         while (rs.next()) {

					  endereco.setIdEndereco(rs.getInt(1));
					  endereco.setCep(rs.getString(3));
					  endereco.setCidade(rs.getString(4));
					  endereco.setBairro(rs.getString(5));
					  endereco.setRua(rs.getString(6));
					  endereco.setLogradouro(rs.getInt(7));
					  endereco.setComplemento(rs.getString(8));
					  
				}
		         
		      } catch (SQLException e) {
		         System.out.println(e);
		      }
		   
	   }	   

	   public void AtualizaEnderecoFuncionario(Funcionario funcionario, Endereco endereco) {		   	 
		   
		      String sql = "UPDATE enderecofuncionario SET cep = ?, cidade = ?, bairro = ?, rua = ?, logradouro = ?, complemento = ?  WHERE idFuncionario = ?";
		
		      try {
		         PreparedStatement stmt = this.con.prepareStatement(sql);
		         
		         stmt.setString(1, endereco.getCep());
		         stmt.setString(2, endereco.getCidade());
		         stmt.setString(3, endereco.getBairro());
		         stmt.setString(4, endereco.getRua());
		         stmt.setInt(5, endereco.getLogradouro());
		         stmt.setString(6, endereco.getComplemento());
		         stmt.setInt(7, funcionario.getIdFuncionario());
		         
		         stmt.executeUpdate();
		         stmt.close();
		         
		      } catch (SQLException e) {
		         System.out.println(e);
		      }
		
		   }
	  
}
    
