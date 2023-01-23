 package Model;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {
   private String driver = "com.mysql.cj.jdbc.Driver";
   private String url = "jdbc:mysql://127.0.0.1:3306/insure4soft";
   private String user = "root";
   private String password = "";

   public Connection conectar() {
      Connection con = null;

      try {
         Class.forName(this.driver);
         con = DriverManager.getConnection(this.url, this.user, this.password);
         return con;
      } catch (Exception e) {
         System.out.println(e);
         return null;
      }
   }

   public void testarConexao() {
      try {
         Connection con = this.conectar();
         System.out.println(con);
         con.close();
         
      } catch (Exception e) {
         System.out.println(e);
      }

   }
}