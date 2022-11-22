/*CLIENTE*/

function mostraMeusDados(){
	
	/*ID'S DAS ABAS DO PERFIL*/
	let idDadosPessoais = document.querySelector("#meus-dados-pessoais");
	let idDadosEndereco = document.querySelector("#meus-dados-endereco");
	let idPlanos = document.querySelector("#planos");
	
	/*ID'S DOS BOTÕES DO PERFIL*/
	let idBtnDados = document.getElementById("btn-meusDados");
	let idBtnPlanos = document.getElementById("btn-planos");

	if(idDadosPessoais.style.display == "none" && idDadosEndereco.style.display == "none"){
		
		/*OCULTA AS DEMAIS ABAS*/
		idPlanos.style.display = "none"

		/*EXIBE A ABA MEUS DADOS*/
		idDadosPessoais.style.display = "flex"
		idDadosEndereco.style.display = "flex"
			
		/*REMOVE A CLASSE DE BOTÃO NÃO SELECIONADO DO "MEUS DADOS"*/
		idBtnDados.classList.remove("btn-nao-selecionado");	
		
		/*ADICIONA A CLASSE DE BOTÃO SELECIONADO NO "MEUS DADOS"*/
		idBtnDados.className = "btn-selecionado";
		
		/*REMOVE A CLASSE DE BOTÃO SELECIONADO DOS DEMAIS BOTÕES*/
		idBtnPlanos.classList.remove("btn-selecionado");	
		
		/*ADICIONA A CLASSE DE BOTÃO NÃO SELECIONADO NOS DEMAIS BOTÕES*/
		idBtnPlanos.className = "btn-nao-selecionado";
		
	}else{
		
		/*OCULTA A ABA MEUS DADOS*/
		idDadosPessoais.style.display = "none"
		idDadosEndereco.style.display = "none"
		
		/*REMOVE A CLASSE DE BOTÃO SELECIONADO DO "MEUS DADOS"*/
		idBtnDados.classList.remove("btn-selecionado");
		
		/*ADICIONA A CLASSE DE BOTÃO NÃO SELECIONADO NO "MEUS DADOS"*/
		idBtnDados.className = "btn-nao-selecionado";
		
	}
	
}

function mostraPlanos(){
	
	/*ID'S DAS ABAS DO PERFIL*/
	let idDadosPessoais = document.querySelector("#meus-dados-pessoais");
	let idDadosEndereco = document.querySelector("#meus-dados-endereco");
	let idPlanos = document.querySelector("#planos");
	
	/*ID'S DOS BOTÕES DO PERFIL*/
	let idBtnDados = document.getElementById("btn-meusDados");
	let idBtnPlanos = document.getElementById("btn-planos");
	
	if(idPlanos.style.display == "none"){
		
		/*OCULTA AS DEMAIS ABAS*/
		idDadosPessoais.style.display = "none"
		idDadosEndereco.style.display = "none"
			
		/*EXIBE A ABA MEUS DADOS*/
		idPlanos.style.display = "block"
			
		/*REMOVE A CLASSE DE BOTÃO NÃO SELECIONADO DO "Planos"*/
		idBtnPlanos.classList.remove("btn-nao-selecionado");	
		
		/*ADICIONA A CLASSE DE BOTÃO SELECIONADO NO "MEUS DADOS"*/
		idBtnPlanos.className = "btn-selecionado";
		
		/*REMOVE A CLASSE DE BOTÃO SELECIONADO DOS DEMAIS BOTÕES*/
		idBtnDados.classList.remove("btn-selecionado");	
		
		/*ADICIONA A CLASSE DE BOTÃO NÃO SELECIONADO NOS DEMAIS BOTÕES*/
		idBtnDados.className = "btn-nao-selecionado";
		
	}else{
		
		/*OCULTA A ABA "Planos"*/
		idPlanos.style.display = "none"
		
		/*REMOVE A CLASSE DE BOTÃO SELECIONADO DO "Planos"*/
		idBtnPlanos.classList.remove("btn-selecionado");
		
		/*ADICIONA A CLASSE DE BOTÃO NÃO SELECIONADO NO "Planos"*/
		idBtnPlanos.className = "btn-nao-selecionado";
		
	}
	
}

