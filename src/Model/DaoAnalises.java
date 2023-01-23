package Model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class DaoAnalises {

	
	 Connection con;
	   ResultSet rs;
	   
	   public DaoAnalises () {
		   
		   con = new Conexao().conectar();
		   
	   }
	   
	   public void CadastrarAvisoSinistro(Sinistro sinistro) {		   	 
		   		
		  
		   
		      String sql = "INSERT INTO analisesinistro(idCliente, idSeguro, acontecimento, detalheAcontecimento, bo) VALUES (?,?,?,?,?)";
		
		      try {
		         PreparedStatement stmt = this.con.prepareStatement(sql);

		         stmt.setInt(1, sinistro.getIdCliente());
		         stmt.setInt(2, sinistro.getIdSeguro());
		         stmt.setString(3, sinistro.getAcontecimento());
		         stmt.setString(4, sinistro.getDetalhesAcontecimento());
		         stmt.setString(5, "");
		         
		         stmt.executeUpdate();
		         stmt.close();
		         
		      } catch (SQLException e) {
		         System.out.println(e);
		      }
		
		   }
	
}
