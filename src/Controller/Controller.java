package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.*;

	
	@WebServlet(
	   urlPatterns = {
			   		  "/Controller",
			   		  "/home",
			   		  "/entrar",
			   		  "/registrar",
			   		  "/inserir",
			   		  "/buscaModelo",
			   		  "/modelo",
			   		  "/armazenamento",
			   		  "/planos",
			   		  "/listarPlanos",
			   		  "/resultado",
			   		  "/acessar",
			   		  "/perfil",
			   		  "/logout",
			   		  "/editarDadosCliente",
			   		  "/editarEnderecoCliente",
			   		  "/formaPagamento",
			   		  "/confirmacao",
			   		  "/contratacaoBoleto",
			   		  "/contratacaoCartao",
			   		  "/editEmail_Senha_Funcionario",
			   		  "/editEnderecoFuncionario",
			   		  "/avisarSinistro"
			   		  }
	)
	public class Controller extends HttpServlet {
	   private static final long serialVersionUID = 1L;
	   
	   Conexao conexao = new Conexao();
	   
	   Cliente cliente = new Cliente();
	   DaoCliente daoCliente = new DaoCliente();
	   
	   Funcionario funcionario = new Funcionario();
	   DaoFuncionario daoFuncionario = new DaoFuncionario();

	   Aparelho aparelho = new Aparelho();
	   DaoAparelho daoAparelho = new DaoAparelho();
	   
	
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      String acao = request.getServletPath();
      
      if (acao.equals("/home")) {
         this.PaginaInicial(request, response);
         
      }	else if (acao.equals("/entrar")) {
         this.PaginaEntrar(request, response);
         
      }	else if (acao.equals("/perfil")) {
          this.ListarPlanos(request, response);
          
      }else if (acao.equals("/registrar")) {
          this.PaginaRegistrar(request, response);
          
      } else if (acao.equals("/inserir")) {
          this.Inserir(request, response);
          
      }else if (acao.equals("/logout")) {
    	  this.Logout(request, response);   	  
          
      } else {
         response.sendRedirect("index.jsp");
      }

   }
   	
   	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String acao = request.getServletPath();

		if (acao.equals("/acessar")) {
			this.Login(request, response);

		}else if (acao.equals("/editarDadosCliente")) {
	    	  this.AtualizarDadosCliente(request, response);   	  
	          
	    }else if (acao.equals("/editarEnderecoCliente")) {
	    	  this.AtualizarEnderecoCliente(request, response);   	  
	          
	    }else if (acao.equals("/confirmacao")) {	    	
			this.ConfirmaDadosContratacao(request, response);

		}else if (acao.equals("/contratacaoBoleto")) {
			this.ContrataSeguroBoleto(request, response);

		}else if (acao.equals("/contratacaoCartao")) {
			this.ContrataSeguroCartao(request, response);

		}else if (acao.equals("/formaPagamento")) {
	    	  this.FormaPagamento(request, response);
	    	  
	    }else if (acao.equals("/modelo")) {
	    	  this.getModelosByMarca(request, response);
	          
	    }else if (acao.equals("/armazenamento")) {
	    	  this.getArmazenamentosByModelo(request, response);
	    	  
	    }else if (acao.equals("/planos")) {
	    	  this.CalculaPlanosbyAparelho(request, response);
	    	  
	    }else if (acao.equals("/editEmail_Senha_Funcionario")) {
	    	  this.AtualizarDadosFuncionario(request, response);
	    	  
	    }else if (acao.equals("/editEnderecoFuncionario")) {
	    	  this.AtualizarEnderecoFuncionario(request, response);
	    	  
	    } else if (acao.equals("/avisarSinistro")) {
	    	this.AnaliseDeSinistro(request, response);
	    	
	    } else {
			response.sendRedirect("index.html");
		}

	}
   
   protected void PaginaInicial(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      response.sendRedirect("index.html");
   }
   
   protected void PaginaEntrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      response.sendRedirect("entrar.jsp");
   }
   
   protected void PaginaPerfil(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   
	   RequestDispatcher rd = request.getRequestDispatcher("perfil.jsp");
	   rd.forward(request, response);  
	   
   }

   protected void PaginaRegistrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      response.sendRedirect("registrar.jsp");
   }
   	
   	protected void Inserir(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   
      this.cliente.setNomeCliente(request.getParameter("nome"));
      this.cliente.setCpfCliente(request.getParameter("cpf"));
      this.cliente.setTelefoneCliente(request.getParameter("telefone"));
      this.cliente.setEmailCliente(request.getParameter("email"));
      this.cliente.setSenhaCliente(request.getParameter("senha"));
      
      if(request.getParameter("confirmarSenha").equals(request.getParameter("senha"))) {
    	  
    	  this.daoCliente.CadastrarCliente(this.cliente);
    	  this.daoCliente.getIdClientebyCpf(this.cliente);
    	  this.daoCliente.CadastrarEnderecoCliente(this.cliente);
    	  
    	  response.sendRedirect("entrar");
    	  
      }else {
    	  response.setHeader("Refresh", "0; URL=http://localhost:8080/Insure4Soft/registrar.jsp");
      }

   }
   	
   	protected void getModelosByMarca(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   		
   		request.setAttribute("marcaAparelho", request.getParameter("marca"));
   		
   		this.aparelho.setMarcaAparelho(request.getParameter("marca"));
   		this.daoAparelho.getModelosByMarca(this.aparelho);

   		ArrayList<Aparelho> lista = daoAparelho.getModelosByMarca(aparelho);
		request.setAttribute("modelosAparelhos", lista);
		
		RequestDispatcher rd = request.getRequestDispatcher("modelo.jsp");
		rd.forward(request, response);
	
	}
   	
	protected void getArmazenamentosByModelo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = request.getParameter("aparelho");
   		String[] resultadoSeparado = url.split(";");
   		
   		String marcaAparelho = resultadoSeparado[0];
   		String modeloAparelho = resultadoSeparado[1];   	
   		
   		request.setAttribute("marca", marcaAparelho);
   		request.setAttribute("modelo", modeloAparelho);
   		
   		this.aparelho.setMarcaAparelho(marcaAparelho);
   		this.aparelho.setModeloAparelho(modeloAparelho);
   		this.daoAparelho.getArmazenamentosByModelo(this.aparelho);
   		
   		ArrayList<Aparelho> lista = daoAparelho.getArmazenamentosByModelo(aparelho);
		request.setAttribute("armazenamentosAparelhos", lista);
		
		RequestDispatcher rd = request.getRequestDispatcher("armazenamento.jsp");
		rd.forward(request, response);	

	}
	
	protected void CalculaPlanosbyAparelho(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = request.getParameter("aparelho");
   		String[] resultadoSeparado = url.split(";");
   		
   		String marcaAparelho = resultadoSeparado[0];
   		String modeloAparelho = resultadoSeparado[1];  
   		String armazenamentoAparelho = resultadoSeparado[2];
   		
   		request.setAttribute("marca", marcaAparelho);
   		request.setAttribute("modelo", modeloAparelho);
   		request.setAttribute("armazenamento", armazenamentoAparelho);
   		
   		this.aparelho.setArmazenamentoAparelho(armazenamentoAparelho);
   		this.daoAparelho.getAparelho(this.aparelho);
   		
   		ArrayList<Aparelho> lista = daoAparelho.getAparelho(aparelho);
		request.setAttribute("aparelho", lista);
		
		RequestDispatcher rd = request.getRequestDispatcher("planos.jsp");
		rd.forward(request, response);	
		
	}
	
	protected void Login(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		
		Usuario usuario = new Usuario();
		
		Cliente cliente = new Cliente();
		DaoCliente daoCliente = new DaoCliente();
		   
	    Funcionario funcionario = new Funcionario();
		DaoFuncionario daoFuncionario = new DaoFuncionario();
		
		Endereco endereco = new Endereco();
		DaoEndereco daoEndereco = new DaoEndereco();
		
		usuario.setCpfUsuario(request.getParameter("cpf"));
		usuario.setSenhaUsuario(request.getParameter("senha"));
		
		daoCliente.buscaCliente(usuario, cliente);
		daoFuncionario.buscaFuncionario(usuario, funcionario);

		HttpSession session = request.getSession();
		
	
		if(cliente.getCpfCliente() != null && cliente.getSenhaCliente() != null) {
			
			if(cliente.getCpfCliente().equals(usuario.getCpfUsuario()) &&
			   cliente.getSenhaCliente().equals(usuario.getSenhaUsuario())) {
				
				String nomeCompletoCliente = cliente.getNomeCliente();
		   		String[] nomeClienteSeparado = nomeCompletoCliente.split(" ");
		   		
		   		String primeiroNomeCliente = nomeClienteSeparado[0];
		   		
		   		session.setAttribute("primeiroNomeCliente", primeiroNomeCliente);
				
				session.setAttribute("bemVindo", "Bem-Vindo(a), " + primeiroNomeCliente + "!");
				
				session.setAttribute("idCliente", cliente.getIdCliente());
				session.setAttribute("nomeCliente", cliente.getNomeCliente());
				session.setAttribute("emailCliente", cliente.getEmailCliente());
				session.setAttribute("telefoneCliente", cliente.getTelefoneCliente());
				session.setAttribute("cpfCliente", cliente.getCpfCliente());
				session.setAttribute("senhaCliente", cliente.getSenhaCliente());
				
				daoEndereco.getEnderecoClientebyId(cliente, endereco);
				
				session.setAttribute("idEnderecoCliente", endereco.getIdEndereco());
				session.setAttribute("cepCliente", endereco.getCep());
				session.setAttribute("cidadeCliente", endereco.getCidade());
				session.setAttribute("bairroCliente", endereco.getBairro());
				session.setAttribute("ruaCliente", endereco.getRua());
				session.setAttribute("logradouroCliente", endereco.getLogradouro());
				session.setAttribute("complementoCliente", endereco.getComplemento());
				
				

				if(request.getParameter("marca") != null) {
					
					request.setAttribute("marca", request.getParameter("marca"));
					request.setAttribute("modelo", request.getParameter("modelo"));
					request.setAttribute("armazenamento", request.getParameter("armazenamento"));
					request.setAttribute("valor", request.getParameter("valor"));
					request.setAttribute("plano", request.getParameter("plano"));
					
					response.sendRedirect("forma-pagamento.jsp");
					
				} else {
					
					response.sendRedirect("index.jsp");
					
				}
			
			} else {
				session.invalidate();
				response.sendRedirect("entrar.jsp");
			}
			
		}else if(funcionario.getCpfFuncionario() != null && funcionario.getSenhaFuncionario() != null) {
			
			if(funcionario.getCpfFuncionario().equals(usuario.getCpfUsuario()) &&
			   funcionario.getCpfFuncionario().equals(usuario.getCpfUsuario())) {
		
				String nomeCompletoFuncionario = funcionario.getNomeFuncionario();
		   		String[] nomeFuncionarioSeparado = nomeCompletoFuncionario.split(" ");
		   		
		   		String primeiroNomeFuncionario = nomeFuncionarioSeparado[0];
		   		
		   		session.setAttribute("primeiroNomeFuncionario", primeiroNomeFuncionario);
				
				session.setAttribute("bemVindo", "Bem-Vindo(a), " + primeiroNomeFuncionario + "!");
				
				session.setAttribute("idFuncionario", funcionario.getIdFuncionario());
				session.setAttribute("nomeFuncionario", funcionario.getNomeFuncionario());
				session.setAttribute("telefoneFuncionario", funcionario.getTelefoneFuncionario());
				session.setAttribute("emailFuncionario", funcionario.getEmailFuncionario());
				session.setAttribute("cpfFuncionario", funcionario.getCpfFuncionario());
				session.setAttribute("senhaFuncionario", funcionario.getSenhaFuncionario());
				session.setAttribute("cargoFuncionario", funcionario.getCargoFuncionario());
				
				daoEndereco.getEnderecoFuncionariobyId(funcionario, endereco);
				
				session.setAttribute("idEnderecoFuncionario", endereco.getIdEndereco());
				session.setAttribute("cepFuncionario", endereco.getCep());
				session.setAttribute("cidadeFuncionario", endereco.getCidade());
				session.setAttribute("bairroFuncionario", endereco.getBairro());
				session.setAttribute("ruaFuncionario", endereco.getRua());
				session.setAttribute("logradouroFuncionario", endereco.getLogradouro());
				session.setAttribute("complementoFuncionario", endereco.getComplemento());
				
				response.sendRedirect("perfilAdm.jsp");				
				
				} else {
					session.invalidate();
					response.sendRedirect("entrar.jsp");
				}
				
		}else {
			session.invalidate();
			response.sendRedirect("entrar.jsp");
		}


	}

	protected void Logout(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();		
		session.invalidate();
		response.sendRedirect("index.jsp");

	}
	
	protected void AtualizarDadosCliente(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();	
		
		Cliente cliente = new Cliente();
		DaoCliente daoCliente = new DaoCliente();
		
		cliente.setIdCliente((int) session.getAttribute("idCliente"));
		
		cliente.setNomeCliente(request.getParameter("nome"));
		cliente.setTelefoneCliente(request.getParameter("telefone"));
		cliente.setEmailCliente(request.getParameter("email"));
		cliente.setSenhaCliente(request.getParameter("senha"));
		
		daoCliente.AtualizaDados(cliente);
		
		session.setAttribute("idCliente", cliente.getIdCliente());
		session.setAttribute("nomeCliente", cliente.getNomeCliente());
		session.setAttribute("emailCliente", cliente.getEmailCliente());
		session.setAttribute("telefoneCliente", cliente.getTelefoneCliente());
		session.setAttribute("senhaCliente", cliente.getSenhaCliente());
		
		response.setHeader("Refresh", "0; URL=http://localhost:8080/Insure4Soft/perfil");
		
	}
	
	protected void AtualizarEnderecoCliente(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();	
		
		Cliente cliente = new Cliente();
		DaoCliente daoCliente = new DaoCliente();
		
		Endereco endereco = new Endereco();
		
		cliente.setIdCliente((int) session.getAttribute("idCliente"));
		endereco.setCep(request.getParameter("cep"));
		endereco.setCidade(request.getParameter("cidade"));
		endereco.setBairro(request.getParameter("bairro"));
		endereco.setRua(request.getParameter("rua"));
		endereco.setLogradouro( Integer.parseInt(request.getParameter("logradouro")) );
		endereco.setComplemento(request.getParameter("complemento"));
		
		daoCliente.AtualizaEndereco(cliente, endereco);
		
		session.setAttribute("cepCliente", endereco.getCep());
		session.setAttribute("cidadeCliente", endereco.getCidade());
		session.setAttribute("bairroCliente", endereco.getBairro());
		session.setAttribute("ruaCliente", endereco.getRua());
		session.setAttribute("logradouroCliente", endereco.getLogradouro());
		session.setAttribute("complementoCliente", endereco.getComplemento());
		
		response.setHeader("Refresh", "0; URL=http://localhost:8080/Insure4Soft/perfil");
		
	}
	
	protected void ListarPlanos(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();	
		
		Cliente cliente = new Cliente();		
		DaoPlano daoPlano = new DaoPlano();
		
		cliente.setIdCliente((int) session.getAttribute("idCliente"));

   		ArrayList<Plano> listaPlanos = daoPlano.getPlanosCliente(cliente);
		request.setAttribute("listaPlanos", listaPlanos);
		
		RequestDispatcher rd = request.getRequestDispatcher("perfil.jsp");
		rd.forward(request, response);
		
		
	}
	
	protected void FormaPagamento(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setAttribute("marca", request.getParameter("marca"));
		request.setAttribute("modelo", request.getParameter("modelo"));
		request.setAttribute("armazenamento", request.getParameter("armazenamento"));
		request.setAttribute("valor", request.getParameter("valor"));
		request.setAttribute("plano", request.getParameter("plano"));
		
		RequestDispatcher rd = request.getRequestDispatcher("forma-pagamento.jsp");
		rd.forward(request, response);
	}
	
	protected void ConfirmaDadosContratacao(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setAttribute("marca", request.getParameter("marca"));
		request.setAttribute("modelo", request.getParameter("modelo"));
		request.setAttribute("armazenamento", request.getParameter("armazenamento"));
		request.setAttribute("valor", request.getParameter("valor"));
		request.setAttribute("plano", request.getParameter("plano"));
		
		String nao_logado = request.getParameter("entrar");
		
		if(nao_logado != null) {
			
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
			
		}else if(request.getParameter("credito-debito") != null) {
			
			request.setAttribute("forma-pagamento", "Adicionar Cartao");
			
			RequestDispatcher rd = request.getRequestDispatcher("confirmacao.jsp");
			rd.forward(request, response);

			
		}else if(request.getParameter("boleto") != null) {
			
			request.setAttribute("forma-pagamento", "Boleto");			
			
			RequestDispatcher rd = request.getRequestDispatcher("confirmacao.jsp");
			rd.forward(request, response);
			
		}

	}
	
	protected void ContrataSeguroBoleto(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String marca = request.getParameter("marca");
		String modelo = request.getParameter("modelo");
		String armazenamento = request.getParameter("armazenamento");
		double valorSeguro = Double.valueOf(request.getParameter("valor"));
		String planoSeguro = request.getParameter("plano");

			HttpSession session = request.getSession();

			Plano plano = new Plano();
			DaoSeguro daoSeguro = new DaoSeguro();
			
			plano.setIdCliente((int) session.getAttribute("idCliente"));
			
			plano.setMarcaAparelho(marca);
			plano.setModeloAparelho(modelo);
			plano.setArmazenamentoAparelho(armazenamento);
			
			plano.setValorSeguro(valorSeguro);
			plano.setPlanoSeguro(planoSeguro);
			plano.setIdFormaPagamento(0);
			
			
			DaoAparelho daoAparelho = new DaoAparelho();
			
			daoAparelho.getIdAparelho(plano);
			
			daoSeguro.CadastrarSeguro(plano);
			
			response.sendRedirect("analise.jsp");
			

	}
	
	protected void ContrataSeguroCartao(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		/*FORMA PAGAMENTO*/
		
		/*ARMAZENA OS DADOS DO CARTAO*/
		String numeroCartao = request.getParameter("numeroCartao");
		String dataValidade = (request.getParameter("mesCartao"))+"/"+(request.getParameter("anoCartao"));
		String nomeTitular = request.getParameter("titularCartao");
		String formaPagamento = request.getParameter("tipoPagamento");
		/*int cvv = Integer.parseInt(request.getParameter("cvv"));*/
		
		/*INSTANCIA A SESS�O*/
		HttpSession session = request.getSession();
		
		/*INSTANCIA A CLASSE FORMA DE PAGAMENTO*/
		FormaPagamento instformaPagamento = new FormaPagamento();
		
		instformaPagamento.setIdCliente((int) session.getAttribute("idCliente"));
		instformaPagamento.setFormaPagamento(formaPagamento);
		instformaPagamento.setTitularCartao(nomeTitular);
		instformaPagamento.setNumeroCartao(numeroCartao);
		instformaPagamento.setDataValidade(dataValidade);
		/*	instformaPagamento.setCvv(cvv);*/
		
		/*INSTANCIA O DAO DA CLASSE FORMA DE PAGAMENTO*/
		DaoFormaPagamento daoFormaPagamento = new DaoFormaPagamento();
		
		/*CADASTRA O CART�O*/
		daoFormaPagamento.AdicionarCartao(instformaPagamento);
		
		/*BUSCA O ID DO CART�O REGISTRADO*/
		daoFormaPagamento.getIdFormaPagamento(instformaPagamento);
		
		
		
		/*----------------------------*/
		

		/*SEGURO*/

		/*ARMAZENA OS DADOS DO APARELHO*/
		String marca = request.getParameter("marca");
		String modelo = request.getParameter("modelo");
		String armazenamento = request.getParameter("armazenamento");
		double valorSeguro = Double.valueOf(request.getParameter("valor"));
		String planoSeguro = request.getParameter("plano");
		
		/*INSTANCIA A CLASSE PLANO*/
		Plano plano = new Plano();	
		
		plano.setIdCliente((int) session.getAttribute("idCliente"));
		plano.setMarcaAparelho(marca);
		plano.setModeloAparelho(modelo);
		plano.setArmazenamentoAparelho(armazenamento);
		plano.setValorSeguro(valorSeguro);
		plano.setPlanoSeguro(planoSeguro);
		
		/*INSTANCIA O DAO DA CLASSE PLANO*/
		DaoAparelho daoAparelho = new DaoAparelho();
		
		/*BUSCA ID DO APARELHO SELECIONADO*/
		daoAparelho.getIdAparelho(plano);
		
		/*INSTANCIA O DAO DA CLASSE SEGURO*/
		DaoSeguro daoSeguro = new DaoSeguro();
		
		/*CADASTRA O SEGURO*/
		daoSeguro.CadastrarSeguroCartao(plano, instformaPagamento);
		
		/*REDIRECIONA PARA A PR�XIMA P�GINA*/
		response.sendRedirect("analise.jsp");

	}

	protected void AtualizarDadosFuncionario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      
			Funcionario funcionario = new Funcionario();
			
			HttpSession session = request.getSession();
			
	     
	      funcionario.setNomeFuncionario(request.getParameter("nome"));
	      funcionario.setTelefoneFuncionario(request.getParameter("telefone"));
	      funcionario.setEmailFuncionario(request.getParameter("email"));
	      funcionario.setSenhaFuncionario(request.getParameter("senha"));
	      funcionario.setIdFuncionario((int)session.getAttribute("idFuncionario"));
	      
	      daoFuncionario.AtualizaDados(funcionario);
	      
	      session.setAttribute("nomeFuncionario",request.getParameter("nome"));
	      session.setAttribute("telefoneFuncionario",request.getParameter("telefone"));
	      session.setAttribute("emailFuncionario",request.getParameter("email"));
	      session.setAttribute("senhaFuncionario",request.getParameter("senha"));
	           
	      response.setHeader("Refresh", "0; URL=http://localhost:8080/Insure4Soft/perfil.jsp");
	      
	   }
	
	protected void AtualizarEnderecoFuncionario(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();	
		
		Funcionario funcionario = new Funcionario();
		DaoEndereco daoendereco = new DaoEndereco();
		
		Endereco endereco = new Endereco();
		
		funcionario.setIdFuncionario((int) session.getAttribute("idFuncionario"));
		endereco.setCep(request.getParameter("cep"));
		endereco.setCidade(request.getParameter("cidade"));
		endereco.setBairro(request.getParameter("bairro"));
		endereco.setRua(request.getParameter("rua"));
		endereco.setLogradouro( Integer.parseInt(request.getParameter("logradouro")) );
		endereco.setComplemento(request.getParameter("complemento"));
		
		daoendereco.AtualizaEnderecoFuncionario(funcionario, endereco);
		
		session.setAttribute("cepFuncionario", endereco.getCep());
		session.setAttribute("cidadeFuncionario", endereco.getCidade());
		session.setAttribute("bairroFuncionario", endereco.getBairro());
		session.setAttribute("ruaFuncionario", endereco.getRua());
		session.setAttribute("logradouroFuncionario", endereco.getLogradouro());
		session.setAttribute("complementoFuncionario", endereco.getComplemento());
		
		response.setHeader("Refresh", "0; URL=http://localhost:8080/Insure4Soft/perfil.jsp");
		
	}

	protected void AnaliseDeSinistro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Sinistro sinistro = new Sinistro();
		DaoAnalises daoAnalises = new DaoAnalises();
		
		int idCliente = Integer.parseInt(request.getParameter("idCliente"));
		int idAparelho = Integer.parseInt(request.getParameter("idSeguro"));
		String acontecimento = request.getParameter("acontecimento");		
		String detalheAcontecimento = request.getParameter("detalhesAcontecimento");
	
		sinistro.setIdCliente(idCliente);
		sinistro.setIdCliente(idAparelho);
		sinistro.setAcontecimento(acontecimento);
		sinistro.setDetalhesAcontecimento(detalheAcontecimento);
			
		daoAnalises.CadastrarAvisoSinistro(sinistro);

		
	}
	
	
	
}
