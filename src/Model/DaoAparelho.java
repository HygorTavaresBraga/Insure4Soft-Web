package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Aparelho;

public class DaoAparelho {
   
   Connection con;
   ResultSet rs;
   
   public DaoAparelho() {
		con = new Conexao().conectar();
	}
   
   public void getIdAparelho(Plano plano) {
	   
	   String sql = "SELECT idAparelho FROM aparelho WHERE marcaAparelho = ? AND modeloAparelho = ? AND	armazenamentoAparelho = ?";
	   
	   try {
	         PreparedStatement stmt = this.con.prepareStatement(sql);
	         
	         stmt.setString(1, plano.getMarcaAparelho());
	         stmt.setString(2, plano.getModeloAparelho());
	         stmt.setString(3, plano.getArmazenamentoAparelho());

	         rs = stmt.executeQuery();
	        
	         while (rs.next()) {

	        	 plano.setIdAparelho(rs.getInt(1));
				  
			}
	         
	      } catch (SQLException e) {
	         System.out.println(e);
	      }
	   
   }
   
   public ArrayList<Aparelho>getModelosByMarca(Aparelho aparelho){
		
		String sql = "SELECT DISTINCT modeloAparelho FROM aparelho WHERE marcaAparelho = ?";
		
		ArrayList<Aparelho> modelos = new ArrayList<>();
		
		try {
			PreparedStatement stmt = con.prepareStatement(sql);
			
			stmt.setString(1, aparelho.getMarcaAparelho());
			
			rs = stmt.executeQuery();
			
			while(rs.next()) {
				
				String modeloAparelho = rs.getString(1);

				modelos.add(new Aparelho(0, "", modeloAparelho, "", 0));
				
			}
			
			return modelos;
			
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
		
	}
   
   public ArrayList<Aparelho>getArmazenamentosByModelo(Aparelho aparelho){
		
		String sql = "SELECT DISTINCT armazenamentoAparelho FROM aparelho WHERE marcaAparelho = ? AND modeloAparelho = ?";
		
		ArrayList<Aparelho> armazenamentos = new ArrayList<>();
		
		try {
			PreparedStatement stmt = con.prepareStatement(sql);
			
			stmt.setString(1, aparelho.getMarcaAparelho());
			stmt.setString(2, aparelho.getModeloAparelho());
			
			rs = stmt.executeQuery();
			
			while(rs.next()) {

				String armazenamentoAparelho = rs.getString(1);
				
				armazenamentos.add(new Aparelho(0, "", "", armazenamentoAparelho, 0));
				
			}

			return armazenamentos;
			
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
		
	}
   
   public ArrayList<Aparelho>getAparelho(Aparelho aparelho){
		
		String sql = "SELECT * FROM aparelho WHERE marcaAparelho = ? AND modeloAparelho = ? AND armazenamentoAparelho = ?";
		
		ArrayList<Aparelho> aparelhos = new ArrayList<>();
		
		try {
			PreparedStatement stmt = con.prepareStatement(sql);
			
			stmt.setString(1, aparelho.getMarcaAparelho());
			stmt.setString(2, aparelho.getModeloAparelho());
			stmt.setString(3, aparelho.getArmazenamentoAparelho());
			
			rs = stmt.executeQuery();
			
			while(rs.next()) {
				
				int idAparelho = rs.getInt(1);
				String marcaAparelho = rs.getString(2);
				String modeloAparelho = rs.getString(3);
				String armazenamentoAparelho = rs.getString(4);
				double valorAparelho = rs.getDouble(5);
				
				aparelhos.add(new Aparelho(idAparelho, marcaAparelho, modeloAparelho, armazenamentoAparelho, valorAparelho));
				
			}

			return aparelhos;
			
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
		
	}
   
   public static List<Aparelho> RelatorioAparelhos() {
	      String sql = "SELECT * FROM aparelho";
	      
	      ArrayList<Aparelho> aparelhos = new ArrayList<>();
	
	      try {
	    	 Connection con = new Conexao().conectar();
	         PreparedStatement stmt = con.prepareStatement(sql);
	         ResultSet rs = stmt.executeQuery();
	
	         while(rs.next()) {
	        	 
	        	int idAparelho = rs.getInt(1);
				String marcaAparelho = rs.getString(2);
				String modeloAparelho = rs.getString(3);
				String armazenamentoAparelho = rs.getString(4);
				double valorAparelho = rs.getDouble(5);
					
				aparelhos.add(new Aparelho(idAparelho, marcaAparelho, modeloAparelho, armazenamentoAparelho, valorAparelho));
	         }
	
	         stmt.close();
	         return aparelhos;
	         
	      } catch (Exception e) {
	         System.out.println(e);
	         return null;
	      }
	   }

}
    
