<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Entrar | Insure4soft</title>
    <link rel="icon" type="image/x-icon" href="img/favicon_white.ico">

    <!-- Font Icon -->

    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->

    <link rel="stylesheet" href="css/styleLogin.css">
    
    <!-- JS -->
    <script src="js/formatacao.js"></script>
</head>

<body>

    <div class="main">
  
        <!-- Sing in  Form -->
        <section class="sign-in">
            <div class="container" style="padding-top: 5px;">                	
                	<a id="arrow-left" href="index.jsp">
                    	<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
			              <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
			            </svg>
			           </a>                
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="img/logo.png" alt="sing up image"></figure>
                        <a style="color: #3f0955c2;" href="registrar.jsp" class="signup-image-link">não possuo cadastro</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Entrar</h2>
                        <form action="acessar" method="POST" class="register-form" id="login-form">
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input required type="text" minlenght="14" maxlenght="14" name="cpf" id="cpf" placeholder="CPF" onblur="formataCPF(this)"/>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <input required type="password" name="senha" id="senha" placeholder="Senha" />
                            </div>
                            
                            <div class="form-group">
                                <input type="checkbox" class="agree-term" />
                                <label for="remember-me" class="label-agree-term"><span><span></span></span>Lembre meus dados</label>
                            </div>
                            
                            <div class="form-group form-button">
                                <button type="submit" class="submit-btn">Entrar</button>
                            </div>
                        </form>
                     
                    </div>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>