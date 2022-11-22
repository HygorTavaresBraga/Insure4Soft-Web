<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ page import= "Model.Aparelho" %>   
<%@ page import= "java.util.ArrayList" %> 

<% ArrayList<Aparelho> listaArmazenamentos = (ArrayList<Aparelho>) request.getAttribute("armazenamentosAparelhos");%> 

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="img/favicon_purple.ico">
    
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="css/nav.css">
    <!-- Vendor CSS Files -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/icofont/icofont.min.css" rel="   stylesheet">
    <link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="vendor/venobox/venobox.css" rel="stylesheet">
    <link href="vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="vendor/aos/aos.css" rel="stylesheet">
    <title>Simule | Armazenamento</title>

    <style>
	    * {
			padding: 0;
			margin: 0;
			box-sizing: border-box;
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

						<div>
						
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
                        <center style="text-transform: uppercase; font-family: 'Poppins'; font-weight: bold;">Selecione o Armazenamento</center>
                    </div>
                    
                   <form action="planos" method="POST">
	                 
			               <%for(int i=0 ; i<listaArmazenamentos.size() ; i++){%>
		                
			                  <button class="list-group-item list-group-item-action text-center" type="submit" name="aparelho" value="<% out.print(request.getParameter("aparelho")); %>;<%=listaArmazenamentos.get(i).getArmazenamentoAparelho()%>">
				                   
				                  <div><%=listaArmazenamentos.get(i).getArmazenamentoAparelho()%></div>
		
			                  </button>
		                  
		               		<% } %>
	                  
	                </form>
					
                </div>
            		</div>

                </div>
            </div>

            
		</div>

            <!--==================
            fim carousel marcas
            ===================-->
            
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
