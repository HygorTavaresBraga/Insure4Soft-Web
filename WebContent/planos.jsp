<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ page import= "Model.Aparelho" %>   
<%@ page import= "java.util.ArrayList" %> 

<% ArrayList<Aparelho> listaAparelhos = (ArrayList<Aparelho>) request.getAttribute("aparelho");%> 

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="img/favicon_purple.ico">
    
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
    <title>Simule | Planos</title>

    <style>
	    * {
			padding: 0;
			margin: 0;
			box-sizing: border-box;
			overflow-x: hidden;
		}

        body {
            width: 100vw;
            height: 100vh;
        }

      
        /*inicio css container site*/
        .container {
            display: flex;
            height: auto;
        }


        /*inicio css centro do conteudo*/
        .conteudo {
            z-index: 2;
            width: 100vw;
        }
        
      
        #container-header {
            width: 100vw;
            height: 5vh;
            background: #3f0955c2;
            color: #fff;
        }

        #container-header row {
            text-align: center;
        }

      

        .row {
            width: 100vw;
            height: 80vh;
        }


       
        /*inicio css lado direito site rastro*/
        .selec {
            z-index: 3;
            width: 250px;
            height: 500px;
            display: flex;
            justify-content: center;

        }

        .list-fixed {
            position: fixed;
        }

        /*fim css lado direito site rastro*/
        
        .calcular{
        
        	justify-content: center;
        }
        
        .bronze {
            text-align: center;
            width: 33%;
            
        }
        
        .titulo-bronze img {
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
        }
        
        .prata {
            text-align: center;
            width: 33%;
            margin-right: 1%;
           
        }
        
        .titulo-prata img {
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
        }

        .gold {
            text-align: center;
            width: 33%;
        
        }

        .gold:hover {
            box-shadow: 0 0 10px rgba(89, 0, 255, 0.526);
        }

        .titulo-gold {
            color: #000;

        }

        .titulo-gold img {
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
        }
        
        @media(max-width: 1000px){
        	.calcular{
        		display: flex;
        		flex-direction: column;
        		justify-content: center;
        		align-items: center;
        	}
        	
        	.bronze, .prata, .gold {
        		width: 90%;
        		
        	}
        	
        	.bronze, .prata{
        		margin-bottom: 10%;
        		
        	}
        	
        }
        
        .modal-header, .modal-footer{
        	color: #fff;
        	background-color: #3f0955c2;
        }
   
    </style>

</head>

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
					<li><a href="faq.jsp">FAQ</a></li>	
					
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
<body>

