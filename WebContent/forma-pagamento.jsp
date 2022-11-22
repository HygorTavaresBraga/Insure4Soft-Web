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
    <title>Forma de Pagamento</title>
    
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/style.css">
    
    <!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Alumni+Sans+Pinstripe&display=swap"
	rel="stylesheet">
    
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

	
	<div class="d-flex flex-column justify-content-center align-items-center" style="height: 85vh;">
	
		<div id="steps" class="d-flex justify-content-around align-items-center mb-3" style="width: 50vw;">
		
			<div class="text-center" style="width: 33%;">
				<span>Forma de Pagamento</span>
				<div style="width: 100%; height: 5px; background: green; border-radius: 15px;"></div>
			</div>
				
			<div class="text-center" style="width: 33%;">
				<span>Confirmação</span>
				<div style="width: 100%; height: 5px; background: grey; border-radius: 15px;"></div>
			</div>
			
			<div class="text-center" style="width: 33%;">
				<span>Finalização</span>
				<div style="width: 100%; height: 5px; background: grey; border-radius: 15px;"></div>
			</div>
		
		</div>
	
		<div class="box" style="width: 50vw; height: 60vh; background-color: #cecece; border-radius: 15px;">
		 <h3 class="pl-4 pt-4 pb-2" style="color: #000; border-bottom: solid 1px #000; font-weight: bolder;">Forma de Pagamento</h3>
		 
		 <form action="confirmacao" method="POST">
		 
		 	<input hidden id="marca" name="marca" value="<%= request.getAttribute("marca") %>">
		 	<input hidden id="modelo" name="modelo" value="<%= request.getAttribute("modelo") %>">
		 	<input hidden id="armazenamento" name="armazenamento" value="<%= request.getAttribute("armazenamento") %>">
		 	<input hidden id="valor" name="valor" value="<%= request.getAttribute("valor") %>">
		 	<input hidden id="plano" name="plano" value="<%= request.getAttribute("plano") %>">							
		 
		  <% if(session.getAttribute("idCliente") != null){ %>
		 
		 		<%if(session.getAttribute("cepCliente").equals(null)){ %>
				  <%
				  	out.println("<script type=\"text/javascript\">");
	   				out.println("alert('Adicione um Endereço!');");
	   				out.println("location='perfil';");
	   				out.println("</script>");
				  %>
			   <% }else{ %> 
			   
			   <button type="submit" id="credito-debito" name="credito-debito" class="ml-4 mt-5 p-3 d-flex justify-content-between" style="background-color: #9850B5; color: #fff; width: 70%; border-radius: 25px; border: solid 1px #000;">
			 	<div><strong>Crédito ou Débito</strong></div>
			 	<div>
				 	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-right" viewBox="0 0 16 16">
					  <path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
					</svg>
			 	</div>
			 </button>
			   
			   <% } %>	 
			 
			 
			<% }else{ %>
			
			 <button type="submit" id="entrar" name="entrar" class="ml-4 mt-5 p-3 d-flex justify-content-between" style="background-color: #9850B5; color: #fff; width: 70%; border-radius: 25px; border: solid 1px #000;">
			 	<div><strong>Crédito ou Débito</strong></div>
			 	<div>
				 	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-right" viewBox="0 0 16 16">
					  <path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
					</svg>
			 	</div>
			 </button>
			 
			  <% } %>
			 
			</form>
			
		<form action="confirmacao" method="POST">
		
			<input hidden id="marca" name="marca" value="<%= request.getAttribute("marca") %>">
		 	<input hidden id="modelo" name="modelo" value="<%= request.getAttribute("modelo") %>">
		 	<input hidden id="armazenamento" name="armazenamento" value="<%= request.getAttribute("armazenamento") %>">							
		 	<input hidden id="valor" name="valor" value="<%= request.getAttribute("valor") %>">
		 	<input hidden id="plano" name="plano" value="<%= request.getAttribute("plano") %>">
			 
			 <% if(session.getAttribute("idCliente") != null){ %>
			 
			 <button id="boleto" name="boleto" class="ml-4 mt-4 p-3 d-flex justify-content-between" style="background-color: #9850B5; color: #fff; width: 70%; border-radius: 25px; border: solid 1px #000;">
			 	<div><strong>Boleto Bancário</strong></div>
			 	<div>
				 	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-right" viewBox="0 0 16 16">
					  <path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
					</svg>
			 	</div>
			 </button>
			 
			 <% }else { %>
			 
			  <button id="entrar" name="entrar" class="ml-4 mt-4 p-3 d-flex justify-content-between" style="background-color: #9850B5; color: #fff; width: 70%; border-radius: 25px; border: solid 1px #000;">
			 	<div><strong>Boleto Bancário</strong></div>
			 	<div>
				 	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-right" viewBox="0 0 16 16">
					  <path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
					</svg>
			 	</div>
			 </button>
			 
			  <% } %>
		 
		 </form>
		 
		 <p class="ml-4 mt-4" style="color:#9850B5;"><strong>Não se preocupe, seus dados não serão compartilhados.</strong></p>
		 
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
</body>
</html>