/*FUNCIONARIO*/

function mostraMeusDadosFuncionario(){
	
	/*ID'S DAS ABAS DO PERFIL*/
	let idDadosPessoais = document.querySelector("#meus-dados-pessoais-funcionario");
	let idDadosEndereco = document.querySelector("#meus-dados-endereco-funcionario");
	let idAnalise = document.querySelector("#analises");
	let idRelatorio = document.querySelector("#relatorios");
	
	let idAbaRelatorioCliente = document.querySelector("#relatorio-cliente");
	let idAbaRelatorioAparelho = document.querySelector("#relatorio-aparelho");
	let idAbaRelatorioSeguro = document.querySelector("#relatorio-seguro");
	
	/*ID'S DOS SUB-BOTOES ANALISES*/
	
	let idDivContrato = document.querySelector("#analise-contrato");
	let idDivSinistro = document.querySelector("#analise-sinistro");
	let idDivCancelamento = document.querySelector("#analise-cancelamento");

	/*ID'S DOS BOTÕES DO PERFIL*/
	let idBtnDados = document.getElementById("btn-meusDadosFuncionario");
	let idBtnAnalises = document.getElementById("btn-analises");
	let idBtnRelatorios = document.getElementById("btn-relatorios");

	/*MOSTRA DADOS PESSOAIS E ENDERECO */
	
	if(idDadosPessoais.style.display == "none" && idDadosEndereco.style.display == "none"){
		
		/*OCULTA AS DEMAIS ABAS*/
		idAnalise.style.display = "none"
		idRelatorio.style.display = "none"
			
		idDivContrato.style.display = "none"
    	idDivSinistro.style.display = "none"
		idDivCancelamento.style.display = "none"
			
		idAbaRelatorioCliente.style.display = "none"
		idAbaRelatorioAparelho.style.display = "none"
		idAbaRelatorioSeguro.style.display = "none"

		/*EXIBE A ABA MEUS DADOS*/
		idDadosPessoais.style.display = "flex"
		idDadosEndereco.style.display = "flex"
			
		/*REMOVE A CLASSE DE BOTÃO NÃO SELECIONADO DO "MEUS DADOS"*/
		idBtnDados.classList.remove("btn-nao-selecionado");	
		
		/*ADICIONA A CLASSE DE BOTÃO SELECIONADO NO "MEUS DADOS"*/
		idBtnDados.className = "btn-selecionado";
		
		/*REMOVE A CLASSE DE BOTÃO SELECIONADO DOS DEMAIS BOTÕES*/
		idBtnAnalises.classList.remove("btn-selecionado");	
		idBtnRelatorios.classList.remove("btn-selecionado");
		
		/*ADICIONA A CLASSE DE BOTÃO NÃO SELECIONADO NOS DEMAIS BOTÕES*/
		idBtnAnalises.className = "btn-nao-selecionado";
		idBtnRelatorios.className = "btn-nao-selecionado";
		
	}else{
		
		/*OCULTA A ABA MEUS DADOS*/
		idDadosPessoais.style.display = "none"
		idDadosEndereco.style.display = "none"
		
		/*REMOVE A CLASSE DE BOTÃO SELECIONADO DO "MEUS DADOS"*/
		idBtnDados.classList.remove("btn-selecionado");
		
		/*ADICIONA A CLASSE DE BOTÃO NÃO SELECIONADO NO "MEUS DADOS"*/
		idBtnDados.className = "btn-nao-selecionado";
		
	}
	
}

