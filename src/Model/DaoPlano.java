package Model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

	
	public class DaoPlano {
	   Connection con = (new Conexao()).conectar();
	   ResultSet rs;
	   
	   public static int idCliente(HttpServletRequest request, HttpServletResponse response)
			   throws IOException, ServletException{
		   
		   HttpSession session = request.getSession();		   
		   return (int) session.getAttribute("idCliente");
		   
	   }

	   public ArrayList<Plano> getPlanosCliente(Cliente cliente){
			
			String sql = "SELECT * FROM seguro INNER JOIN aparelho ON seguro.idAparelho = aparelho.idAparelho WHERE idCliente = ?";
			
			ArrayList<Plano> planos = new ArrayList<Plano>();

			try {
			
				PreparedStatement stmt = con.prepareStatement(sql);
				
				stmt.setInt(1, cliente.getIdCliente());
				
				ResultSet rs = stmt.executeQuery();
				
				while(rs.next()) {
				
					int idSeguro = rs.getInt(1);
					int idCliente = rs.getInt(2);
					int idAparelho = rs.getInt(3);
					int idFormaPagamento = rs.getInt(4);
					String planoSeguro = rs.getString(5);
					double valorSeguro = rs.getDouble(6);
					String statusSeguro = rs.getString(7);
					
					int idAparelhoOrigin = rs.getInt(8);
					String marcaAparelho = rs.getString(9);
					String modeloAparelho = rs.getString(10);
					String armazenamentoAparelho = rs.getString(11);
					double valorAparelho = rs.getDouble(12);

					planos.add(new Plano(idSeguro, idCliente, idAparelho, idFormaPagamento, planoSeguro, valorSeguro, statusSeguro,
										 idAparelhoOrigin, marcaAparelho, modeloAparelho, armazenamentoAparelho, valorAparelho));

				}
				
				return planos;
				
			} catch (Exception e) {
				System.out.println(e);
				return null;
			}
			
		}
	   
	   public static List<Plano> SegurosPendente() {
		      String sql = "SELECT * FROM seguro WHERE statusSeguro = 'Em Análise'";
		      
		      List<Plano> contratosPendentes = new ArrayList<Plano>();
		
		      try {
		    	 Connection con = (new Conexao()).conectar(); 
		         PreparedStatement stmt = con.prepareStatement(sql);
		         ResultSet rs = stmt.executeQuery();
		
		         while(rs.next()) {
		        	 
		        	int idSeguro = rs.getInt(1);
					int idCliente = rs.getInt(2);
					int idAparelho = rs.getInt(3);
					int idFormaPagamento = rs.getInt(4);
					String planoSeguro = rs.getString(5);
					double valorSeguro = rs.getDouble(6);
					String statusSeguro = rs.getString(7);
					

					contratosPendentes.add(new Plano(idSeguro, idCliente, idAparelho, idFormaPagamento, planoSeguro, valorSeguro, statusSeguro,
										 0, " ", " ", " ", 0));
		         }
		
		         stmt.close();
		         return contratosPendentes;
		         
		      } catch (Exception e) {
		         System.out.println(e);
		         return null;
		      }
		   }
	   
	   public static List<Plano> RelatorioPlanos() {
		      String sql = "SELECT * FROM seguro";
		      
		      List<Plano> planos = new ArrayList<Plano>();
		
		      try {
		    	 Connection con = (new Conexao()).conectar(); 
		         PreparedStatement stmt = con.prepareStatement(sql);
		         ResultSet rs = stmt.executeQuery();
		
		         while(rs.next()) {
		        	 
		        	int idSeguro = rs.getInt(1);
					int idCliente = rs.getInt(2);
					int idAparelho = rs.getInt(3);
					int idFormaPagamento = rs.getInt(4);
					String planoSeguro = rs.getString(5);
					double valorSeguro = rs.getDouble(6);
					String statusSeguro = rs.getString(7);
					

					planos.add(new Plano(idSeguro, idCliente, idAparelho, idFormaPagamento, planoSeguro, valorSeguro, statusSeguro,
										 0, " ", " ", " ", 0));
		         }
		
		         stmt.close();
		         return planos;
		         
		      } catch (Exception e) {
		         System.out.println(e);
		         return null;
		      }
		   }
	   
	   
	   
}
    
