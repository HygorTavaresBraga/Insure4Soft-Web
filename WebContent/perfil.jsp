<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import= "Model.*" %>   
<%@ page import= "java.util.*" %> 

<%

	ArrayList<Plano> listaPlanos = (ArrayList<Plano>) request.getAttribute("listaPlanos");
	request.setAttribute("listaPlanos", listaPlanos);

%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/x-icon" href="img/favicon_purple.ico">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<title>
	<%
		if (session.getAttribute("idCliente") != null) {
			out.println("Perfil | " + session.getAttribute("primeiroNomeCliente"));

		} else if (session.getAttribute("idFuncionario") != null) {
			out.println("Perfil | " + session.getAttribute("primeiroNomeFuncionario"));
		} else {
			out.println("Perfil");
		}
	%>

</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.2/examples/sidebars/">
<link href="./bootstrap/assets/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- CSS -->
<link href="css/perfil.css" rel="stylesheet">

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

<script src="js/botoes-perfil.js"></script>
<script src="js/cep.js"></script>

<script>
	
</script>

<style>
input:valid:focus, input:invalid:focus, input:read-only:focus {
	border: 1px solid #9850B5;
	box-shadow: none;
}

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.b-example-divider {
	height: 3rem;
	background-color: rgba(0, 0, 0, .1);
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em
		rgba(0, 0, 0, .15);
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh;
}

.bi {
	vertical-align: -.125em;
	fill: currentColor;
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden;
}

.nav-scroller .nav {
	display: flex;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch;
}

form {
	width: 100vw;
	height: 84vh;
	margin: 1%;
}

.hop {
	margin-left: 10px;
	font-size: larger;
}

.forms-perfil {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.btn-forms {
	border: 0px;
	background-color: #9850B5;
	color: #fff;
	border-radius: 2px;
	font-size:;
	font-family: 'Poppins';
	transition: 0.5s;
}

.btn-nao-selecionado {
	color: #fff;
	background-color: #212529;
	border-radius: 2px;
	border: none;
	text-decoration: none;
	padding: 5px;
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 8px;
	margin-bottom: 25px;
}

.btn-selecionado {
	color: #fff;
	background-color: #9850B5;
	border-radius: 2px;
	border: solid 1px #fff;
	text-decoration: none;
	padding: 5px;
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 8px;
	margin-bottom: 25px;
}

a:hover {
	text-decoration: none;
}

#btns-menu-analises {
	background: #212529;
	width: 100%;
	height: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
	gap: 5%;
}

#divs-menu-analises {
	display: flex;
	align-items: center;
	justify-content: center;
}

#sub-btn-contrato, #sub-btn-sinistro, #sub-btn-cancelamento {
	color: #fff;
	background-color: #9850B5;
	border-radius: 2px;
	border: solid 1px #fff;
	text-decoration: none;
	padding: 5px;
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 8px;
}

/* MEUS PLANOS */
.box {
	height: 75vh;
}

#row-top {
	height: 9vh;
}

#row-body {
	overflow-x: hidden;
	height: 75vh;
}

#idv2 {
	overflow-y: scroll;
}

#idv3 {
	border: 1px solid #000;
	height: 300px;
}

#idv4 {
	border: 1px solid #000;
	height: 500px;
}

#row-bot {
	margin-top: 200px;
}

#idv5 {
	border: 1px solid #000;
	height: 100px;
}

#idv6 {
	border: 1px solid #000;
	height: 100px;
}

/* FIM DOS MEUS PLANOS */
#col-direita {
	flex-direction: column;
}

.sub-btn-relatorio {
	color: #fff;
	background-color: #9850B5;
	border-radius: 2px;
	border: solid 1px #fff;
	text-decoration: none;
	padding: 5px;
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 8px;
}
.ml-auto{
    margin: auto 15px auto auto;

}
</style>


<!-- Custom styles for this template -->
<link href="sidebars.css" rel="stylesheet">

</head>

