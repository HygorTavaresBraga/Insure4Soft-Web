package Model;

	public class Aparelho {
		
		private int idAparelho;
		private String marcaAparelho;
		private String modeloAparelho;
		private String armazenamentoAparelho;
		private double valorAparelho;		
   
		public Aparelho() {
		}

		public Aparelho(int idAparelho, String marcaAparelho, String modeloAparelho, String armazenamentoAparelho, double valorAparelho) {
		    this.idAparelho = idAparelho;
		    this.marcaAparelho = marcaAparelho;
		    this.modeloAparelho = modeloAparelho;
		    this.armazenamentoAparelho = armazenamentoAparelho;
		    this.valorAparelho = valorAparelho;
	    }
   
		public int getIdAparelho() {
			return idAparelho;
		}
		
		public void setIdAparelho(int idAparelho) {
			this.idAparelho = idAparelho;
		}
		
		public String getMarcaAparelho() {
			return marcaAparelho;
		}
		
		public void setMarcaAparelho(String marcaAparelho) {
			this.marcaAparelho = marcaAparelho;
		}
		
		public String getModeloAparelho() {
			return modeloAparelho;
		}
		
		public void setModeloAparelho(String modeloAparelho) {
			this.modeloAparelho = modeloAparelho;
		}
		
		public String getArmazenamentoAparelho() {
			return armazenamentoAparelho;
		}
		
		public void setArmazenamentoAparelho(String armazenamentoAparelho) {
			this.armazenamentoAparelho = armazenamentoAparelho;
		}
		
		public double getValorAparelho() {
			return valorAparelho;
		}
		
		public void setValorAparelho(double valorAparelho) {
			this.valorAparelho = valorAparelho;
		}


	}