function mostraAnalises(){
	
	/*ID'S DAS ABAS DO PERFIL*/
	let idDadosPessoais = document.querySelector("#meus-dados-pessoais-funcionario");
	let idDadosEndereco = document.querySelector("#meus-dados-endereco-funcionario");
	let idAnalise = document.querySelector("#analises");
	let idRelatorio = document.querySelector("#relatorios");
		
	let idAbaRelatorioCliente = document.querySelector("#relatorio-cliente");
	let idAbaRelatorioAparelho = document.querySelector("#relatorio-aparelho");
	let idAbaRelatorioSeguro = document.querySelector("#relatorio-seguro");
	
	/*ID'S DOS BOTÕES DO PERFIL*/
	let idBtnDados = document.getElementById("btn-meusDadosFuncionario");
	let idBtnAnalises = document.getElementById("btn-analises");
	let idBtnRelatorios = document.getElementById("btn-relatorios");
	

	if(idAnalise.style.display == "none"){
		
		/*OCULTA AS DEMAIS ABAS*/
		idDadosPessoais.style.display = "none"
		idDadosEndereco.style.display = "none"
		idRelatorio.style.display = "none"
			
		idAbaRelatorioCliente.style.display = "none"
		idAbaRelatorioAparelho.style.display = "none"
		idAbaRelatorioSeguro.style.display = "none"
			
		/*EXIBE A ABA ANALISES*/
		idAnalise.style.display = "flex"
			
		/*REMOVE A CLASSE DE BOTÃO NÃO SELECIONADO DO "ANALISES"*/
		idBtnAnalises.classList.remove("btn-nao-selecionado");	
		
		/*ADICIONA A CLASSE DE BOTÃO SELECIONADO NO "ANALISES"*/
		idBtnAnalises.className = "btn-selecionado";
		
		/*REMOVE A CLASSE DE BOTÃO SELECIONADO DOS DEMAIS BOTÕES*/
		idBtnDados.classList.remove("btn-selecionado");	
		idBtnRelatorios.classList.remove("btn-selecionado");	
		
		/*ADICIONA A CLASSE DE BOTÃO NÃO SELECIONADO NOS DEMAIS BOTÕES*/
		idBtnDados.className = "btn-nao-selecionado";
		idBtnRelatorios.className = "btn-nao-selecionado";
		
	}else{
		
		/*OCULTA A ABA ANALISES*/
		idAnalise.style.display = "none"
		
		/*REMOVE A CLASSE DE BOTÃO SELECIONADO DO "ANALISES"*/
		idBtnAnalises.classList.remove("btn-selecionado");
		
		/*ADICIONA A CLASSE DE BOTÃO NÃO SELECIONADO "ANALISES"*/
		idBtnAnalises.className = "btn-nao-selecionado";
		
	}
	
}

function mostraRelatorios(){
	
	/*ID'S DAS ABAS DO PERFIL*/
	let idDadosPessoais = document.querySelector("#meus-dados-pessoais-funcionario");
	let idDadosEndereco = document.querySelector("#meus-dados-endereco-funcionario");
	let idAnalise = document.querySelector("#analises");
	let idRelatorio = document.querySelector("#relatorios");
	
	let idDivContrato = document.querySelector("#analise-contrato");
	let idDivSinistro = document.querySelector("#analise-sinistro");
	let idDivCancelamento = document.querySelector("#analise-cancelamento");
		
	/*ID'S DOS BOTÕES DO PERFIL*/
	let idBtnDados = document.getElementById("btn-meusDadosFuncionario");
	let idBtnAnalises = document.getElementById("btn-analises");
	let idBtnRelatorios = document.getElementById("btn-relatorios");

	
	if(idRelatorio.style.display == "none"){
		
		/*OCULTA AS DEMAIS ABAS*/
		idDadosPessoais.style.display = "none"
		idDadosEndereco.style.display = "none"
		idAnalise.style.display = "none"
			
		idDivContrato.style.display = "none"
    	idDivSinistro.style.display = "none"
		idDivCancelamento.style.display = "none"
			

		/*EXIBE A ABA RELATÓRIO*/
		idRelatorio.style.display = "block"
			
		/*REMOVE A CLASSE DE BOTÃO NÃO SELECIONADO DO "RELATÓRIO"*/
		idBtnRelatorios.classList.remove("btn-nao-selecionado");	
		
		/*ADICIONA A CLASSE DE BOTÃO SELECIONADO NO "RELATÓRIO"*/
		idBtnRelatorios.className = "btn-selecionado";
		
		/*REMOVE A CLASSE DE BOTÃO SELECIONADO DOS DEMAIS BOTÕES*/
		idBtnDados.classList.remove("btn-selecionado");	
		idBtnAnalises.classList.remove("btn-selecionado");	
		
		/*ADICIONA A CLASSE DE BOTÃO NÃO SELECIONADO NOS DEMAIS BOTÕES*/
		idBtnDados.className = "btn-nao-selecionado";
		idBtnAnalises.className = "btn-nao-selecionado";
		
	}else{
		
		/*OCULTA A ABA RELATÓRIO*/
		idRelatorio.style.display = "none"
		
		/*REMOVE A CLASSE DE BOTÃO SELECIONADO DO "RELATÓRIO"*/
		idBtnRelatorios.classList.remove("btn-selecionado");
		
		/*ADICIONA A CLASSE DE BOTÃO NÃO SELECIONADO "RELATÓRIO"*/
		idBtnRelatorios.className = "btn-nao-selecionado";
		
	}
	
}