<body>

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
					<li><a href="faq.jsp">Faq</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<!-- End Header -->

	<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="bootstrap" viewBox="0 0 118 94">
    <title>Bootstrap</title>
    <path fill-rule="evenodd" clip-rule="evenodd"
			d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z"></path>
  </symbol>
  <symbol id="home" viewBox="0 0 16 16">
    <path
			d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5z" />
  </symbol>
  <symbol id="speedometer2" viewBox="0 0 16 16">
    <path
			d="M8 4a.5.5 0 0 1 .5.5V6a.5.5 0 0 1-1 0V4.5A.5.5 0 0 1 8 4zM3.732 5.732a.5.5 0 0 1 .707 0l.915.914a.5.5 0 1 1-.708.708l-.914-.915a.5.5 0 0 1 0-.707zM2 10a.5.5 0 0 1 .5-.5h1.586a.5.5 0 0 1 0 1H2.5A.5.5 0 0 1 2 10zm9.5 0a.5.5 0 0 1 .5-.5h1.5a.5.5 0 0 1 0 1H12a.5.5 0 0 1-.5-.5zm.754-4.246a.389.389 0 0 0-.527-.02L7.547 9.31a.91.91 0 1 0 1.302 1.258l3.434-4.297a.389.389 0 0 0-.029-.518z" />
    <path fill-rule="evenodd"
			d="M0 10a8 8 0 1 1 15.547 2.661c-.442 1.253-1.845 1.602-2.932 1.25C11.309 13.488 9.475 13 8 13c-1.474 0-3.31.488-4.615.911-1.087.352-2.49.003-2.932-1.25A7.988 7.988 0 0 1 0 10zm8-7a7 7 0 0 0-6.603 9.329c.203.575.923.876 1.68.63C4.397 12.533 6.358 12 8 12s3.604.532 4.923.96c.757.245 1.477-.056 1.68-.631A7 7 0 0 0 8 3z" />
  </symbol>
  <symbol id="table" viewBox="0 0 16 16">
    <path
			d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm15 2h-4v3h4V4zm0 4h-4v3h4V8zm0 4h-4v3h3a1 1 0 0 0 1-1v-2zm-5 3v-3H6v3h4zm-5 0v-3H1v2a1 1 0 0 0 1 1h3zm-4-4h4V8H1v3zm0-4h4V4H1v3zm5-3v3h4V4H6zm4 4H6v3h4V8z" />
  </symbol>
  <symbol id="people-circle" viewBox="0 0 16 16">
    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
    <path fill-rule="evenodd"
			d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
  </symbol>
  <symbol id="grid" viewBox="0 0 16 16">
    <path
			d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zM2.5 2a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zM1 10.5A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3z" />
  </symbol>
  <symbol id="collection" viewBox="0 0 16 16">
    <path
			d="M2.5 3.5a.5.5 0 0 1 0-1h11a.5.5 0 0 1 0 1h-11zm2-2a.5.5 0 0 1 0-1h7a.5.5 0 0 1 0 1h-7zM0 13a1.5 1.5 0 0 0 1.5 1.5h13A1.5 1.5 0 0 0 16 13V6a1.5 1.5 0 0 0-1.5-1.5h-13A1.5 1.5 0 0 0 0 6v7zm1.5.5A.5.5 0 0 1 1 13V6a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-.5.5h-13z" />
  </symbol>
  <symbol id="calendar3" viewBox="0 0 16 16">
    <path
			d="M14 0H2a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zM1 3.857C1 3.384 1.448 3 2 3h12c.552 0 1 .384 1 .857v10.286c0 .473-.448.857-1 .857H2c-.552 0-1-.384-1-.857V3.857z" />
    <path
			d="M6.5 7a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm-9 3a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm-9 3a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" />
  </symbol>
  <symbol id="chat-quote-fill" viewBox="0 0 16 16">
    <path
			d="M16 8c0 3.866-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.584.296-1.925.864-4.181 1.234-.2.032-.352-.176-.273-.362.354-.836.674-1.95.77-2.966C.744 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7zM7.194 6.766a1.688 1.688 0 0 0-.227-.272 1.467 1.467 0 0 0-.469-.324l-.008-.004A1.785 1.785 0 0 0 5.734 6C4.776 6 4 6.746 4 7.667c0 .92.776 1.666 1.734 1.666.343 0 .662-.095.931-.26-.137.389-.39.804-.81 1.22a.405.405 0 0 0 .011.59c.173.16.447.155.614-.01 1.334-1.329 1.37-2.758.941-3.706a2.461 2.461 0 0 0-.227-.4zM11 9.073c-.136.389-.39.804-.81 1.22a.405.405 0 0 0 .012.59c.172.16.446.155.613-.01 1.334-1.329 1.37-2.758.942-3.706a2.466 2.466 0 0 0-.228-.4 1.686 1.686 0 0 0-.227-.273 1.466 1.466 0 0 0-.469-.324l-.008-.004A1.785 1.785 0 0 0 10.07 6c-.957 0-1.734.746-1.734 1.667 0 .92.777 1.666 1.734 1.666.343 0 .662-.095.931-.26z" />
  </symbol>
  <symbol id="cpu-fill" viewBox="0 0 16 16">
    <path
			d="M6.5 6a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3z" />
    <path
			d="M5.5.5a.5.5 0 0 0-1 0V2A2.5 2.5 0 0 0 2 4.5H.5a.5.5 0 0 0 0 1H2v1H.5a.5.5 0 0 0 0 1H2v1H.5a.5.5 0 0 0 0 1H2v1H.5a.5.5 0 0 0 0 1H2A2.5 2.5 0 0 0 4.5 14v1.5a.5.5 0 0 0 1 0V14h1v1.5a.5.5 0 0 0 1 0V14h1v1.5a.5.5 0 0 0 1 0V14h1v1.5a.5.5 0 0 0 1 0V14a2.5 2.5 0 0 0 2.5-2.5h1.5a.5.5 0 0 0 0-1H14v-1h1.5a.5.5 0 0 0 0-1H14v-1h1.5a.5.5 0 0 0 0-1H14v-1h1.5a.5.5 0 0 0 0-1H14A2.5 2.5 0 0 0 11.5 2V.5a.5.5 0 0 0-1 0V2h-1V.5a.5.5 0 0 0-1 0V2h-1V.5a.5.5 0 0 0-1 0V2h-1V.5zm1 4.5h3A1.5 1.5 0 0 1 11 6.5v3A1.5 1.5 0 0 1 9.5 11h-3A1.5 1.5 0 0 1 5 9.5v-3A1.5 1.5 0 0 1 6.5 5z" />
  </symbol>
  <symbol id="gear-fill" viewBox="0 0 16 16">
    <path
			d="M9.405 1.05c-.413-1.4-2.397-1.4-2.81 0l-.1.34a1.464 1.464 0 0 1-2.105.872l-.31-.17c-1.283-.698-2.686.705-1.987 1.987l.169.311c.446.82.023 1.841-.872 2.105l-.34.1c-1.4.413-1.4 2.397 0 2.81l.34.1a1.464 1.464 0 0 1 .872 2.105l-.17.31c-.698 1.283.705 2.686 1.987 1.987l.311-.169a1.464 1.464 0 0 1 2.105.872l.1.34c.413 1.4 2.397 1.4 2.81 0l.1-.34a1.464 1.464 0 0 1 2.105-.872l.31.17c1.283.698 2.686-.705 1.987-1.987l-.169-.311a1.464 1.464 0 0 1 .872-2.105l.34-.1c1.4-.413 1.4-2.397 0-2.81l-.34-.1a1.464 1.464 0 0 1-.872-2.105l.17-.31c.698-1.283-.705-2.686-1.987-1.987l-.311.169a1.464 1.464 0 0 1-2.105-.872l-.1-.34zM8 10.93a2.929 2.929 0 1 1 0-5.86 2.929 2.929 0 0 1 0 5.858z" />
  </symbol>
  <symbol id="speedometer" viewBox="0 0 16 16">
    <path
			d="M8 2a.5.5 0 0 1 .5.5V4a.5.5 0 0 1-1 0V2.5A.5.5 0 0 1 8 2zM3.732 3.732a.5.5 0 0 1 .707 0l.915.914a.5.5 0 1 1-.708.708l-.914-.915a.5.5 0 0 1 0-.707zM2 8a.5.5 0 0 1 .5-.5h1.586a.5.5 0 0 1 0 1H2.5A.5.5 0 0 1 2 8zm9.5 0a.5.5 0 0 1 .5-.5h1.5a.5.5 0 0 1 0 1H12a.5.5 0 0 1-.5-.5zm.754-4.246a.389.389 0 0 0-.527-.02L7.547 7.31A.91.91 0 1 0 8.85 8.569l3.434-4.297a.389.389 0 0 0-.029-.518z" />
    <path fill-rule="evenodd"
			d="M6.664 15.889A8 8 0 1 1 9.336.11a8 8 0 0 1-2.672 15.78zm-4.665-4.283A11.945 11.945 0 0 1 8 10c2.186 0 4.236.585 6.001 1.606a7 7 0 1 0-12.002 0z" />
  </symbol>
  <symbol id="toggles2" viewBox="0 0 16 16">
    <path
			d="M9.465 10H12a2 2 0 1 1 0 4H9.465c.34-.588.535-1.271.535-2 0-.729-.195-1.412-.535-2z" />
    <path
			d="M6 15a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0 1a4 4 0 1 1 0-8 4 4 0 0 1 0 8zm.535-10a3.975 3.975 0 0 1-.409-1H4a1 1 0 0 1 0-2h2.126c.091-.355.23-.69.41-1H4a2 2 0 1 0 0 4h2.535z" />
    <path d="M14 4a4 4 0 1 1-8 0 4 4 0 0 1 8 0z" />
  </symbol>
  <symbol id="tools" viewBox="0 0 16 16">
    <path
			d="M1 0L0 1l2.2 3.081a1 1 0 0 0 .815.419h.07a1 1 0 0 1 .708.293l2.675 2.675-2.617 2.654A3.003 3.003 0 0 0 0 13a3 3 0 1 0 5.878-.851l2.654-2.617.968.968-.305.914a1 1 0 0 0 .242 1.023l3.356 3.356a1 1 0 0 0 1.414 0l1.586-1.586a1 1 0 0 0 0-1.414l-3.356-3.356a1 1 0 0 0-1.023-.242L10.5 9.5l-.96-.96 2.68-2.643A3.005 3.005 0 0 0 16 3c0-.269-.035-.53-.102-.777l-2.14 2.141L12 4l-.364-1.757L13.777.102a3 3 0 0 0-3.675 3.68L7.462 6.46 4.793 3.793a1 1 0 0 1-.293-.707v-.071a1 1 0 0 0-.419-.814L1 0zm9.646 10.646a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708zM3 11l.471.242.529.026.287.445.445.287.026.529L5 13l-.242.471-.026.529-.445.287-.287.445-.529.026L3 15l-.471-.242L2 14.732l-.287-.445L1.268 14l-.026-.529L1 13l.242-.471.026-.529.445-.287.287-.445.529-.026L3 11z" />
  </symbol>
  <symbol id="chevron-right" viewBox="0 0 16 16">
    <path fill-rule="evenodd"
			d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z" />
  </symbol>
  <symbol id="geo-fill" viewBox="0 0 16 16">
    <path fill-rule="evenodd"
			d="M4 4a4 4 0 1 1 4.5 3.969V13.5a.5.5 0 0 1-1 0V7.97A4 4 0 0 1 4 3.999zm2.493 8.574a.5.5 0 0 1-.411.575c-.712.118-1.28.295-1.655.493a1.319 1.319 0 0 0-.37.265.301.301 0 0 0-.057.09V14l.002.008a.147.147 0 0 0 .016.033.617.617 0 0 0 .145.15c.165.13.435.27.813.395.751.25 1.82.414 3.024.414s2.273-.163 3.024-.414c.378-.126.648-.265.813-.395a.619.619 0 0 0 .146-.15.148.148 0 0 0 .015-.033L12 14v-.004a.301.301 0 0 0-.057-.09 1.318 1.318 0 0 0-.37-.264c-.376-.198-.943-.375-1.655-.493a.5.5 0 1 1 .164-.986c.77.127 1.452.328 1.957.594C12.5 13 13 13.4 13 14c0 .426-.26.752-.544.977-.29.228-.68.413-1.116.558-.878.293-2.059.465-3.34.465-1.281 0-2.462-.172-3.34-.465-.436-.145-.826-.33-1.116-.558C3.26 14.752 3 14.426 3 14c0-.599.5-1 .961-1.243.505-.266 1.187-.467 1.957-.594a.5.5 0 0 1 .575.411z" />
  </symbol>
