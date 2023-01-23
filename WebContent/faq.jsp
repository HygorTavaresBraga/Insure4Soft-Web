<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS -->
<link href="css/style.css" rel="stylesheet">
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
	
	
	
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
	
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
	crossorigin="anonymous"></script>

<!-- Vendor CSS Files -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/icofont/icofont.min.css" rel="   stylesheet">
<link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="vendor/venobox/venobox.css" rel="stylesheet">
<link href="vendor/owl.carousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="vendor/aos/aos.css" rel="stylesheet">

<title>FAQ</title>


</head>

<style>
	*{
		overflow-x: hidden;
	}
</style>

<body id="fundofaq">
	
	 <!-- ======= Header ======= -->
	<header id="header" class="header-rolled" style="height: 15vh;">
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
					<li><a href="faq.html">FAQ</a></li>	
					
					<li>

						<div>
						
						<% if(session.getAttribute("idCliente") != null) { %>
					
							<a id="btn-login" href="perfil">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-person-fill"
								viewBox="0 0 16 16">
                                 <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                             </svg> <% out.print(session.getAttribute("nomeCliente")); %>
							</a>
							
						<% }else if(session.getAttribute("idFuncionario") != null) { %>
							<a id="btn-login" href="perfil">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-person-fill"
								viewBox="0 0 16 16">
                                 <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                             </svg> <% out.print(session.getAttribute("nomeFuncionario")); %>
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
	
	<div style="height: 80vh;" class="container-fluid">
	
		<div style="background: pink; " class="row">

			<div  class="col-sm-6 d-flex flex-column justify-content-center align-items-center">
			
				<h1 style="font-weight: bolder; border-bottom: 1px solid #000;">Dúvidas Frequentes</h1>
	
						<h2 class="pt-2">Como funcionam nossos seguros ?</h2>
	
						<p class="text-center">
							Para realizar a contratação, basta acessar nosso site ou aplicativo,
							selecionar a opção "Simule".
							Logo após, basta informar marca e modelo do celular e armazenamento, escolher o plano
							que mais combina com você. 
						</p>
	

			</div>
		<div  class="col-sm-6 d-flex justify-content-center align-items-center">
			
			<img width="950" height="auto" src="img/imgfaq.png"/>
			
		</div>
	
	</div>


<div class="container-fluid">
	<div id="corpofaq">



			<div class="layout">
				<div class="accordion">
					<div class="accordion__question">
						<h3 style="color: #fff" class="text-center">Quanto tempo devo esperar até a análise final e pagamento ?</h3>
					</div>
					<div class="accordion__answer">
						<p>Após o envio de toda a documentação, o tempo limite máximo
							de pagamento da indenização são de até 30 dias corridos.</p>
					</div>

				</div>
			</div>

			<div class="layout">
				<div class="accordion">
					<div class="accordion__question">
						<h3 style="color: #fff" class="text-center">Apartir da contratação, meu seguro já foi ativo?</h3>
					</div>
					<div class="accordion__answer">
						<p>O seguro estará ativo após a aprovação da análise e
							pagamento do primeiro valor.</p>
					</div>

				</div>
			</div>
			<div class="layout">
				<div class="accordion">
					<div class="accordion__question">
						<h3 style="color: #fff" class="text-center">Como realizo o cancelamento do meu seguro?</h3>
					</div>
					<div class="accordion__answer">
						<p>Para realizar o cancelamento  basta acessar seu
							perfil em nosso site ou aplicativo, clicar em Meus Planos, selecionar o plano que quiser cancelar e clicar em cancelar.
							Uma vez que isso for feito seu seguro estará em análise de cancelamento. Caso análise proceda de forma correta, você não receberá mais
							cobranças. Lembrando que o cancelamento pode ser realizado a
							qualquer momento, sem multas ou taxas adicionais.
						</p>
					</div>

				</div>

			

			<script>
			let answers = document.querySelectorAll(".accordion");
			answers.forEach((event) => {
			  event.addEventListener("click", () => {
			    if (event.classList.contains("active")) {
			      event.classList.remove("active");
			    } else {
			      event.classList.add("active");
			    }
			  });
			});
			</script>
		</div>
		
		
		
	</div>
	</div> 	
	
	  
</body>

    
     <a href="#" class="back-to-top">
        <i class="icofont-simple-up"></i>
    </a>
    
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

    <!-- Template Main JS File -->
    <script src="js/main.js"></script>
</html>