/*SUB-BOTÕES ANÁLISES PENDENTES*/
function mostraAnaliseContrato(){
	
	/*ID'S DAS ABAS DO PERFIL*/
	let idContrato = document.querySelector("#analise-contrato");
	let idSinistro = document.querySelector("#analise-sinistro");
	let idCancelamento = document.querySelector("#analise-cancelamento");
	
	/*ID'S DOS BOTÕES DO PERFIL*/
	let idBtnContrato = document.getElementById("btn-contrato");
	let idBtnSinistro = document.getElementById("btn-sinistro");
	let idBtnCancelamento = document.getElementById("btn-cancelamento");
	
	if(idContrato.style.display == "none"){
		 
		/*OCULTA AS DEMAIS ABAS*/
		idSinistro.style.display = "none"
		idCancelamento.style.display = "none"
			
		/*EXIBE A ABA MEUS DADOS*/
		idContrato.style.display = "block"
		
	}else{
		
		/*OCULTA A ABA CONTRATOS*/
		idContrato.style.display = "none"
	}
	
}

function mostraAnaliseSinistro(){
	
	/*ID'S DAS ABAS DO PERFIL*/
	let idContrato = document.querySelector("#analise-contrato");
	let idSinistro = document.querySelector("#analise-sinistro");
	let idCancelamento = document.querySelector("#analise-cancelamento");
	
	/*ID'S DOS BOTÕES DO PERFIL*/
	let idBtnContrato = document.getElementById("btn-contrato");
	let idBtnSinistro = document.getElementById("btn-sinistro");
	let idBtnCancelamento = document.getElementById("btn-cancelamento");

	if(idSinistro.style.display == "none"){

		/*OCULTA AS DEMAIS ABAS*/
		idContrato.style.display = "none";
		idCancelamento.style.display = "none";

		/*EXIBE A ABA SINISTRO*/
		idSinistro.style.display = "block";

	}else{
		
		/*OCULTA A ABA SINISTRO*/
		idSinistro.style.display = "none";
		
	}
	
}

