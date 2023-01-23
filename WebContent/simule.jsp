<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>   

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
    <title>Simule | Marca</title>

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

        /*inicio css back arrow*/
        .back-arrow {
            border-bottom: 1px solid rgba(0, 0, 0, 0.09);
            text-align: center;
        }

        .fundo-ref {
            margin-top: 3%;
        }

        .fundo-ref a {
            text-decoration: none;
            font-family: "Raleway", sans-serif;
            font-size: 25pt;
        }

        /*fim css back arrow*/

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
        
        .carousel-control-next,
        .carousel-control-next-icon{
        	margin-left: 100px;
        }
        
        .carousel-control-prev,
        .carousel-control-prev-icon{
        	margin-right: 100px;
        }

        .carousel-control-prev,
        .carousel-control-next {
            background: none;
            border: 0px;
        }

        .carousel-control-prev-icon,
        .carousel-control-next-icon {
            padding: 15px;
            border-radius: 15px;
            background-color: #000;
        }

        .carousel-control-prev-icon,
        .carousel-control-next-icon:hover {
            background-color: #000;
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

        #container-carrossel {
            display: flex;
            flex-direction: row;
            justify-content: center;
            width: 100%;
            height: 160px;

            border-radius: 5px;
        }

        #container-carrossel .row {
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
        }

        .row {
            width: 100vw;
            height: 80vh;
        }


        .calcular {
            display: flex;
            margin-bottom: 3%;
        }

        .calcular h1 {
            font-family: "Raleway", sans-serif;

        }

        .espacoh1 {
            border-bottom: 1px solid black;
            margin: 0 10px 2% 10px;
        }

        .bronze {

            border-radius: 15px;
            box-shadow: 0 0 3px 0.5px;
            text-align: center;
            width: 100%;
            margin-right: 1%;
            
        }

        .titulo-bronze {
            color: #000;
        }

        .titulo-bronze img {
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
        }

        .conteudo-planos {
            font-size: 12pt;
            font-weight: bold;

        }

        .pwarning {
            color: rgba(143, 140, 140, 0.271);

        }

        .psuccess {
            color: green;
            line-height: 15px;
        }

        .calculo-final {

            display: flex;
            width: fit-content;
            margin: auto;
        }

        .calculo-final p {
            margin: auto;
            font-size: large;
        }

        .valor-calculado {
            color: #000;
            font-weight: bolder;
            font-size: 19pt;
            margin: auto;
        }

        .btn-calculo {
            margin: 5%;
        }

        .btn-calculo a {
            width: -webkit-fill-available;
            font-weight: bold;
        }

        .prata {
            border-radius: 15px;
            box-shadow: 0 0 3px 0.5px;
            border-radius: 15px;
            text-align: center;
            width: 100%;
            margin-right: 1%;
           
        }

        .titulo-prata {
            color: #000;


        }

        .titulo-prata img {
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
        }

        .gold {
            /*border: 1px solid purple;*/
            border-radius: 15px;
            box-shadow: 0 0 3px 0.5px;
            border-radius: 15px;
            text-align: center;
            width: 100%;
        
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

        /*fim css centro do conteudo*/

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
        
        .bronze h3, .prata h3, .ouro h3{
        	font-family: 'Alumni Sans Pinstripe', sans-serif;
        }
        
        .titulo-bronze, .titulo-prata, .titulo-gold {
            border-radius: 15px; 
        }
        
        .aparelho{
        	color: grey;
        	margin: 10px 0 10px 0;
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


    <div class="container">

        <div class="conteudo">

	
            <!--==================
            Início carrossel de Marcas
            ===================-->
            
            <div class="marcas">
                <div class="list-group">
                
                    <div style="background-color: #3f0955c2; color: #fff;" class="list-group-item" aria-current="true">
                        <center style="text-transform: uppercase; font-family: 'Poppins'; font-weight: bold;">Selecione a Marca</center>
                    </div>
                    
                    <div id="container-carrossel">
	                <div id="carouselExampleFade" class="carousel">
	                    <div class="carousel-inner">
	                        <div class="carousel-item active">
	                            <form id="formulario" action="modelo" method="POST">
	                                <button type="submit" id="btn-modal" class="btn">
	                                    <div id="box" class="box">
	                                        <div id="img-box">
	                                            <img width="120" height="100" src="img/logo/apple.png" alt="">
	                                            <input hidden name="marca" value="Apple">
	                                        </div>
	
	                                    </div>
	                                </button>
	                            </form>
	                        </div>
	                        <div class="carousel-item">
	                            <form id="formulario" action="modelo" method="POST">
	                                <button type="submit" id="btn-modal" class="btn">
	                                    <div id="box" class="box">
	                                        <div id="img-box">
	                                            <img width="120" height="100" src="img/logo/samsung.png">
	                                            <input hidden name="marca" value="Samsung">
	                                        </div>
	
	                                    </div>
	                                </button>
	                            </form>
	                        </div>
	                        <div class="carousel-item">
	                            <form id="formulario" action="modelo" method="POST">
	                                <button type="submit" id="btn-modal" class="btn">
	                                    <div id="box" class="box">
	                                        <div id="img-box">
	                                            <img width="120" height="100" src="img/logo/motorola.png">
	                                            <input hidden name="marca" value="Motorola">
	                                        </div>
	
	                                    </div>
	                                </button>
	                            </form>
	                        </div>
	                        <div class="carousel-item">
	                            <form id="formulario" action="modelo" method="POST">
	                                <button type="submit" id="btn-modal" class="btn">
	                                    <div id="box" class="box">
	                                        <div id="img-box">
	                                            <img width="120" height="100" src="img/logo/xiaomi.png">
	                                            <input hidden name="marca" value="Xiaomi">
	                                        </div>
	
	                                    </div>
	                                </button>
	                            </form>
	                        </div>
	                        
	                        <div class="carousel-item">
	                            <form id="formulario" action="modelo" method="POST">
	                                <button type="submit" id="btn-modal" class="btn">
	                                    <div id="box" class="box">
	                                        <div id="img-box">
	                                            <img width="120" height="100" src="img/logo/asus.png">
	                                            <input hidden name="marca" value="Asus">
	                                        </div>
	
	                                    </div>
	                                </button>
	                            </form>
	                        </div>
	                        
	                    </div>
	                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade"
	                        data-bs-slide="prev">
	                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	                        <span class="visually-hidden"></span>
	                    </button>
	                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade"
	                        data-bs-slide="next">
	                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
	                        <span class="visually-hidden"></span>
	                    </button>
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
                
                	<% if(request.getParameter("marca") != null){
                			out.print(request.getParameter("marca"));
                		}else{
                			out.print("...");
                		}
                	%>               	
                
                </li>
                
                	<br>
                	
                <li style="background-color: #3f0955c2; color: #fff;" class="list-group-item ">Modelo</li>
                <li class="list-group-item">
                
                	<% if(request.getParameter("modelo") != null){
                			out.print(request.getParameter("modelo"));
                		}else{
                			out.print("...");
                		}
                	%>  
                	 
                </li>
                
                	<br>
                	
                <li style="background-color: #3f0955c2; color: #fff;" class="list-group-item">Armazenamento</li>
                <li class="list-group-item">
                
                	<% if(request.getParameter("armazenamento") != null){
                			out.print(request.getParameter("armazenamento"));
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
    
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>