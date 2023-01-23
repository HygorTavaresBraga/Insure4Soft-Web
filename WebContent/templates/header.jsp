<%@include file="head.jsp"%>

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

		</div>
	</header>
	<!-- End Header -->