function mostraAnaliseCancelamento(){
	
	/*ID'S DAS ABAS DO PERFIL*/
	let idContrato = document.querySelector("#analise-contrato");
	let idSinistro = document.querySelector("#analise-sinistro");
	let idCancelamento = document.querySelector("#analise-cancelamento");
	
	/*ID'S DOS BOTÕES DO PERFIL*/
	let idBtnContrato = document.getElementById("btn-contrato");
	let idBtnSinistro = document.getElementById("btn-sinistro");
	let idBtnCancelamento = document.getElementById("btn-cancelamento");

	if(idCancelamento.style.display == "none"){

		/*OCULTA AS DEMAIS ABAS*/
		idContrato.style.display = "none"
		idSinistro.style.display = "none"

		/*EXIBE A ABA CANCELAMENTO*/
		idCancelamento.style.display = "block"


	}else{

		/*OCULTA A ABA CANCELAMENTO*/
		idCancelamento.style.display = "none";
		
	}
	
}
function mostraRelatorioCliente(){
	
	/* ID'S DAS ABAS DO RELATORIO*/
	
	let idAbaRelatorioCliente = document.querySelector("#relatorio-cliente");
	let idAbaRelatorioAparelho = document.querySelector("#relatorio-aparelho");
	let idAbaRelatorioSeguro = document.querySelector("#relatorio-seguro");
	
	/* ID'S DOS BOTÔES DO RELATORIO*/
	
	let idBtnRelatorioCliente = document.querySelector("#sub-btn-cliente");
	let idBtnRelatorioAparelho = document.querySelector("#sub-btn-aparelho");
	let idBtnRelatorioSeguro = document.querySelector("#sub-btn-seguro");
	
	if(idAbaRelatorioCliente.style.display == "none" ){
		
		/*OCULTA AS DEMAIS OPÇÕES*/ 
		
		idAbaRelatorioAparelho.style.display = "none"
		idAbaRelatorioSeguro.style.display = "none"
			
		/*EXIBE A OPÇÃO RELATORIO CLIENTE*/
			
		idAbaRelatorioCliente.style.display = "block"
	}
	
	else{
		
		/*OCULTA OPÇÃO RELATORIO CLIENTE*/
		
		idAbaRelatorioCliente.style.display = "none"
		
	}
	
}

function mostraRelatorioAparelho(){
	
	/* ID'S DAS ABAS DO RELATORIO*/
	
	let idAbaRelatorioCliente = document.querySelector("#relatorio-cliente");
	let idAbaRelatorioAparelho = document.querySelector("#relatorio-aparelho");
	let idAbaRelatorioSeguro = document.querySelector("#relatorio-seguro");
	
	/* ID'S DOS BOTÔES DO RELATORIO*/
	
	let idBtnRelatorioCliente = document.querySelector("#sub-btn-cliente");
	let idBtnRelatorioAparelho = document.querySelector("#sub-btn-aparelho");
	let idBtnRelatorioSeguro = document.querySelector("#sub-btn-seguro");
	
	if(idAbaRelatorioAparelho.style.display == "none"){
		
		/*OCULTA AS DEMAIS OPÇÕES*/			
		idAbaRelatorioCliente.style.display = "none"
		idAbaRelatorioSeguro.style.display = "none"

		/*EXIBE A OPÇÃO RELATORIO APARELHO*/				
		idAbaRelatorioAparelho.style.display = "block"
	
	}else{
		
		/*OCULTA OPÇÃO RELATORIO APARELHO*/			
		idAbaRelatorioAparelho.style.display = "none"
		
	}
}

function mostraRelatorioSeguro(){
	
	/* ID'S DAS ABAS DO RELATORIO*/
			
			let idAbaRelatorioCliente = document.querySelector("#relatorio-cliente");
			let idAbaRelatorioAparelho = document.querySelector("#relatorio-aparelho");
			let idAbaRelatorioSeguro = document.querySelector("#relatorio-seguro");
			
			/* ID'S DOS BOTÔES DO RELATORIO*/
			
			let idBtnRelatorioCliente = document.querySelector("#sub-btn-cliente");
			let idBtnRelatorioAparelho = document.querySelector("#sub-btn-aparelho");
			let idBtnRelatorioSeguro = document.querySelector("#sub-btn-seguro");
			
			if(idAbaRelatorioSeguro.style.display == "none"){
				
				/*OCULTA AS DEMAIS OPÇÕES*/
				
				idAbaRelatorioAparelho.style.display = "none"
				idAbaRelatorioCliente.style.display = "none"

					/*EXIBE A OPÇÃO RELATORIO SEGURO*/
					
				idAbaRelatorioSeguro.style.display = "block"	
			}
			
			else{
				
				/*OCULTA OPÇÃO RELATORIO SEGURO*/
				
				idAbaRelatorioSeguro.style.display ="none"
				
			}
			
		}