<div class="container">

        <div class="conteudo">

	
            <!--==================
            Início carrossel de Marcas
            ===================-->
            
            <div class="marcas">
                <div class="list-group">
                    
                    <div id="container-modelo">
	                	 <div class="list-group">
                
                    <div style="background-color: #3f0955c2; color: #fff;" class="list-group-item" aria-current="true">
                        <center style="text-transform: uppercase; font-family: 'Poppins'; font-weight: bold;">Nossos Planos</center>
                    </div>
                    
                   <div class="calcular d-flex w-100 text-center">

                <!--=============
                inicio plano bronze
                ===============-->
                <div class="bronze">
                    <div class="card-plano">
					
						<div class="img-card-bronze">
							<img src="img/medalha-de-bronze.png" class="img-fluid" alt="">
						</div>
						<div class="informacoes-card">
						<input hidden id="plano" name="plano" value="soft-bronze">
							<h1>Soft Bronze</h1>
							<h6 class="pt-3">
								<i>A partir de</i>
							</h6>
							<h2>
								<span
									style="color: #0ea81b; font-size: large; font-weight: bold;">R$
								</span><% for(int i=0 ; i<listaAparelhos.size() ; i++){
                        		
	                        		request.setAttribute("planoBronze", (3*listaAparelhos.get(i).getValorAparelho())/100 + 19.50);
	                        		out.print((3*listaAparelhos.get(i).getValorAparelho())/100 + 19.50);
                        	
                        		}
                        	%> <span style="font-size: large; font-weight: bold;">/mês</span>
							</h2>

							<hr class="pt-2">

							<div class="d-flex " id="cobertura">

								<div class="d-flex">
									<svg style="color: green; text-weight: bolder;"
										xmlns="http://www.w3.org/2000/svg" width="25" height="25"
										fill="currentColor" class="bi bi-check-lg" viewBox="0 0 16 16">
										  <path
											d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
										</svg>

									<p>Roubo</p>
								</div>

								<div class="d-flex">
									<svg style="color: green; text-weight: bolder;"
										xmlns="http://www.w3.org/2000/svg" width="25" height="25"
										fill="currentColor" class="bi bi-check-lg" viewBox="0 0 16 16">
										  <path
											d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
										</svg>

									<p class="pl-1">Quebra Acidental</p>
								</div>

								<div class="d-flex">
									<svg style="color: black; text-weight: bolder;"
										xmlns="http://www.w3.org/2000/svg" width="20" height="20"
										fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
										  <path
											d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8 2.146 2.854Z" />
										</svg>

									<p class="pl-1">Furto Qualificado</p>
								</div>

								<div class="d-flex">
									<svg style="color: green; text-weight: bolder;"
										xmlns="http://www.w3.org/2000/svg" width="25" height="25"
										fill="currentColor" class="bi bi-check-lg" viewBox="0 0 16 16">
										  <path
											d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
										</svg>

									<p>Cobertura de 70%</p>
								</div>

							</div>

						</div>
						<div class="btn-plano">
						<form action="formaPagamento" method="POST">
							<input hidden id="marca" name="marca" value="<%= request.getAttribute("marca") %>">
							<input hidden id="modelo" name="modelo" value="<%= request.getAttribute("modelo") %>">
							<input hidden id="armazenamento" name="armazenamento" value="<%= request.getAttribute("armazenamento") %>">							
							<input hidden id="valor" name="valor" value="<%= request.getAttribute("planoBronze") %>">
							<input hidden id="plano" name="plano" value="Soft Bronze">

							<button type="submit">Contratar</button>
						</form>
						</div>

					
					</div>
                </div>

                <!--=============
                fim plano bronze
                ===============-->

                <!--=============
                inicio plano prata
                ===============-->
                <div class="prata">
                    <div class="card-plano">
				
						<div class="img-card">
							<img src="img/medalha-de-prata.png" class="img-fluid" alt="">
						</div>
						<div class="informacoes-card">
						<input hidden id="plano" name="plano" value="soft-prata">
							<h1>Soft Prata</h1>
							<h6 class="pt-3">
								<i>A partir de</i>
							</h6>
							<h2>
								<span
									style="color: #0ea81b; font-size: large; font-weight: bold;">R$</span><% for(int i=0 ; i<listaAparelhos.size() ; i++){
                        		
										out.print((3*listaAparelhos.get(i).getValorAparelho())/100 + 25.50);
		                        		request.setAttribute("planoPrata", (3*listaAparelhos.get(i).getValorAparelho())/100 + 25.50);
                        		}
                        	%> <span
									style="font-size: large; font-weight: bold;">/mês</span>
							</h2>

							<hr class="pt-2">

							<div class="d-flex " id="cobertura">

								<div class="d-flex">
									<svg style="color: green; text-weight: bolder;"
										xmlns="http://www.w3.org/2000/svg" width="25" height="25"
										fill="currentColor" class="bi bi-check-lg" viewBox="0 0 16 16">
										  <path
											d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
										</svg>

									<p>Roubo</p>
								</div>

								<div class="d-flex">
									<svg style="color: green; text-weight: bolder;"
										xmlns="http://www.w3.org/2000/svg" width="25" height="25"
										fill="currentColor" class="bi bi-check-lg" viewBox="0 0 16 16">
										  <path
											d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
										</svg>

									<p>Quebra Acidental</p>
								</div>

								<div class="d-flex">
									<svg style="color: green; text-weight: bolder;"
										xmlns="http://www.w3.org/2000/svg" width="25" height="25"
										fill="currentColor" class="bi bi-check-lg" viewBox="0 0 16 16">
										  <path
											d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
										</svg>

									<p class="pl-1">Furto Qualificado</p>
								</div>


								<div class="d-flex">
									<svg style="color: green; text-weight: bolder;"
										xmlns="http://www.w3.org/2000/svg" width="25" height="25"
										fill="currentColor" class="bi bi-check-lg" viewBox="0 0 16 16">
										  <path
											d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
										</svg>


									<p>Cobertura de 70%</p>
								</div>

							</div>

						</div>
						<div class="btn-plano">
							<form action="formaPagamento" method="POST">
							<input hidden id="marca" name="marca" value="<%= request.getAttribute("marca") %>">
							<input hidden id="modelo" name="modelo" value="<%= request.getAttribute("modelo") %>">
							<input hidden id="armazenamento" name="armazenamento" value="<%= request.getAttribute("armazenamento") %>">							
							<input hidden id="valor" name="valor" value="<%= request.getAttribute("planoPrata") %>">
							<input hidden id="plano" name="plano" value="Soft Prata">

							<button type="submit">Contratar</button>
						</form>
						</div>

					</div>
                </div>
                <!--=============
                fim plano prata
                ===============-->

                <!--=============
                inicio plano gold
                ===============-->
                <div class="gold">
                    <div class="card-plano-ouro">
					
						<span class="promo"></span>
						<div class="img-card-ouro">
						<input hidden id="plano" name="plano" value="soft-ouro">
							<img src="img/medalha-de-ouro.png" class="img-fluid" alt="">
						</div>
						<div class="informacoes-card">
							<h1>Soft Ouro</h1>
							<h6 class="pt-3">
								<i>A partir de</i>
							</h6>
							<h2>
								<span
									style="color: #0ea81b; font-size: large; font-weight: bold;">R$</span><% for(int i=0 ; i<listaAparelhos.size() ; i++){
                        		
										out.print((3*listaAparelhos.get(i).getValorAparelho())/100 + 35.50);
		                        		request.setAttribute("planoOuro", (3*listaAparelhos.get(i).getValorAparelho())/100 + 35.50);                       		

                        		}
                        	%><span
									style="font-size: large; font-weight: bold;">/mês</span>
							</h2>

							<hr class="pt-2">

							<div class="d-flex " id="cobertura">

								<div class="d-flex">
									<svg style="color: green; text-weight: bolder;"
										xmlns="http://www.w3.org/2000/svg" width="25" height="25"
										fill="currentColor" class="bi bi-check-lg" viewBox="0 0 16 16">
										  <path
											d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
										</svg>

									<p>Roubo</p>
								</div>

								<div class="d-flex">
									<svg style="color: green; text-weight: bolder;"
										xmlns="http://www.w3.org/2000/svg" width="25" height="25"
										fill="currentColor" class="bi bi-check-lg" viewBox="0 0 16 16">
										  <path
											d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
										</svg>

									<p>Furto Qualificado</p>
								</div>

								<div class="d-flex">
									<svg style="color: green; text-weight: bolder;"
										xmlns="http://www.w3.org/2000/svg" width="25" height="25"
										fill="currentColor" class="bi bi-check-lg" viewBox="0 0 16 16">
										  <path
											d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
										</svg>

									<p>Quebra Acidental</p>
								</div>

								<div class="d-flex">
									<svg style="color: green; text-weight: bolder;"
										xmlns="http://www.w3.org/2000/svg" width="25" height="25"
										fill="currentColor" class="bi bi-check-lg" viewBox="0 0 16 16">
										  <path
											d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
										</svg>

									<p>Cobertura de 100%</p>
								</div>

							</div>

						</div>
						<div class="btn-plano">
							<form action="formaPagamento" method="POST">
							<input hidden id="marca" name="marca" value="<%= request.getAttribute("marca") %>">
							<input hidden id="modelo" name="modelo" value="<%= request.getAttribute("modelo") %>">
							<input hidden id="armazenamento" name="armazenamento" value="<%= request.getAttribute("armazenamento") %>">							
							<input hidden id="valor" name="valor" value="<%= request.getAttribute("planoOuro") %>">
							<input hidden id="plano" name="plano" value="Soft Ouro">
							
							<button type="submit">Contratar</button>
						</form>
						</div>

					</div>
                     
                </div>
                <!--=============
                fim plano gold
                ===============-->
                
             			
				
            </div>
           
            <!--==================
            fim quarta parte calcular
            ===================-->
					
                </div>
            		</div>

                </div>
            </div>

		</div>
		
		<!-- MODAL PLANO BRONZE -->
		
		<div class="modal fade" id="modalBronze" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
		  <div class="modal-dialog modal-dialog-centered">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalToggleLabel">Plano Soft Bronze</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" style="background-color: #fff;"></button>
		      </div>
		      <div class="modal-body">
		      	<div class="p-2">			       
			        <h4 class="mb-3" style="border-bottom: 1px solid #3f0955c2; color: grey;">Confirme os Dados</h4>
	
			        <h5><strong>Marca:</strong> <% out.print(request.getAttribute("marca")); %></h5>
	
			        <h5><strong>Modelo:</strong> <% out.print(request.getAttribute("modelo")); %></h5>
	
			        <h5><strong>Armazenamento:</strong> <% out.print(request.getAttribute("armazenamento")); %></h5>				        
		        </div>
		      </div>
		      <div class="modal-footer">
		       <form action="contratar" method="POST">
		       	<input hidden id="plano" name="plano" value="Plano Soft Bronze">
		       	<input hidden id="marca" name="marca" value="<% request.getAttribute("marca"); %>">
		       	<input hidden id="modelo" name="modelo" value="<% request.getAttribute("modelo"); %>">
		       	<input hidden id="armazenamento" name="armazenamento" value="<% request.getAttribute("armazenamento"); %>">
		       	<input hidden id="valor" name="valor" value="<% for(int i=0 ; i<listaAparelhos.size() ; i++){
                        		
							                        				out.print(((3*listaAparelhos.get(i).getValorAparelho())/100)+19.50);                        		
							                        	
							                        			}
							                        		 %> ">
		        <button type="submit" class="btn"  style="color: #3f0955c2;background-color: #fff; font-weight: bold;">Confirmar</button>
		      </form>
		      </div>
		    </div>
		  </div>
		</div>
		
		
		
		<!-- FIM DO MODAL PLANO BRONZE -->
		
		
		<!-- MODAL PLANO PRATA -->
		
		<div class="modal fade" id="modalPrata" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
		  <div class="modal-dialog modal-dialog-centered">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalToggleLabel">Plano Soft Prata</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" style="background-color: #fff;"></button>
		      </div>
		      <div class="modal-body">
		      	<div class="p-2">			       
			        <h4 class="mb-3" style="border-bottom: 1px solid #3f0955c2; color: grey;">Confirme os Dados</h4>
	
			        <h5><strong>Marca:</strong> <% out.print(request.getAttribute("marca")); %></h5>
	
			        <h5><strong>Modelo:</strong> <% out.print(request.getAttribute("modelo")); %></h5>
	
			        <h5><strong>Armazenamento:</strong> <% out.print(request.getAttribute("armazenamento")); %></h5>				        
		        </div>
		      </div>
		      <div class="modal-footer">
		       <form action="contratar" method="POST">
		       	<input hidden id="plano" name="plano" value="Plano Soft Prata">
		       	<input hidden id="marca" name="marca" value="<% request.getAttribute("marca"); %>">
		       	<input hidden id="modelo" name="modelo" value="<% request.getAttribute("modelo"); %>">
		       	<input hidden id="armazenamento" name="armazenamento" value="<% request.getAttribute("armazenamento"); %>">
		       	<input hidden id="valor" name="valor" value="<% for(int i=0 ; i<listaAparelhos.size() ; i++){
                        		
							                        				out.print(((3*listaAparelhos.get(i).getValorAparelho())/100)+25.50);                        		
							                        	
							                        			}
							                        		 %> ">
		        <button type="submit" class="btn"  style="color: #3f0955c2;background-color: #fff; font-weight: bold;">Confirmar</button>
		      </form>
		      </div>
		    </div>
		  </div>
		</div>
		
		
		
		<!-- FIM DO MODAL PLANO PRATA -->
		
		<!-- MODAL PLANO OURO -->
		
		<div class="modal fade" id="modalOuro" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
		  <div class="modal-dialog modal-dialog-centered">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalToggleLabel">Plano Soft Ouro</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" style="background-color: #fff;"></button>
		      </div>
		      <div class="modal-body">
		      	<div class="p-2">			       
			        <h4 class="mb-3" style="border-bottom: 1px solid #3f0955c2; color: grey;">Confirme os Dados</h4>
	
			        <h5><strong>Marca:</strong> <% out.print(request.getAttribute("marca")); %></h5>
	
			        <h5><strong>Modelo:</strong> <% out.print(request.getAttribute("modelo")); %></h5>
	
			        <h5><strong>Armazenamento:</strong> <% out.print(request.getAttribute("armazenamento")); %></h5>				        
		        </div>
		      </div>
		      <div class="modal-footer">
		       <form action="contratar" method="POST">
		       	<input hidden id="plano" name="plano" value="Plano Soft Ouro">
		       	<input hidden id="marca" name="marca" value="<% request.getAttribute("marca"); %>">
		       	<input hidden id="modelo" name="modelo" value="<% request.getAttribute("modelo"); %>">
		       	<input hidden id="armazenamento" name="armazenamento" value="<% request.getAttribute("armazenamento"); %>">
		       	<input hidden id="valor" name="valor" value="<% for(int i=0 ; i<listaAparelhos.size() ; i++){
                        		
							                        				out.print(((3*listaAparelhos.get(i).getValorAparelho())/100)+35.50);                        		
							                        	
							                        			}
							                        		 %> ">
		        <button type="submit" class="btn"  style="color: #3f0955c2;background-color: #fff; font-weight: bold;">Confirmar</button>
		      </form>
		      </div>
		    </div>
		  </div>
		</div>
		
		
		
		<!-- FIM DO MODAL PLANO OURO -->

            
            <div class="selec">
            <ul class="list-group list-fixed">
            
                <li style="background-color: #3f0955c2; color: #fff;" class="list-group-item">Marca</li>
                <li class="list-group-item">
                
                	<% if(request.getAttribute("marca") != null){
                			out.print(request.getAttribute("marca"));
                		}else{
                			out.print("...");
                		}
                	%>               	
                
                </li>
                
                	<br>
                	
                <li style="background-color: #3f0955c2; color: #fff;" class="list-group-item ">Modelo</li>
                <li class="list-group-item">
                
                	<% if(request.getAttribute("modelo") != null){
                			out.print(request.getAttribute("modelo"));
                		}else{
                			out.print("...");
                		}
                	%>  
                	 
                </li>
                
                	<br>
                	
                <li style="background-color: #3f0955c2; color: #fff;" class="list-group-item">Armazenamento</li>
                <li class="list-group-item">
                
                	<% if(request.getAttribute("armazenamento") != null){
                			out.print(request.getAttribute("armazenamento"));
                		}else{
                			out.print("...");
                		}
                	%>  
                
                </li>
            </ul>
        </div>
    </div>




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



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/form-validation.js"></script>
</body>

</html>
