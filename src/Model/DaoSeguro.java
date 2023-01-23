package Model;

	import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;

	
	public class DaoSeguro {
	   Connection con = (new Conexao()).conectar();
	   ResultSet rs;

	   public void CadastrarSeguro(Plano plano) {		   	 
		   
		      String sql = "INSERT INTO seguro(idCliente, idAparelho, idFormaPagamento, planoSeguro, valorSeguro, statusSeguro) VALUES (?,?,?,?,?,?)";
		
		      try {
		         PreparedStatement stmt = this.con.prepareStatement(sql);
		         
		         stmt.setInt(1, plano.getIdCliente());
		         stmt.setInt(2, plano.getIdAparelho());
		         stmt.setInt(3, plano.getIdFormaPagamento());
		         stmt.setString(4, plano.getPlanoSeguro());
		         stmt.setDouble(5, plano.getValorSeguro());
		         stmt.setString(6, "Em Análise");
		         
		         stmt.executeUpdate();
		         stmt.close();
		         
		      } catch (SQLException e) {
		         System.out.println(e);
		      }
		
		   }
	   
	   public void CadastrarSeguroCartao(Plano plano , FormaPagamento formaPagamento) {		   	 
		   
		      String sql = "INSERT INTO seguro(idCliente, idAparelho, idFormaPagamento, planoSeguro, valorSeguro, statusSeguro) VALUES (?,?,?,?,?,?)";
		
		      try {
		         PreparedStatement stmt = this.con.prepareStatement(sql);
		         
		         stmt.setInt(1, plano.getIdCliente());
		         stmt.setInt(2, plano.getIdAparelho());
		         stmt.setInt(3, formaPagamento.getIdFormaPagamento());
		         stmt.setString(4, plano.getPlanoSeguro());
		         stmt.setDouble(5, plano.getValorSeguro());
		         stmt.setString(6, "Ativo");
		         
		         stmt.executeUpdate();
		         stmt.close();
		         
		      } catch (SQLException e) {
		         System.out.println(e);
		      }
		
		   }
	   
	   
	 
}
    
