<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>

<%@ page import= "Model.Plano" %>

<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="img/favicon_purple.ico">
    <title>Confirmação</title>
    
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- Vendor CSS Files -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/icofont/icofont.min.css" rel="   stylesheet">
    <link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="vendor/venobox/venobox.css" rel="stylesheet">
    <link href="vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="vendor/aos/aos.css" rel="stylesheet">
</head>

<style>

#steps{
	gap: 3%;
}

input:valid:focus, input:invalid:focus {
  border: 1px solid #9850B5;
  box-shadow: none;
}

</style>
<body>

 <!-- ======= Header ======= -->
	<header id="header" class="header-rolled mb-3" style="height: 15vh;">
		<div class="container d-flex align-items-center">

			<div class="logo mr-auto">

				<a href="indexUsuario.jsp"> <img id="logo-nav" width="100"
					height="50" src="img/logo2.png" alt="Logo">
				</a>

			</div>

			<nav class="nav-menu d-none d-lg-block">
				<ul>
					<li><a href="index.jsp">Início</a></li>
					<li><a href="index.jsp#about">Quem somos</a></li>
					<li><a href="index.jsp#services">Planos</a></li>
					<li><a href="index.jsp#download">Baixar App</a></li>
					<li><a href="index.jsp#contact">Contate-nos</a></li>
					<li><a href="faq.html">Faq</a></li>	
					
					<li>

						<div class="dropdown ml-5">
						
						<% if(session.getAttribute("idCliente") != null) { %>
					
							<a id="btn-login" href="perfil">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-person-fill"
								viewBox="0 0 16 16">
                                 <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                             </svg> <% out.print(session.getAttribute("primeiroNomeCliente")); %>
							</a>
							
						<% }else if(session.getAttribute("idFuncionario") != null) { %>
							<a id="btn-login" href="perfil">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-person-fill"
								viewBox="0 0 16 16">
                                 <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                             </svg> <% out.print(session.getAttribute("primeiroNomeFuncionario")); %>
							</a>
						<% } else if(session.getAttribute("idCliente") == null && session.getAttribute("idFuncionario") == null) { %>
							<a id="btn-login" href="entrar.jsp"> <svg
									xmlns="http://www.w3.org/2000/svg" width="16" height="16"
									fill="currentColor" class="bi bi-person-fill"
									viewBox="0 0 16 16">
                                    <path
										d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                                </svg> Entrar
							</a>
						<% } %>
						</div>

					</li>
								
				</ul>
			</nav>
		</div>
	</header>
	<!-- End Header -->
	
	<div class="d-flex flex-column justify-content-center align-items-center" style="height: 85vh;">
	
		<div id="steps" class="d-flex justify-content-around align-items-center mb-3" style="width: 50vw; height: auto;">
		
			<div class="text-center" style="width: 33%;">
				<span>Forma de Pagamento</span>
				<div style="width: 100%; height: 5px; background: green; border-radius: 15px;"></div>
			</div>
				
			<div class="text-center" style="width: 33%;">
				<span>Confirmação</span>
				<div style="width: 100%; height: 5px; background: green; border-radius: 15px;"></div>
			</div>
			
			<div class="text-center" style="width: 33%;">
				<span>Finalização</span>
				<div style="width: 100%; height: 5px; background: grey; border-radius: 15px;"></div>
			</div>
		
		</div>
	
	<div class="box" style="width: 90vw; height: 60vh; color: #fff; background-color: #cecece; border-radius: 15px;">
		 

			
		 
		 <% if(request.getAttribute("forma-pagamento").equals("Adicionar Cartao")){ %>
		 
		 <div class="row d-flex">
		

		 	<div class="col-sm-4 col-md-4 col-lg-4" style="background-color: #9850B5; border-radius: 15px; ">
		 	
			 	<h3 class="pl-4 pt-4 pb-2" style="border-bottom: solid 1px #fff; font-weight: bolder;">Endereço de Cobrança</h3>

				<form action="contratacaoCartao" method="POST">

			 		<input hidden id="marca" name="marca" value="<%= request.getAttribute("marca") %>">
				 	<input hidden id="modelo" name="modelo" value="<%= request.getAttribute("modelo") %>">
				 	<input hidden id="armazenamento" name="armazenamento" value="<%= request.getAttribute("armazenamento") %>">							
				 	<input hidden  id="valor" name="valor" value="<%= request.getAttribute("valor") %>">
					<input hidden id="plano" name="plano" value="<%= request.getAttribute("plano") %>">
				 
			 	<div class="ml-2 p-5">			 	

			 	  <label for="cep" class="form-label">CEP</label>
			      <input disabled type="text" class="form-control" id="cep" name="cep"
				      
				      <% 
					      	if(session.getAttribute("cepCliente") != null){
					      %>
					      		value="<% out.println(session.getAttribute("cepCliente")); %>">
					      <% 
					      	}
					      %>
						      
				      <label for="cidade" class="form-label">Cidade</label>
				      <input disabled type="text" class="form-control" id="cidade" name="cidade"
					       <% 
					      	if(session.getAttribute("cidadeCliente") != null){
					       %>
					      		value="<% out.println(session.getAttribute("cidadeCliente")); %>">
					       <% 
					      	}
					       %>
				
				      <label for="bairro" class="form-label">Bairro</label>
				      <input disabled type="text" class="form-control" id="bairro" name="bairro"
				      	 <% 
					      	if(session.getAttribute("bairroCliente") != null){
					      %>
					      		value="<% out.println(session.getAttribute("bairroCliente")); %>">
					      <% 
					      	}
					      %>
					      
					  <label for="rua" class="form-label">Rua</label>
				      <input disabled type="text" class="form-control" id="rua" name="rua"
					       <% 
					      	if(session.getAttribute("ruaCliente") != null){
					       %>
					      		value="<% out.println(session.getAttribute("ruaCliente")); %>">
					       <% 
					      	}
					       %>
				      
				      <label for="numero" class="form-label">Logradouro</label>
				      <input disabled type="text" class="form-control" id="logradouro" name="logradouro"
				          <% 
					      	if(session.getAttribute("logradouroCliente") != null && (int) session.getAttribute("logradouroCliente") != 0){
					      %>
					      		value="<% out.println(session.getAttribute("logradouroCliente")); %>">
					      <% 
					      	}
					      %>
				      
				      <label for="complemento" class="form-label">Complemento</label>
				      <input disabled type="text" class="form-control" id="complemento" name="complemento"
					      <% 
					      	if(session.getAttribute("complementoCliente") != null){
					      %>
					      		value="<% out.println(session.getAttribute("complementoCliente")); %>">
					      <% 
					      	}
					      %>
				      
				</div>
		 	
		 	</div>

			 	<div class="col-sm-8 col-md-8 col-lg-8" style="background-color: #cecece; color: #000;">
			 	
			 	
			 	<h3 class="d-flex pl-4 pt-4 pb-2" style="width: 100%; color: #000; border-bottom: solid 1px #000; font-weight: bolder;">
			 		<% out.print(request.getAttribute("forma-pagamento")); %>
			 		
			 	<button class="d-flex p-2 ml-auto" style="background-color: green; color: #fff; border-radius: 25px; border: solid 1px #000; font-size: 15px;">
				 	<div><strong>Finalizar</strong></div>
				 	<div>
					 	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-right" viewBox="0 0 16 16">
						  <path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
						</svg>
				 	</div>
				 </button>
			 	</h3>
			 	
			 	  <div id="add-cartao" class="row mt-5">
			 	  
			 	  	<div class="col-sm-6 col-md-6 col-lg-6">			 	  	
			 	  	
			 	  		<label class="col-form-label"><strong>Número do cartão</strong></label>
			 	  		<input required style="width: 80%;" class="form-control" type="text" placeholder="XXXX XXXX XXXX XXXX" id="numeroCartao" name="numeroCartao"/>
			 	  		
			 	  		<label class="col-form-label mt-4"><strong>Data de validade</strong></label>
			 	  		
			 	  		<div class="d-flex">
				 	  		<input required style="width: 30%;" class="form-control" type="text" placeholder="MM" id="mesCartao" name="mesCartao"/>
				 	  		<input required style="width: 30%;" class="form-control" type="text" placeholder="AA" id="anoCartao" name="anoCartao"/>
				 	  	</div>
			 	  		
			 	  		<label class="col-form-label mt-4"><strong>Nome do titular</strong></label>
			 	  		<input required style="width: 80%;" class="form-control" type="text" id="titularCartao" name="titularCartao"/>
			 	  		
			 	  		<div class="d-flex mt-4">
			 	  		
				 	  		<div class="form-check mr-4">
				 	  		
							  <input class="form-check-input" type="radio" name="tipoPagamento" value="Credito" id="tipoPagamento">
							  <label class="form-check-label" for="flexRadioDefault1">
							    Crédito
							  </label>
							  
							</div>
							
							<div class="form-check">
				 	  		
							  <input class="form-check-input" type="radio" name="tipoPagamento" value="Debito" id="tipoPagamento">
							  <label class="form-check-label" for="flexRadioDefault1">
							    Débito
							  </label>
							  
							</div>
			 	  		
			 	  		</div>
			 	  		
			 	  		</form>
			 	  		
			 	  	</div>
			 	  	
			 	  	<div class="col-sm-6 col-md-6 col-lg-6">
			 	  	
			 	  		<div style="background: #9850B5; margin-right: -15px; margin-top: 30px; border-top-left-radius: 15px; border-bottom-left-radius: 15px;" class="d-flex justify-content-center align-items-center">
			 	  		
				 	  		<img width="50" height="50" src="img/logo/bandeira/american-express.svg"/>
				 	  		<img width="50" height="25" src="img/logo/bandeira/elo.png"/>
				 	  		<img width="50" height="50" src="img/logo/bandeira/master-card.svg"/>
				 	  		<img width="50" height="25" src="img/logo/bandeira/visa.png"/>
				 	  		
				 	  	</div>
				 	  	
				 	  	<label class="col-form-label mt-3"><strong>Código de segurança</strong></label>
			 	  		<input required minlenght="3" maxlenght="3" style="width: 50%;" class="form-control" type="text" placeholder="CVV" name="cvv" id="cvv"/>
			 	  		
			 	  		<div style="padding-top: 80px;" class="form-check ml-1">
						  <input onclick="Cartao()" class="form-check-input" type="checkbox" id="check1">
						  <label class="form-check-label" for="flexCheckDefault">
						    Desejo usar um cartão já cadastrado.
						  </label>
						</div>
			 	  	
			 	  	</div>
			 	  
			 	  </div>
			 	  
			 	  <div style="display: none" id="meus-cartoes" class="row mt-2">
			 	  
				 	  <div class="col-sm-12 col-md-12 col-lg-12">
				 	  
				 	  	<h3 class="pl-4 pt-4 pb-2" style="color: #000; font-weight: bolder;">Meus Cartões</h3>
				 	  
				 	  	<select class="form-select mt-2">
				 	  		<option selected hidden>Selecione</option>
				 	  		<option value="">XXXX XXXX XXXX XXXX</option>
				 	  		<option value="">XXXX XXXX XXXX XXXX</option>	
				 	  	</select>
				 	  	
				 	  	<div style="padding-top: 80px;" class="form-check ml-1">
						  <input onclick="Cartao()" class="form-check-input" type="checkbox" id="check2">
						  <label class="form-check-label" for="flexCheckDefault">
						    Desejo usar um cartão não cadastrado.
						  </label>
						</div>
				 	  	
				 	  </div>
			 	  	
			 		</div>
				</div>
				
			
				</div>
			
				
			</div>

		
			 	<%} else if(request.getAttribute("forma-pagamento").equals("Boleto")){ %>
			 	
			 	<div class="row d-flex">
			 	
			 	<div class="col-sm-4 col-md-4 col-lg-4" style="background-color: #9850B5; border-radius: 15px; ">
		 	
			 	<h3 class="pl-4 pt-4 pb-2" style="border-bottom: solid 1px #fff; font-weight: bolder;">Endereço de Cobrança</h3>

				 	<div class="ml-2 p-5">
				 	
				 	<form action=contratacaoBoleto method="POST">
			 	
					 	<input hidden id="marca" name="marca" value="<%= request.getAttribute("marca") %>">
					 	<input hidden id="modelo" name="modelo" value="<%= request.getAttribute("modelo") %>">
					 	<input hidden id="armazenamento" name="armazenamento" value="<%= request.getAttribute("armazenamento") %>">							
					 	<input hidden id="valor" name="valor" value="<%= request.getAttribute("valor") %>">
					 	<input hidden id="plano" name="plano" value="<%= request.getAttribute("plano") %>">
				 	
				 	  <label for="cep" class="form-label">CEP</label>
				      <input disabled type="text" class="form-control" id="cep" name="cep"
					      
					      <% 
					      	if(session.getAttribute("cepCliente") != null){
					      %>
					      		value="<% out.println(session.getAttribute("cepCliente")); %>">
					      <% 
					      	}
					      %>
						      
				      <label for="cidade" class="form-label">Cidade</label>
				      <input disabled type="text" class="form-control" id="cidade" name="cidade"
					       <% 
					      	if(session.getAttribute("cidadeCliente") != null){
					       %>
					      		value="<% out.println(session.getAttribute("cidadeCliente")); %>">
					       <% 
					      	}
					       %>
				
				      <label for="bairro" class="form-label">Bairro</label>
				      <input disabled type="text" class="form-control" id="bairro" name="bairro"
				      	 <% 
					      	if(session.getAttribute("bairroCliente") != null){
					      %>
					      		value="<% out.println(session.getAttribute("bairroCliente")); %>">
					      <% 
					      	}
					      %>
					      
					  <label for="rua" class="form-label">Rua</label>
				      <input disabled type="text" class="form-control" id="rua" name="rua"
					       <% 
					      	if(session.getAttribute("ruaCliente") != null){
					       %>
					      		value="<% out.println(session.getAttribute("ruaCliente")); %>">
					       <% 
					      	}
					       %>
				      
				      <label for="numero" class="form-label">Logradouro</label>
				      <input disabled type="text" class="form-control" id="logradouro" name="logradouro"
				          <% 
					      	if(session.getAttribute("logradouroCliente") != null && (int) session.getAttribute("logradouroCliente") != 0){
					      %>
					      		value="<% out.println(session.getAttribute("logradouroCliente")); %>">
					      <% 
					      	}
					      %>
				      
				      <label for="complemento" class="form-label">Complemento</label>
				      <input disabled type="text" class="form-control" id="complemento" name="complemento"
					      <% 
					      	if(session.getAttribute("complementoCliente") != null){
					      %>
					      		value="<% out.println(session.getAttribute("complementoCliente")); %>">
					      <% 
					      	}
					      %>
					   
					</div>
			 	
			 	</div>
				 	
				 	
			 	<div class="col-sm-8 col-md-8 col-lg-8" style="background-color: #cecece; color: #000;">
			 	
			 	
				 	<h3 class="d-flex pl-4 pt-4 pb-2" style="width: 100%; color: #000; border-bottom: solid 1px #000; font-weight: bolder;">
				 		<% out.print(request.getAttribute("forma-pagamento")); %>
				 	
					 	<button type="submit" class="d-flex p-2 ml-auto" style="background-color: green; color: #fff; border-radius: 25px; border: solid 1px #000; font-size: 15px;">
						 	<div><strong>Contratar</strong></div>
						 	<div>
							 	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-right" viewBox="0 0 16 16">
								  <path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
								</svg>
						 	</div>
						 </button>
				 	</h3>
			 	
			 	  
			 	  	<div id="contrato">

			 	  		
				 	  		<h5 class="mb-3 mt-5"><strong>Termos de contratação de serviço:</strong></h5>
				 	  	
				 	  		<p style="width: 50vw; height: 50vh; overflow:auto; border: solid 3px #9850B5; border-radius: 8px; box-shadow: 1px 1px 1px #9850B5; padding: 15px; background-color: #fff;">
				 	  		
				 	  			<strong>DAS PARTES CONTRATADA</strong>: <strong>Insure4Soft</strong>, pessoa jurídica de direito privado, inscrita no CNPJ n° 45.254.667/0271-15, com sede em R. Cel. Carlos Matos, 86 - Centro, Nova Iguaçu - RJ, 26210-200, doravante denominado <strong>CONTRATADA</strong> e neste ato representada na forma de seus atos constitutivos.
								
								<br><br>
								
								<strong>CONTRATANTE</strong>: <% out.print(session.getAttribute("nomeCliente")); %>, pessoa física de direito publico, doravante denominado CONTRATANTE e neste ato representada na forma de seus atos constitutivos, por seu representante legal <% out.print(session.getAttribute("nomeCliente")); %>, inscrito(a) no CPF sob o nº. <% out.print(session.getAttribute("cpfCliente")); %> , residente e domiciliado em <% out.print(session.getAttribute("cidadeCliente")); %>, <% out.print(session.getAttribute("bairroCliente")); %>, <% out.print(session.getAttribute("ruaCliente")); %>, Logradouro <% out.print(session.getAttribute("logradouroCliente")); %> .
								
								<br><br>
								
								Decidem as partes, na melhor forma de direito, celebrar o presente CONTRATO DE PRESTAÇÃO DE SERVIÇOS, que reger-se-á mediante as cláusulas e condições adiante estipuladas. 
								CLÁUSULA PRIMEIRA - DO OBJETO1.1 O presente contrato tem por objeto a prestação de serviços profissionais especializados em Seguro de Celular por parte da CONTRATADA de acordo com os termos e condições detalhados neste contrato.
								CLÁUSULA SEGUNDA - OBRIGAÇÕES DA CONTRATANTE2.1 A CONTRATANTE deverá fornecer à CONTRATADA todas as informações necessárias à realização do serviço, devendo especificar os detalhes necessários à perfeita consecução do mesmo.
								2.2 A CONTRATANTE é obrigada ainda a disponibilizar: Reembolso 
								2.3 A CONTRATANTE deverá efetuar o pagamento na forma e condições estabelecidas na cláusula quinta.
								CLÁUSULA TERCEIRA - OBRIGAÇÕES DA CONTRATADA3.1 A CONTRATADA deverá prestar os serviços solicitados pela CONTRATANTE conforme descritivo, especificações e prazos previstos no ANEXO I.
								
								3.2 A CONTRATADA se obriga a manter absoluto sigilo sobre as operações, dados, estratégias, materiais, informações e documentos da CONTRATANTE, mesmo após a conclusão dos serviços ou do término da relação contratual.
								3.3 Os contratos, informações, dados, materiais e documentos inerentes à CONTRATANTE ou a seus clientes deverão ser utilizados, pela CONTRATADA, por seus funcionários ou contratados, estritamente para cumprimento dos serviços solicitados pela CONTRATANTE, sendo VEDADO a comercialização ou utilização para outros fins. 
								3.4 Será de responsabilidade da CONTRATADA todo o ônus trabalhista ou tributário referente aos funcionários utilizados para a prestação do serviço objeto deste instrumento, ficando a CONTRATANTE isenta de qualquer obrigação em relação a eles.
								3.5 A CONTRATADA deverá fornecer os respectivos documentos fiscais, referente ao(s) pagamento(s) do presente instrumento.
								CLÁUSULA QUARTA - DOS SERVIÇOS
								4.1 A CONTRATADA atuará nos serviços contratados de acordo com as especificações descritas no ANEXO I, que passa ser parte integrante do presente contrato.
								4.2 Os serviços terão início em 3 dias úteis corridos da assinatura do presente contrato.
								CLÁUSULA QUINTA - DA AVALIAÇÃO DE PERFORMANCE 
								5.1 A execução dos serviços, objeto do presente contrato, passará por avaliações periódicas para fins de constatar o cumprimento dos indicadores de produtividade, abaixo indicados:
								5.1.1 SEGURANÇA: Para fins de observância aos indicadores de segurança do presente contrato, mensalmente a CONTRATADA deve comprovar NENHUM AVISO DE SINISTRO ;
								5.1.2 QUALIDADE: Para fins de observância aos indicadores de qualidade do presente contrato, mensalmente a CONTRATADA deve comprovar  ;
								5.1.3 COMUNICAÇÃO: Para fins de observância aos indicadores de comunicação do presente contrato, mensalmente a CONTRATADA deve comprovar  ;
								5.1.4 PONTUALIDADE: Para fins de observância aos indicadores de pontualidade do presente contrato, mensalmente a CONTRATADA deve comprovar  ;
								CLÁUSULA SEXTA - DA EXCLUSIVIDADE
								
								6.1 A CONTRATADA atuará COM EXCLUSIVIDADE dentro do  , NÃO podendo exercer sua atividade para outras empresas, ou efetuar negócios em nome e por conta própria.
								6.2 A CONTRATADA terá gerência integral na  que lhe é destinada, com TOTAL AUTONOMIA, sem cumprimento de horários ou ordens, devendo atender exclusivamente o cronograma firmado entre as partes.
								CLÁUSULA SÉTIMA - DO PREÇO E DAS CONDIÇÕES DE PAGAMENTO
								
								7.2 No caso de atraso no pagamento superior a 10 dias, será devida multa moratória no valor de  sobre a parcela inadimplida, além da atualização do valor pelo .
								7.3 Considera-se o cumprimento integral do contrato o momento em que todos os serviços especificados no ANEXO I tenham sido concluídos, mediante aprovação e revisão final da CONTRATANTE ou outra forma de entrega especificada no ANEXO I.
								CLÁUSULA OITAVA - DO DESCUMPRIMENTO
								8.1 O descumprimento de qualquer uma das cláusulas por qualquer parte, implicará na rescisão imediata deste contrato, não isentando a CONTRATADA de suas responsabilidades referentes ao zelo com informações e dados da CONTRATANTE.
								8.2  Havendo descumprimento deste contrato, será devida multa de  sobre o valor do contrato.
								CLÁUSULA NONA - DO PRAZO E VALIDADE
								9.1 A CONTRATADA deverá realizar os serviços dentro dos prazos determinados no cronograma previsto no ANEXO I, sendo sua responsabilidade comunicar a impossibilidade de cumprimento, bem como os motivos para tal e o novo prazo previsto, estando em sua competência a capacidade para tal avaliação.
								9.2 Este instrumento é válido por prazo indeterminado, vigendo até a finalização do serviço, ora contratado, ou encerramento do contrato, não ficando as partes isentas de seus compromissos éticos após invalidação do mesmo.
								CLÁUSULA DÉCIMA - DA RESCISÃO IMOTIVADA
								10.1 Poderá o presente instrumento ser rescindido por qualquer das partes, em qualquer momento, sem que haja qualquer tipo de motivo relevante, respeitando-se um período mínimo de  dias, devendo então somente ser finalizadas e pagas as etapas que já estiverem em andamento.
								
								CLÁUSULA DÉCIMA PRIMEIRA - DA OBSERVÂNCIA À LGPD
								11.1 O CONTRATANTE declara expresso CONSENTIMENTO que a CONTRATADA irá coletar, tratar e compartilhar os dados necessários ao cumprimento do contrato, nos termos do Art. 7º, inc. V da LGPD, os dados necessários para cumprimento de obrigações legais, nos termos do Art. 7º, inc. II da LGPD, bem como os dados, se necessários para proteção ao crédito, conforme autorizado pelo Art. 7º, inc. V da LGPD.
								11.2 Outros dados poderão ser coletados, conforme termo de consentimento específico.
								CLÁUSULA DÉCIMA SEGUNDA - DAS DISPOSIÇÕES GERAIS
								12.1 Fica pactuada a total inexistência de vínculo trabalhista entre as partes, excluindo as obrigações previdenciárias e os encargos sociais, não havendo entre CONTRATADA e CONTRATANTE qualquer tipo de relação de subordinação. 
								12.2 A contratação da CONTRATADA, cumpridas todas as formalidades legais, com ou sem exclusividade, de forma contínua ou não, afasta a qualidade de empregado prevista no art. 3º da CLT, nos termos do art. 442-B da CLT. 
								12.3 A tolerância, por qualquer das partes, com relação ao descumprimento de qualquer termo ou condição aqui ajustado, não será considerada como desistência em exigir o cumprimento de disposição nele contida, nem representará novação com relação à obrigação passada, presente ou futura, no tocante ao termo ou condição cujo descumprimento foi tolerado.
	
				 	  		</p>
				 	  		
				 	  		<div class="form-check ml-1">
							  <input required class="form-check-input" type="checkbox" id="contrato">
							  <label class="form-check-label" for="flexCheckDefault">
							    Declaro que li e aceito os termos de contratação de serviço.
							  </label>
							</div>
							
					</form>
		 	  	  </div>
		 	
		 	  	</div>
			 	  </div>
			 	</div>
			 

			 	
		 		<% } %>

<!-- Vendor JS Files -->
	<script src="https://code.iconify.design/2/2.0.3/iconify.min.js"></script>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="vendor/jquery.easing/jquery.easing.min.js"></script>
	<script src="vendor/php-email-form/validate.js"></script>
	<script src="vendor/waypoints/jquery.waypoints.min.js"></script>
	<script src="vendor/counterup/counterup.min.js"></script>
	<script src="vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="vendor/venobox/venobox.min.js"></script>
	<script src="vendor/owl.carousel/owl.carousel.min.js"></script>
	<script src="vendor/aos/aos.js"></script>

	<script src="js/main.js"></script>

	<script src="js/cep.js"></script>
	<script src="js/confirmacao.js"></script>
</body>
</html>