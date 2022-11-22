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
    <title>Finalização</title>
    
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
				<div style="width: 100%; height: 5px; background: green; border-radius: 15px;"></div>
			</div>
		
		</div>
	
	<div class="box d-flex justify-content-center align-items-center" style="width: 90vw; height: 60vh; color: #fff; background-color: #cecece; border-radius: 15px;">
		 <div class="text-center">
			 <h1 style="color: #000"><strong>Requisição em Análise</strong></h1>
			 <p style="color: #9850B5">Acompanhe o status do seguro no seu perfil na aba meus planos!</p>
			 <a href="perfil"><button class="btn" style="background-color: #9850B5; color: #fff;">Ir para Perfil</button></a>
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

	<script src="js/cep.js"></script>
	<script src="js/confirmacao.js"></script>
</body>
</html>