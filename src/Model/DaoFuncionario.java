package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class DaoFuncionario {
	Connection con = (new Conexao()).conectar();
	ResultSet rs;
	
	public void buscaFuncionario(Usuario usuario, Funcionario funcionario) {
		  String sql = "SELECT * FROM funcionario WHERE cpfFuncionario = ? AND senhaFuncionario = ?";
			  
		  try {
				  
			  PreparedStatement stmt = con.prepareStatement(sql);
		  
			  stmt.setString(1, usuario.getCpfUsuario());
			  stmt.setString(2, usuario.getSenhaUsuario());
		  
			  rs = stmt.executeQuery();
			
			  while (rs.next()) {
				  
			  funcionario.setIdFuncionario(rs.getInt(1));
			  funcionario.setNomeFuncionario(rs.getString(2));
			  funcionario.setTelefoneFuncionario(rs.getString(3));
			  funcionario.setEmailFuncionario(rs.getString(4));
			  funcionario.setCpfFuncionario(rs.getString(5));
			  funcionario.setSenhaFuncionario(rs.getString(6));
			  funcionario.setCargoFuncionario(rs.getString(7));
					
			  }
				
		} catch (Exception e) {
			System.out.println("Erro ao pesquisar o funcionário | (Erro try cath: )"+e);
		}
	}
	public void AtualizaDados(Funcionario funcionario) {		   	 
		   
	      String sql = "UPDATE funcionario SET nomeFuncionario = ?, telefoneFuncionario = ?, emailFuncionario = ?, senhaFuncionario = ?  WHERE idFuncionario = ?";
	
	      try {
	         PreparedStatement stmt = this.con.prepareStatement(sql);
	         
	         stmt.setString(1, funcionario.getNomeFuncionario());
	         stmt.setString(2, funcionario.getTelefoneFuncionario());
	         stmt.setString(3, funcionario.getEmailFuncionario());
	         stmt.setString(4, funcionario.getSenhaFuncionario());
	         stmt.setInt(5, funcionario.getIdFuncionario());
	         
	         stmt.executeUpdate();
	         stmt.close();
	         
	      } catch (SQLException e) {
	         System.out.println(e);
	      }
	
	   }
}
