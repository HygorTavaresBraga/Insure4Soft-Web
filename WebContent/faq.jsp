<style>
	body{
		overflow-x: hidden;
	}
</style>

<body>
<!-- HEADER  -->
	<%@ include file="templates/header.jsp" %>

	
	
	<div style="height: 100vh;" class="container-fluid">
	
		<div style="background: pink; " class="row">

			<div  class="col-sm-6 d-flex flex-column justify-content-center align-items-center">
			
				<h1 style="font-weight: bolder; border-bottom: 1px solid #000;">Dúvidas Frequentes</h1>
	
						<h2 class="pt-2">Como funcionam nossos seguros ?</h2>
						
						<h6 class="mb-5">Nossos seguros funcionam baseados em 3 pilares</h6>
	
						<div class="icons-faq">
							<div>
								<img src="img/tempo.png" >
								<p>Agilidade</p>
							</div>
							
							<div>
								<img src="img/garantia.png" >
								<p>Garantia</p>
							</div>
							
							<div>
								<img src="img/economia.png" >
								<p>Economia</p>
							</div>
							
							
							
						</div>
						
	

			</div>
		<div  class="col-sm-6 d-flex justify-content-center align-items-center">
			
			<img width="950" height="auto" src="img/imgfaq.png"/>
			
		</div>
	
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
	
	  

     <!-- FOOTER -->
	<%@ include file="templates/footer.jsp" %>
	
	<!-- DEPENDENCIES -->
	<%@ include file="templates/dependencies.jsp" %>
	
	</body>
     
</html>