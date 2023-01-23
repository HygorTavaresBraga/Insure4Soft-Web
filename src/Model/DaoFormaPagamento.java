package Model;

	import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;

	
	public class DaoFormaPagamento {
	   Connection con = (new Conexao()).conectar();
	   ResultSet rs;
	   
	   public void AdicionarCartao(FormaPagamento formaPagamento) {		   	 
		   
		      String sql = "INSERT INTO formapagamento(idCliente, formaPagamento, numeroCartao, dataValidade, cvv, titularCartao) VALUES (?,?,?,?,?,?)";

		      try {
		         PreparedStatement stmt = this.con.prepareStatement(sql);
		         
		         stmt.setInt(1, formaPagamento.getIdCliente());
		         stmt.setString(2, formaPagamento.getFormaPagamento());
		         stmt.setString(3, formaPagamento.getNumeroCartao());
		         stmt.setString(4, formaPagamento.getDataValidade());
		         stmt.setInt(5, formaPagamento.getCvv());
		         stmt.setString(6, formaPagamento.getTitularCartao());
		         
		         stmt.executeUpdate();
		         stmt.close();
		         
		      } catch (SQLException e) {
		         System.out.println(e);
		      }
		
		   }
	   
	   public void getIdFormaPagamento(FormaPagamento formaPagamento) {
		   String sql = "SELECT idFormaPagamento FROM formapagamento WHERE idCliente = ? AND formaPagamento = ? AND numeroCartao = ? AND dataValidade = ? AND cvv = ? AND titularCartao = ?";
			
		      try {
		         PreparedStatement stmt = this.con.prepareStatement(sql);
		         
		         stmt.setInt(1, formaPagamento.getIdCliente());
		         stmt.setString(2, formaPagamento.getFormaPagamento());
		         stmt.setString(3, formaPagamento.getNumeroCartao());
		         stmt.setString(4, formaPagamento.getDataValidade());
		         stmt.setInt(5, formaPagamento.getCvv());
		         stmt.setString(6, formaPagamento.getTitularCartao());
		         
		         rs = stmt.executeQuery();
			        
		         while (rs.next()) {
		        	 formaPagamento.setIdFormaPagamento(rs.getInt(1));
					  
				}
		         
		      } catch (SQLException e) {
		         System.out.println(e);
		      }
	   }

	  
}
    
