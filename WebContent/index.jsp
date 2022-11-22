<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="utf-8">
<title>Insure4Soft</title>
<link rel="icon" type="image/x-icon" href="img/favicon_purple.ico">

<!-- CSS -->
<link href="css/style.css" rel="stylesheet">

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
<link href="vendor/owl.carousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="vendor/aos/aos.css" rel="stylesheet">
</head>

<body>
	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top header-transparent">
		<div class="container d-flex align-items-center">

			<div class="logo mr-auto">

				<a href="index.html"> <img id="logo-nav" width="100" height="50"
					src="img/logo.png" alt="Logo">
				</a>

			</div>

			<nav class="nav-menu d-none d-lg-block">
				<ul>
					<li><a href="#hero">Início</a></li>
					<li><a href="#about">Quem somos</a></li>
					<li><a href="#services">Planos</a></li>
					<li><a href="#download">Baixar App</a></li>
					<li><a href="#contact">Contate-nos</a></li>
					<li><a href="faq.jsp">Faq</a></li>


					<li>

						
						
						<% if(session.getAttribute("idCliente") != null) { %>
					
							<a id="btn-login" href="perfil">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" viewBox="0 0 16 16">
                                 <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                             </svg> <% out.print(session.getAttribute("primeiroNomeCliente")); %>
							</a>
							
						<% }else if(session.getAttribute("idFuncionario") != null) { %>
							<a id="btn-login" href="perfil">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" viewBox="0 0 16 16">
                                 <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                             </svg> <% out.print(session.getAttribute("primeiroNomeFuncionario")); %>
							</a>
							
						<% } else if(session.getAttribute("idCliente") == null && session.getAttribute("idFuncionario") == null) { %>
							<a id="btn-login" href="entrar.jsp"> <svg
									xmlns="http://www.w3.org/2000/svg" width="16" height="16"
									fill="currentColor" viewBox="0 0 16 16"> <!--  class="bi bi-person-fill" -->
									
                                    <path
										d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                                </svg> Entrar
							</a>
							
						<% } %>
					

					</li>
				</ul>
			</nav>
			<!-- .nav-menu -->

		</div>
	</header>
	<!-- End Header -->

	<!-- ======= Hero Section ======= -->
	<section id="hero">
		<div class="hero-container" data-aos="fade-up">
			<h1>
				Insure <span>4</span> Soft
			</h1>
			<p>
				Seguro completo com cobertura de danos por queda, roubo e furto. <br>
				Com novos preços e taxas acessiveis!
			</p>
			<div>
				<a href="simule.jsp" id="simule-btn" class="">SIMULE AGORA!</a>
			</div>
			

		</div>
	</section>
	<!-- End Hero -->


	<main id="main"> <!-- ======= About Section ======= -->
	<section id="about" class="about">
		<div class="container">

			<div class="row no-gutters">

				<div class="pt-3 mb-3" data-aos="fade-up">
					<div class="content">

						<h3>Conheça os valores e ideais que nos movem, todos os dias,
							para oferecer a você produtos e serviços que proporcionem mais
							tranquilidade, segurança e conveniência.</h3>

						<div>
							<p>
								A <strong>Insure4Soft</strong> é mais que uma seguradora, é um
								ambiente de soluções de serviços de proteção com tecnologia
								embarcada, para melhorar e facilitar a experiência do cliente.
							</p>
						</div>

						


					</div>
				</div>
				
				<hr>

				<div class="quem-somos-2">
					<div class="icon-boxes d-flex flex-column justify-content-center">
						<div class="row">

							<div class="col-md-6 icon-box mb-5" data-aos="fade-up"
								data-aos-delay="200">

								<div class="justify text-center">

									<p>Nossa História Em 2004, a Insure4Soft é fundada em Rio
										de Janeiro/RJ, uma empresa familiar com cerca de 15
										funcionários. Nos dias atuais, a Insure4Soft atua por meio de
										uma plataforma de sustentabilidade e acessibilida -de com
										ações continuas de desenvolvimento suste tavel para gerar um
										impacto positivo no planeta e promover um mundo melhor para as
										gerações atuais e futuras.</p>
								</div>
							</div>

							<div class="col-md-6 icon-box" data-aos="fade-up"
								data-aos-delay="400">

								<div class="justify text-center">
									<img width="380" height="180" src="img/logo.png" alt="">

								</div>
							</div>

						</div>
						
					</div>
				</div>
				<div class="pt-3 mb-3" data-aos="fade-up">
					<div class="content">
						<div>
							<div>
								<div id="text-filos">Filosofia Empresarial</div>
							</div>

							<div>Não chegamos até aqui devido à boa gestão,qualidades
								ou bom senso empresarial. Estamos aqui pela nossa fidelidade,
								fidelidade aos princípios e às pessoas. Uma empresa que se
								orgulha de ser assim deve lealdade à sociedade que a acolhe. Ela
								deve cuidar da terra onde colhe seus frutos.</div>
						</div>



					</div>
				</div>
				
				<!-- End .content-->


			</div>
		</div>
	</section>
	<!-- End About Section --> <!-- ======= Services Section ======= -->
	<section id="services" class="services">
		<div class="container">

			<div class="section-title" data-aos="fade-in" data-aos-delay="100">
				<h2>Planos</h2>
				<p>A Insure4Soft possui 3 planos. Escolha o que mais se adequa a
					você!</p>
			</div>


			<div class="container">

				<div style="padding: 5px;"
					class="row d-flex justify-content-between w-100">

					<div class="card-plano">
				
						<div class="img-card-bronze">
							<img src="img/medalha-de-bronze.png" class="img-fluid" alt="">
						</div>
						<div class="informacoes-card">
						
							<h1>Soft Bronze</h1>
							<h6 class="pt-3">
								<i>A partir de</i>
							</h6>
							<h2>
								<span
									style="color: #0ea81b; font-size: large; font-weight: bold;">R$
								</span>19,50<span style="font-size: large; font-weight: bold;">/mês</span>
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
							<a href="simule.jsp"><button type="submit">Simular</button></a>
						</div>

					</div>

					<div class="card-plano">
					
						<div class="img-card">
							<img src="img/medalha-de-prata.png" class="img-fluid" alt="">
						</div>
						<div class="informacoes-card">
						
							<h1>Soft Prata</h1>
							<h6 class="pt-3">
								<i>A partir de</i>
							</h6>
							<h2>
								<span
									style="color: #0ea81b; font-size: large; font-weight: bold;">R$</span>25,50<span
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
							<a href="simule.jsp"><button type="submit">Simular</button></a>
						</div>

						
						</form>
					</div>

					<div class="card-plano-ouro">
					
						<span class="promo"></span>
						<div class="img-card-ouro">
						
							<img src="img/medalha-de-ouro.png" class="img-fluid" alt="">
						</div>
						<div class="informacoes-card">
							<h1>Soft Ouro</h1>
							<h6 class="pt-3">
								<i>A partir de</i>
							</h6>
							<h2>
								<span
									style="color: #0ea81b; font-size: large; font-weight: bold;">R$</span>35,50<span
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
							<a href="simule.jsp"><button type="submit">Simular</button></a>
						</div>

					
						
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ======= end Services Section ======= -->

	<section id="counts" class="counts  section-bg">
		<div class="container">

			<div class="row  d-flex justify-content-center">

				<div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
					<div class="count-box">
						<i class="icofont-simple-smile" style="color: #4120a9;"></i> <span
							data-toggle="counter-up">6,432</span>
						<p>
							<strong>Avaliações</strong>
						</p>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
					<div class="count-box">
						<i class="icofont-live-support" style="color: #4120a9;"></i> <span
							data-toggle="counter-up">24</span>
						<p>
							<strong>horas de suporte</strong>
						</p>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
					<div class="count-box">
						<i class="icofont-users-alt-5" style="color: #4120a9;"></i> <span
							data-toggle="counter-up">8,371</span>
						<p>
							<strong>Clientes</strong>
						</p>
					</div>
				</div>

			</div>

		</div>
	</section>
	<!-- End Counts Section --> <!-- ======= download Section ======= -->
	<section id="download" class="download">
		<div class="container">
			<div class="section-title" data-aos="fade-in" data-aos-delay="100">

				<h2>Faça o Download</h2>

				<br>


				<div class="app">
					<a href="https://www.apple.com/" class="mr-2"><img width="230"
						src="img/apple-store1.png" alt="" srcset=""></a> <a
						href="https://play.google.com/store/apps" class="mr-2"><img
						width="230" src="img/google-play.png" alt="" srcset=""></a>
				</div>
				<br> <br> <br> <br> <br> <br>
				<h3>
					Baixe o app <strong>Insure4Soft</strong>, adquira um plano e ande
					seguro onde quer que vá !
				</h3>
			</div>
	</section>
	<!-- End download Section --> <!-- ======= Contact Section ======= -->
	<section id="contact" class="contact section-bg">
		<div class="container">

			<div class="section-title" data-aos="fade-in" data-aos-delay="100">
				<h2>Contate-nos</h2>
				</p>
			</div>

			<div class="row" data-aos="fade-up" data-aos-delay="100">

				<div class="col-lg-6 col-md-6">
					<div class="info-box mb-4">
						<i class="bx bx-envelope" style="color: #4120a9;"></i>
						<h3>Nosso Email</h3>
						<p>contato@i4s.com.br</p>
					</div>
				</div>

				<div class="col-lg-6 col-md-6">
					<div class="info-box  mb-4">
						<i class="bx bx-phone-call" style="color: #4120a9;"></i>
						<h3>Contato</h3>
						<p>4002-8922</p>
					</div>
				</div>

			</div>

			<div class="row" data-aos="fade-up" data-aos-delay="200">

				<div class="col-lg-12">
					<form action="#" method="post" role="form" class="php-email-form">
						<div class="form-row">
							<div class="col-md-6 form-group">
								<input type="text" name="name" class="form-control" id="name"
									placeholder="Seu Nome" data-rule="minlen:4"
									data-msg="Insira pelo menos 4 caracteres" />
								<div class="validate"></div>
							</div>
							<div class="col-md-6 form-group">
								<input type="email" class="form-control" name="email" id="email"
									placeholder="Seu Email" data-rule="email"
									data-msg="Por favor digite um email válido" />
								<div class="validate"></div>
							</div>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="subject"
								id="subject" placeholder="Assunto" data-rule="minlen:4"
								data-msg="
                                Insira pelo menos 8 caracteres do assunto" />
							<div class="validate"></div>
						</div>
						<div class="form-group">
							<textarea class="form-control" name="message" rows="5"
								data-rule="required" data-msg="Por favor escreva algo para nós"
								placeholder="Mensagem"></textarea>
							<div class="validate"></div>
						</div>
						<div class="mb-3">
							<div class="loading">Loading</div>
							<div class="error-message"></div>
							<div class="sent-message">Your message has been sent. Thank
								you!</div>
						</div>
						<div class="text-center">
							<button type="submit">Enviar</button>
						</div>
					</form>
				</div>

			</div>

		</div>
	</section>
	<!-- End Contact Section --> </main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer">
		<div class="footer-top">
			<div class="container">
				<div class="row">

					<div class="col-lg-2 col-md-6 footer-links" data-aos="fade-up"
						data-aos-delay="150">
						<h4>Links Úteis</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Home</a>
							</li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Quem
									somos</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Serviços</a>
							</li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Funções</a>
							</li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Política
									de Privacidade</a></li>
						</ul>
					</div>


					<div class="col-lg-4 col-md-6 footer-newsletter" data-aos="fade-up"
						data-aos-delay="350">
						<h4>Inscreva-se na nossa Newsletter!</h4>
						<p>Deseja receber novidades sobre nossos planos?</p>

						<form action="contact.php" method="post">
							<input type="email" name="email" placeholder="Deixe Seu Email">
							<input type="submit" value="Inscrever-se">
						</form>

					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="copyright">
				&copy; Copyright <strong> <span>Insure4Soft</span> | <span>Todos
						os Direitos Reservados</span>
				</strong>
			</div>
		</div>
	</footer>
	<!-- End Footer -->

	<a href="#" class="back-to-top"> <i class="icofont-simple-up"></i>
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
</body>
</html>