</svg>

	<main class="d-flex flex-nowrap">


	<div class="d-flex flex-column flex-shrink-0 p-3 text-bg-dark"
		style="width: 30vw; height: 85vh;">


		<div class="mb-4" style="border-bottom: solid 1px #fff">
			<h4 style="color: #fff;">
				<%
					out.println(session.getAttribute("bemVindo"));
				%>
			</h4>
		</div>

		<ul class="nav nav-pills flex-column mb-auto">


			<li class="nav-item">

				<button id="btn-meusDados" onclick="mostraMeusDados()"
					class="btn-selecionado" aria-current="page">
					<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
						fill="currentColor" class="bi bi-person-rolodex"
						viewBox="0 0 16 16">
			  <path d="M8 9.05a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z" />
			  <path
							d="M1 1a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h.5a.5.5 0 0 0 .5-.5.5.5 0 0 1 1 0 .5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5.5.5 0 0 1 1 0 .5.5 0 0 0 .5.5h.5a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H6.707L6 1.293A1 1 0 0 0 5.293 1H1Zm0 1h4.293L6 2.707A1 1 0 0 0 6.707 3H15v10h-.085a1.5 1.5 0 0 0-2.4-.63C11.885 11.223 10.554 10 8 10c-2.555 0-3.886 1.224-4.514 2.37a1.5 1.5 0 0 0-2.4.63H1V2Z" />
		  </svg>
					Meus dados
				</button>
			</li>

			<li>
			<!-- <a href=""> -->
				<button type="submit" id="btn-planos" onclick="mostraPlanos()"
					class="btn-nao-selecionado" aria-current="page">
					<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
						fill="currentColor" class="bi bi-award" viewBox="0 0 16 16">
			  <path
							d="M9.669.864 8 0 6.331.864l-1.858.282-.842 1.68-1.337 1.32L2.6 6l-.306 1.854 1.337 1.32.842 1.68 1.858.282L8 12l1.669-.864 1.858-.282.842-1.68 1.337-1.32L13.4 6l.306-1.854-1.337-1.32-.842-1.68L9.669.864zm1.196 1.193.684 1.365 1.086 1.072L12.387 6l.248 1.506-1.086 1.072-.684 1.365-1.51.229L8 10.874l-1.355-.702-1.51-.229-.684-1.365-1.086-1.072L3.614 6l-.25-1.506 1.087-1.072.684-1.365 1.51-.229L8 1.126l1.356.702 1.509.229z" />
			  <path
							d="M4 11.794V16l4-1 4 1v-4.206l-2.018.306L8 13.126 6.018 12.1 4 11.794z" />
			</svg>
					Meus Planos
				</button>
				<!-- </a> -->
			</li>

			<li>
				<a href="index.jsp#contact">
						<button class="btn-nao-selecionado" aria-current="page">
							<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
								fill="currentColor" class="bi bi-headset" viewBox="0 0 16 16">
					 	<path
									d="M8 1a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V6a6 6 0 1 1 12 0v6a2.5 2.5 0 0 1-2.5 2.5H9.366a1 1 0 0 1-.866.5h-1a1 1 0 1 1 0-2h1a1 1 0 0 1 .866.5H11.5A1.5 1.5 0 0 0 13 12h-1a1 1 0 0 1-1-1V8a1 1 0 0 1 1-1h1V6a5 5 0 0 0-5-5z" />
					 </svg>
							Atendimento
						</button>
				</a>
			</li>

		</ul>

		<a href="logout" class="d-flex text-white text-decoration-none ">
			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
				fill="currentColor" class="bi bi-box-arrow-left" viewBox="0 0 16 16">
          <path fill-rule="evenodd"
					d="M6 12.5a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v2a.5.5 0 0 1-1 0v-2A1.5 1.5 0 0 1 6.5 2h8A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-8A1.5 1.5 0 0 1 5 12.5v-2a.5.5 0 0 1 1 0v2z" />
          <path fill-rule="evenodd"
					d="M.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L1.707 7.5H10.5a.5.5 0 0 1 0 1H1.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3z" />
        </svg> <strong class="hop">Sair</strong>
		</a>

	</div>

	<form style="height: 80vh;" id="meus-dados-pessoais"
		action="editarDadosCliente" method="POST" class="forms-perfil">

		<div class="col-md-6">

			<h3 style="border-bottom: 1px solid #9850B5;" class="pb-1">Dados
				Pessoais</h3>

			<label for="nome" class="form-label">Nome</label> <input type="text"
				class="form-control" id="nome" name="nome"
				value="<%out.println(session.getAttribute("nomeCliente"));%>">

			<label for="telefone" class="form-label">CPF</label> <input readonly
				type="text" class="form-control"
				value="<%out.println(session.getAttribute("cpfCliente"));%>">

			<label for="telefone" class="form-label">Telefone</label> <input
				type="text" class="form-control" id="telefone" name="telefone"
				value="<%out.println(session.getAttribute("telefoneCliente"));%>">

			<label for="email" class="form-label">E-mail</label> <input
				type="email" class="form-control" id="email" name="email"
				value="<%out.println(session.getAttribute("emailCliente"));%>">

			<label for="senha" class="form-label">Senha</label> <input
				type="text" class="form-control" id="senha" name="senha"
				value="<%out.println(session.getAttribute("senhaCliente"));%>">
		</div>

		<button class="btn-forms" type="submit">Atualizar</button>

	</form>

	<form style="height: 80vh;" id="meus-dados-endereco"
		action="editarEnderecoCliente" method="POST" class="forms-perfil">

		<div class="col-md-6">

			<h3 style="border-bottom: 1px solid #9850B5;" class="pb-1">Endereço</h3>

			<label for="cep" class="form-label">CEP</label> <input
				onblur="pesquisacep(this.value);" type="text" class="form-control"
				id="cep" name="cep"
				<%if (session.getAttribute("cepCliente") != null) {%>
				value="<%out.println(session.getAttribute("cepCliente"));%>">
			<%
				} else {
			%>
			>
			<%
				}
			%>

			<label for="cidade" class="form-label">Cidade</label> <input readonly
				type="text" class="form-control" id="cidade" name="cidade"
				<%if (session.getAttribute("cidadeCliente") != null) {%>
				value="<%out.println(session.getAttribute("cidadeCliente"));%>">
			<%
				} else {
			%>
			>
			<%
				}
			%>

			<label for="bairro" class="form-label">Bairro</label> <input readonly
				type="text" class="form-control" id="bairro" name="bairro"
				<%if (session.getAttribute("bairroCliente") != null) {%>
				value="<%out.println(session.getAttribute("bairroCliente"));%>">
			<%
				} else {
			%>
			>
			<%
				}
			%>

			<label for="rua" class="form-label">Rua</label> <input readonly
				type="text" class="form-control" id="rua" name="rua"
				<%if (session.getAttribute("ruaCliente") != null) {%>
				value="<%out.println(session.getAttribute("ruaCliente"));%>">
			<%
				} else {
			%>
			>
			<%
				}
			%>

			<label for="numero" class="form-label">Número</label> <input
				type="text" class="form-control" id="logradouro" name="logradouro"
				<%if (session.getAttribute("logradouroCliente") != null
						&& (int) session.getAttribute("logradouroCliente") != 0) {%>
				value="<%out.println(session.getAttribute("logradouroCliente"));%>">
			<%
				} else {
			%>
			>
			<%
				}
			%>

			<label for="complemento" class="form-label">Complemento</label> <input
				type="text" class="form-control" id="complemento" name="complemento"
				<%if (session.getAttribute("complementoCliente") != null) {%>
				value="<%out.println(session.getAttribute("complementoCliente"));%>">
			<%
				} else {
			%>
			>
			<%
				}
			%>
		</div>

		<button class="btn-forms" type="submit">Atualizar</button>

	</form>

	<!-- ======= FIM DOS FORMULÁRIOS "MEUS DADOS" ======  -->
	
	<!-- ======= COMEÇO DA ABA "PLANOS" ====== -->
	
	<div style="display: none" id="planos" class="accordion w-100">
		<div class="container">
			<div class="box">

				<div id="row-top">
					<h3 class="ml-3 pt-3">Meus Planos</h3>
				</div>
				
				<%
				
					if(request.getAttribute("listaPlanos") != (null)){
				
				%>

				<div id="row-body">
					<div class="row">
						<div class="col-12" id="idv2">
							<div class="accordion accordion-flush" id="accordionFlushExample">
								<div class="accordion-item">
									<h2 class="accordion-header" id="flush-headingOne">
									
										<%for(int i=0 ; i<listaPlanos.size() ; i++){%>
										
										<button
											style="background-color: #212529; color: #fff; border: 1px solid #212529; border-radius: 15px;"
											class="accordion-button collapsed d-flex mb-2" type="button"
											data-bs-toggle="collapse"
											data-bs-target="#<%=listaPlanos.get(i).getMarcaAparelho()%><%=listaPlanos.get(i).getIdAparelho()%>"
											aria-expanded="false" aria-controls="flush-collapseOne">

											<%
												if (listaPlanos.get(i).getMarcaAparelho().equals("Apple")) {
											%>
											<img
												style="background-color: #fff; border-radius: 10px; padding: 5px"
												class="mr-3" width="30" height="30" src="img/logo/apple.png">

											<%
												} else if (listaPlanos.get(i).getMarcaAparelho().equals("Samsung")) {
											%>
											<img
												style="background-color: #fff; border-radius: 10px; padding: 5px"
												class="mr-3" width="30" height="30"
												src="img/logo/samsung.png">

											<%
												} else if (listaPlanos.get(i).getMarcaAparelho().equals("Motorola")) {
											%>
											<img
												style="background-color: #fff; border-radius: 10px; padding: 5px"
												class="mr-3" width="30" height="30"
												src="img/logo/motorola.png">

											<%
												} else if (listaPlanos.get(i).getMarcaAparelho().equals("Xiaomi")) {
											%>
											<img
												style="background-color: #fff; border-radius: 10px; padding: 5px"
												class="mr-3" width="30" height="30"
												src="img/logo/xiaomi.png">

											<%
												} else if (listaPlanos.get(i).getMarcaAparelho().equals("Asus")) {
											%>
											<img
												style="background-color: #fff; border-radius: 10px; padding: 5px"
												class="mr-3" width="30" height="30" src="img/logo/asus.png">

											<%
												}
											%>

											<%=listaPlanos.get(i).getModeloAparelho()%>

											<%
												if (listaPlanos.get(i).getStatusSeguro().equals("Ativo")) {
											%>
											<h6 style="color: white;" class="ml-auto">
												Status : Ativo
							
											</h6>
											
												<i class="material-icons" style="font-size:24px; color:green">lens</i>

											<%
												} else if (listaPlanos.get(i).getStatusSeguro().equals("Em Análise")) {
											%>
											<h6 style="color: white;" class="ml-auto">
												Status : Em Análise
											
											</h6>
						
												<i class="material-icons" style="font-size:24px;color:yellow">lens</i>
												
											<%
												} else {
											%>
											<h6 style="color: white;" class="ml-auto">
												Status : Cancelado
											
											</h6>
											
											<i class="material-icons" style="font-size:24px;color:red">lens</i>
											<%
												}
											%>

										</button>

									</h2>
									<div
										id="<%=listaPlanos.get(i).getMarcaAparelho()%><%=listaPlanos.get(i).getIdAparelho()%>"
										class="accordion-collapse collapse"
										aria-labelledby="flush-headingOne"
										data-bs-parent="#accordionFlushExample">
										<div class="accordion-body" style="margin-top: -30px;">

											<div class="row" style="padding: 15px;">

												<div
													style="height: 50vh; border: 3px solid #212529; border-right: none; border-top: none; border-bottom-left-radius: 15px;"
													class="col-sm-6">

													<div class="d-flex">
														<%
															if (listaPlanos.get(i).getPlanoSeguro().equals("Soft Bronze")) {
														%>
														<img class="mr-2 ml-2" width="50" height="50"
															src="img/medalha-de-bronze.png">
														<%
															} else if (listaPlanos.get(i).getPlanoSeguro().equals("Soft Prata")) {
														%>
														<img class="mr-2 ml-2" width="50" height="50"
															src="img/medalha-de-prata.png">
														<%
															} else {
														%>
														<img class="mr-2 ml-2" width="50" height="50"
															src="img/medalha-de-ouro.png">
														<%
															}
														%>

														<h5>
															<%=listaPlanos.get(i).getPlanoSeguro()%>
														</h5>

													</div>

													<div class="d-flex">
														<%
															if (listaPlanos.get(i).getPlanoSeguro().equals("Soft Bronze")) {
														%>
														<p class="d-flex pt-5">Plano de Cobertura Soft Bronze,
															o terceiro plano da nossa seguradora, é o plano mais
															acessível dentro do Insure4Soft. Nele estão asseguradas
															todas as situações de básicas de seguros, além de uma
															taxa de cobertura de 70% do valor do aparelho de celular
															assegurado.</p>
														<%
															} else if (listaPlanos.get(i).getPlanoSeguro().equals("Soft Prata")) {
														%>
														<p class="d-flex pt-5">Plano de Cobertura Soft Prata,
															o segundo plano da nossa seguradora, é o plano com a
															segunda maior cobertura dentro do Insure4Soft. Nele estão
															asseguradas todas as situações convencionalmente cobertas
															por seguros, além de uma taxa de cobertura de 70% do
															valor do aparelho de celular assegurado.</p>
														<%
															} else {
														%>
														<p class="d-flex pt-5">Plano de Cobertura Soft Ouro, o
															melhor plano de nossa seguradora, é o plano de maior
															cobertura dentro do Insure4Soft. Nele estão asseguradas
															todas as situações convencionalmente cobertas por
															seguros, além de uma taxa de cobertura de 100% do valor
															do aparelho de celular assegurado.</p>
														<%
															}
														%>


													</div>

												</div>

												<div id="col-direita"
													style="height: 50vh; border: 3px solid #212529; border-top: none; border-bottom-right-radius: 15px;"
													class="col-sm-6 b d-flex ">

													<div style="height: 60%; border-bottom: 3px solid #212529;"
														class="row d-flex justify-content-center align-items-center">

														<%
															if (listaPlanos.get(i).getPlanoSeguro().equals("Soft Bronze")) {
														%>

														<div style="margin-top: -10px; margin-bottom: 10px;"
															class="d-flex " id="cobertura">

															<div class="d-flex">
																<svg style="color: green; text-weight: bolder;"
																	xmlns="http://www.w3.org/2000/svg" width="25"
																	height="25" fill="currentColor" class="bi bi-check-lg"
																	viewBox="0 0 16 16">
																	  <path
																		d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
																	</svg>

																<p>Roubo</p>
															</div>

															<div class="d-flex">
																<svg style="color: green; text-weight: bolder;"
																	xmlns="http://www.w3.org/2000/svg" width="25"
																	height="25" fill="currentColor" class="bi bi-check-lg"
																	viewBox="0 0 16 16">
																	  <path
																		d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
																	</svg>

																<p class="pl-1">Quebra Acidental</p>
															</div>

															<div class="d-flex">
																<svg style="color: black; text-weight: bolder;"
																	xmlns="http://www.w3.org/2000/svg" width="20"
																	height="20" fill="currentColor" class="bi bi-x-lg"
																	viewBox="0 0 16 16">
																	  <path
																		d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8 2.146 2.854Z" />
																	</svg>

																<p class="pl-1">Furto Qualificado</p>
															</div>


															<div class="d-flex">
																<svg style="color: green; text-weight: bolder;"
																	xmlns="http://www.w3.org/2000/svg" width="25"
																	height="25" fill="currentColor" class="bi bi-check-lg"
																	viewBox="0 0 16 16">
																	  <path
																		d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
																	</svg>


																<p>Cobertura de 70%</p>
															</div>

														</div>

														<%
															} else if (listaPlanos.get(i).getPlanoSeguro().equals("Soft Prata")) {
														%>

														<div style="margin-top: -10px; margin-bottom: 10px;"
															class="d-flex " id="cobertura">

															<div class="d-flex">
																<svg style="color: green; text-weight: bolder;"
																	xmlns="http://www.w3.org/2000/svg" width="25"
																	height="25" fill="currentColor" class="bi bi-check-lg"
																	viewBox="0 0 16 16">
																	  <path
																		d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
																	</svg>

																<p>Roubo</p>
															</div>

															<div class="d-flex">
																<svg style="color: green; text-weight: bolder;"
																	xmlns="http://www.w3.org/2000/svg" width="25"
																	height="25" fill="currentColor" class="bi bi-check-lg"
																	viewBox="0 0 16 16">
																	  <path
																		d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
																	</svg>

																<p>Quebra Acidental</p>
															</div>

															<div class="d-flex">
																<svg style="color: green; text-weight: bolder;"
																	xmlns="http://www.w3.org/2000/svg" width="25"
																	height="25" fill="currentColor" class="bi bi-check-lg"
																	viewBox="0 0 16 16">
																	  <path
																		d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
																	</svg>

																<p class="pl-1">Furto Qualificado</p>
															</div>


															<div class="d-flex">
																<svg style="color: green; text-weight: bolder;"
																	xmlns="http://www.w3.org/2000/svg" width="25"
																	height="25" fill="currentColor" class="bi bi-check-lg"
																	viewBox="0 0 16 16">
																	  <path
																		d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
																	</svg>


																<p>Cobertura de 70%</p>
															</div>

														</div>

														<%
															} else {
														%>

														<div style="margin-top: -10px; margin-bottom: 10px;"
															class="d-flex" id="cobertura">

															<div class="d-flex">
																<svg style="color: green; text-weight: bolder;"
																	xmlns="http://www.w3.org/2000/svg" width="25"
																	height="25" fill="currentColor" class="bi bi-check-lg"
																	viewBox="0 0 16 16">
																	  <path
																		d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
																	</svg>

																<p>Roubo</p>
															</div>

															<div class="d-flex">
																<svg style="color: green; text-weight: bolder;"
																	xmlns="http://www.w3.org/2000/svg" width="25"
																	height="25" fill="currentColor" class="bi bi-check-lg"
																	viewBox="0 0 16 16">
																	  <path
																		d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
																	</svg>

																<p>Furto Qualificado</p>
															</div>

															<div class="d-flex">
																<svg style="color: green; text-weight: bolder;"
																	xmlns="http://www.w3.org/2000/svg" width="25"
																	height="25" fill="currentColor" class="bi bi-check-lg"
																	viewBox="0 0 16 16">
																	  <path
																		d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
																	</svg>

																<p>Quebra Acidental</p>
															</div>

															<div class="d-flex">
																<svg style="color: green; text-weight: bolder;"
																	xmlns="http://www.w3.org/2000/svg" width="25"
																	height="25" fill="currentColor" class="bi bi-check-lg"
																	viewBox="0 0 16 16">
																	  <path
																		d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
																	</svg>

																<p>Cobertura de 100%</p>
															</div>

														</div>

														<%
															}
														%>

													</div>

													<div style="height: 40%;" class="row b">

														<div style="height: 100%;"
															class="col-sm-6 d-flex justify-content-center align-items-center">
															<p
																style="background-color: #212529; color: #fff; padding: 15px; border-radius: 15px;">
																R$
																<%=listaPlanos.get(i).getValorSeguro()%>
																/mês
															</p>
														</div>

														<div style="height: 100%;"
															class="col-sm-6 d-flex justify-content-center align-items-center flex-column gap-2">

															<%
																if (listaPlanos.get(i).getStatusSeguro().equals("Ativo")) {
															%>
															<a href="img/about-bg.jpg" download="2_via.pdf">
																<button
																	style="background-color: #9850B5; color: #fff; border-radius: 5px; padding: 0px 15px 0px 15px; font-weight: bolder; border: 1px solid #212529;">
																	<svg xmlns="http://www.w3.org/2000/svg" width="16"
																		height="16" fill="currentColor" class="bi bi-receipt"
																		viewBox="0 0 16 16">
																	  <path
																			d="M1.92.506a.5.5 0 0 1 .434.14L3 1.293l.646-.647a.5.5 0 0 1 .708 0L5 1.293l.646-.647a.5.5 0 0 1 .708 0L7 1.293l.646-.647a.5.5 0 0 1 .708 0L9 1.293l.646-.647a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .801.13l.5 1A.5.5 0 0 1 15 2v12a.5.5 0 0 1-.053.224l-.5 1a.5.5 0 0 1-.8.13L13 14.707l-.646.647a.5.5 0 0 1-.708 0L11 14.707l-.646.647a.5.5 0 0 1-.708 0L9 14.707l-.646.647a.5.5 0 0 1-.708 0L7 14.707l-.646.647a.5.5 0 0 1-.708 0L5 14.707l-.646.647a.5.5 0 0 1-.708 0L3 14.707l-.646.647a.5.5 0 0 1-.801-.13l-.5-1A.5.5 0 0 1 1 14V2a.5.5 0 0 1 .053-.224l.5-1a.5.5 0 0 1 .367-.27zm.217 1.338L2 2.118v11.764l.137.274.51-.51a.5.5 0 0 1 .707 0l.646.647.646-.646a.5.5 0 0 1 .708 0l.646.646.646-.646a.5.5 0 0 1 .708 0l.646.646.646-.646a.5.5 0 0 1 .708 0l.646.646.646-.646a.5.5 0 0 1 .708 0l.646.646.646-.646a.5.5 0 0 1 .708 0l.509.509.137-.274V2.118l-.137-.274-.51.51a.5.5 0 0 1-.707 0L12 1.707l-.646.647a.5.5 0 0 1-.708 0L10 1.707l-.646.647a.5.5 0 0 1-.708 0L8 1.707l-.646.647a.5.5 0 0 1-.708 0L6 1.707l-.646.647a.5.5 0 0 1-.708 0L4 1.707l-.646.647a.5.5 0 0 1-.708 0l-.509-.51z" />
																	  <path
																			d="M3 4.5a.5.5 0 0 1 .5-.5h6a.5.5 0 1 1 0 1h-6a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h6a.5.5 0 1 1 0 1h-6a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h6a.5.5 0 1 1 0 1h-6a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5zm8-6a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 0 1h-1a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 0 1h-1a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 0 1h-1a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 0 1h-1a.5.5 0 0 1-.5-.5z" />
																	</svg>
																	2º via
																</button>
															</a>
															<button type="button" class="btn btn-primary"
																data-bs-toggle="modal"
																data-bs-target="#avisarSinistro<%=listaPlanos.get(i).getIdAparelho()%>"
																style="background-color: #9850B5; color: #fff; border-radius: 5px; padding: 0px 15px 0px 15px; font-weight: bolder; border: 1px solid #212529;">
																<svg xmlns="http://www.w3.org/2000/svg" width="16"
																	height="16" fill="currentColor"
																	class="bi bi-file-earmark-break" viewBox="0 0 16 16">
																  <path
																		d="M14 4.5V9h-1V4.5h-2A1.5 1.5 0 0 1 9.5 3V1H4a1 1 0 0 0-1 1v7H2V2a2 2 0 0 1 2-2h5.5L14 4.5zM13 12h1v2a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2v-2h1v2a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1v-2zM.5 10a.5.5 0 0 0 0 1h15a.5.5 0 0 0 0-1H.5z" />
																</svg>
																Avisar Sinistro
															</button>

															<button type="button" class="btn btn-primary"
																data-bs-toggle="modal"
																data-bs-target="#cancelar<%=listaPlanos.get(i).getIdAparelho()%>"
																style="background-color: #9850B5; color: #fff; border-radius: 5px; padding: 0px 15px 0px 15px; font-weight: bolder; border: 1px solid #212529;">
																<svg xmlns="http://www.w3.org/2000/svg" width="16"
																	height="16" fill="currentColor" class="bi bi-x-square"
																	viewBox="0 0 16 16">
																  <path
																		d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
																  <path
																		d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
																</svg>
																Cancelar Plano
															</button>

															<!-- Modal Cancelar Plano -->
															<div class="modal fade"
																id="cancelar<%=listaPlanos.get(i).getIdAparelho()%>"
																tabindex="-1" aria-labelledby="exampleModalLabel"
																aria-hidden="true">
																<div class="modal-dialog modal-dialog-centered">
																	<div class="modal-content">
																		<div style="background-color: #212529; color: #fff;"
																			class="modal-header">
																			<h1 class="modal-title fs-5" id="exampleModalLabel">Cancelamento</h1>
																			<button style="background-color: #fff;" type="button"
																				class="btn-close" data-bs-dismiss="modal"
																				aria-label="Close"></button>
																		</div>
																		<div class="modal-body">
																			<strong> <%= session.getAttribute("nomeCliente") %>, você tem certeza que deseja cancelar o seu plano? </strong> <br><br> <span style="color: red;">*</span> Explique-nos o motivo:
															      <br><br><textarea style="resize: none; width: 100%; height: 100px;" placeholder="Digite o motivo aqui" name="motivoCancelamento"> </textarea>
															      
															      <label><span style="color: red;">*</span>Confirme sua senha</label>
															      <br>
															      <input type="password"/>
																		</div>
																		<div style="background-color: #212529; color: #fff;"
																			class="modal-footer">
																			
																			<p>Ao clicar em cancelar seu pedido será analisado.</p>
																			
																			<button style="background-color: #EB0F00; color: #fff;"
																				type="button" class="btn" data-bs-dismiss="modal">
																				<strong><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-exclamation-triangle-fill" viewBox="0 0 16 16">
  <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
</svg> Cancelar</strong>
																			</button>
																		</div>
																	</div>
																</div>
															</div>

															<!-- Modal Avisar Sinistro -->

															<div class="modal fade"
																id="avisarSinistro<%=listaPlanos.get(i).getIdAparelho()%>"
																tabindex="-1" aria-labelledby="exampleModalLabel"
																aria-hidden="true">
																<form action="avisarSinistro" method="POST">
																	<div class="modal-dialog modal-dialog-centered">
																		<div class="modal-content">
																			<div style="background-color: #212529; color: #fff;"
																				class="modal-header">
																				<h1 class="modal-title fs-5" id="exampleModalLabel">Avisar
																					Sinistro</h1>
																				<button style="background-color: #fff;"
																					type="button" class="btn-close"
																					data-bs-dismiss="modal" aria-label="Close"></button>
																			</div>


																			<div class="modal-body">



																				<input hidden id="idCliente" name="idCliente"
																					type="text"
																					value="<%=listaPlanos.get(i).getIdCliente()%>" />
																					
																				<input hidden id="idSeguro" name="idSeguro"
																					type="text"
																					value="<%=listaPlanos.get(i).getIdSeguro()%>" />



																				<h2 class="fs-5"><span style="color: red;">*</span>O que aconteceu?</h2>

																				<div class="form-check">
																					<input class="form-check-input" type="radio"
																						name="acontecimento" id="acontecimento"> <label
																						class="form-check-label" value="Roubo">
																						Roubo </label>
																				</div>

																				<%
																					if (listaPlanos.get(i).getPlanoSeguro().equals("Soft Prata")
																										|| listaPlanos.get(i).getPlanoSeguro().equals("Soft Ouro")) {
																				%>

																				<div class="form-check">
																					<input class="form-check-input" type="radio"
																						name="acontecimento" id="acontecimento"> <label
																						class="form-check-label" value="Furto Qualificado">
																						Furto Qualificado </label>
																				</div>

																				<%
																					}
																				%>

																				<div class="form-check">
																					<input class="form-check-input" type="radio"
																						name="acontecimento" id="acontecimento"> <label
																						class="form-check-label" value="Quebra Acidental">
																						Quebra Acidental </label>
																				</div>

																				<hr>
																				<div class="form-group">
																					<h2 class="fs-5"><span style="color: red;">*</span>Detalhes
																						do Acontecimento</h2>
																					<textarea style="resize: none" class="form-control"
																						id="detalhesAcontecimento" name="detalhesAcontecimento" rows="3"></textarea>
																				</div>
																				<hr>


																				</hr>

																				<h2 class="fs-5"><span style="color: red;">*</span>Boletim de Ocorrência</h2>

																				<div class="input-group mb-3">
																					<input type="file" class="form-control"
																						id="inputGroupFile01">
																				</div>

																			</div>
																			<div style="background-color: #212529; color: #fff;"
																				class="modal-footer">

																				<button id="btnAvisar" name="btnAvisar"
																					style="background-color: #fff; color: #000;"
																					type="submit" class="btn" data-bs-dismiss="modal">
																					<strong>Avisar</strong>
																				</button>

																			</div>


																		</div>
																	</div>
																</form>
															</div>


															<%
																} else {
															%>

															<button disabled
																style="background-color: grey; cursor: not-allowed; color: #fff; border-radius: 5px; padding: 0px 15px 0px 15px; font-weight: bolder; border: 1px solid #212529;">
																<svg xmlns="http://www.w3.org/2000/svg" width="16"
																	height="16" fill="currentColor" class="bi bi-receipt"
																	viewBox="0 0 16 16">
																  <path
																		d="M1.92.506a.5.5 0 0 1 .434.14L3 1.293l.646-.647a.5.5 0 0 1 .708 0L5 1.293l.646-.647a.5.5 0 0 1 .708 0L7 1.293l.646-.647a.5.5 0 0 1 .708 0L9 1.293l.646-.647a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .801.13l.5 1A.5.5 0 0 1 15 2v12a.5.5 0 0 1-.053.224l-.5 1a.5.5 0 0 1-.8.13L13 14.707l-.646.647a.5.5 0 0 1-.708 0L11 14.707l-.646.647a.5.5 0 0 1-.708 0L9 14.707l-.646.647a.5.5 0 0 1-.708 0L7 14.707l-.646.647a.5.5 0 0 1-.708 0L5 14.707l-.646.647a.5.5 0 0 1-.708 0L3 14.707l-.646.647a.5.5 0 0 1-.801-.13l-.5-1A.5.5 0 0 1 1 14V2a.5.5 0 0 1 .053-.224l.5-1a.5.5 0 0 1 .367-.27zm.217 1.338L2 2.118v11.764l.137.274.51-.51a.5.5 0 0 1 .707 0l.646.647.646-.646a.5.5 0 0 1 .708 0l.646.646.646-.646a.5.5 0 0 1 .708 0l.646.646.646-.646a.5.5 0 0 1 .708 0l.646.646.646-.646a.5.5 0 0 1 .708 0l.646.646.646-.646a.5.5 0 0 1 .708 0l.509.509.137-.274V2.118l-.137-.274-.51.51a.5.5 0 0 1-.707 0L12 1.707l-.646.647a.5.5 0 0 1-.708 0L10 1.707l-.646.647a.5.5 0 0 1-.708 0L8 1.707l-.646.647a.5.5 0 0 1-.708 0L6 1.707l-.646.647a.5.5 0 0 1-.708 0L4 1.707l-.646.647a.5.5 0 0 1-.708 0l-.509-.51z" />
																  <path
																		d="M3 4.5a.5.5 0 0 1 .5-.5h6a.5.5 0 1 1 0 1h-6a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h6a.5.5 0 1 1 0 1h-6a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h6a.5.5 0 1 1 0 1h-6a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5zm8-6a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 0 1h-1a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 0 1h-1a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 0 1h-1a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 0 1h-1a.5.5 0 0 1-.5-.5z" />
																</svg>
																2º via
															</button>

															<button disabled
																style="background-color: grey; cursor: not-allowed; color: #fff; border-radius: 5px; padding: 0px 15px 0px 15px; font-weight: bolder; border: 1px solid #212529;">
																<svg xmlns="http://www.w3.org/2000/svg" width="16"
																	height="16" fill="currentColor"
																	class="bi bi-file-earmark-break" viewBox="0 0 16 16">
																  <path
																		d="M14 4.5V9h-1V4.5h-2A1.5 1.5 0 0 1 9.5 3V1H4a1 1 0 0 0-1 1v7H2V2a2 2 0 0 1 2-2h5.5L14 4.5zM13 12h1v2a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2v-2h1v2a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1v-2zM.5 10a.5.5 0 0 0 0 1h15a.5.5 0 0 0 0-1H.5z" />
																</svg>
																Avisar Sinistro
															</button>

															<button disabled
																style="background-color: grey; cursor: not-allowed; color: #fff; border-radius: 5px; padding: 0px 15px 0px 15px; font-weight: bolder; border: 1px solid #212529;">
																<svg xmlns="http://www.w3.org/2000/svg" width="16"
																	height="16" fill="currentColor" class="bi bi-x-square"
																	viewBox="0 0 16 16">
																  <path
																		d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
																  <path
																		d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
																</svg>
																Cancelar Plano
															</button>

															<%
																}
															%>



														</div>

													</div>

												</div>

											</div>



										</div>
									</div>

									<%
										}
									%>
								</div>


							</div>
						</div>
					</div>
				</div>
				
				<%
					}
				%>
				
			</div>
		</div>
	</div>
	<!-- ======= FIM DA ABA "PLANOS" ====== --></main>


	<script src="bootstrap/assets/dist/js/bootstrap.bundle.min.js"></script>
	<script src="bootstrap/sidebars.js"></script>
</body>
</html>