/*CLIENTE*/

function mostraMeusDados(){
	
	/*ID'S DAS ABAS DO PERFIL*/
	let idDadosPessoais = document.querySelector("#meus-dados-pessoais");
	let idDadosEndereco = document.querySelector("#meus-dados-endereco");
	let idPlanos = document.querySelector("#planos");
	let idSinistro = document.querySelector("#sinistro");
	let idCancelamento = document.querySelector("#cancelamento");	
	
	/*ID'S DOS BOTÕES DO PERFIL*/
	let idBtnDados = document.getElementById("btn-meusDados");
	let idBtnPlanos = document.getElementById("btn-planos");
	let idBtnSinistro = document.getElementById("btn-sinistro");
	let idBtnCancelamento = document.getElementById("btn-cancelamento");
	
	if(idDP.style.display == "none" && idDE.style.display == "none"){
		
		/*OCULTA AS DEMAIS ABAS*/
		idPLAN.style.display = "none"
		idSIN.style.display = "none"
		idCAN.style.display = "none"
			
		/*EXIBE A ABA MEUS DADOS*/
		idDP.style.display = "flex"
		idDE.style.display = "flex"
			
		/*REMOVE A CLASSE DE BOTÃO NÃO SELECIONADO DO "MEUS DADOS"*/
		idBtnDados.classList.remove("btn-nao-selecionado");	
		
		/*ADICIONA A CLASSE DE BOTÃO SELECIONADO NO "MEUS DADOS"*/
		idBtnDados.className = "btn-selecionado";
		
		/*REMOVE A CLASSE DE BOTÃO SELECIONADO DOS DEMAIS BOTÕES*/
		idBtnPlanos.classList.remove("btn-selecionado");	
		idBtnSinistro.classList.remove("btn-selecionado");	
		idBtnCancelamento.classList.remove("btn-selecionado");	
		
		/*ADICIONA A CLASSE DE BOTÃO NÃO SELECIONADO NOS DEMAIS BOTÕES*/
		idBtnPlanos.className = "btn-nao-selecionado";
		idBtnSinistro.className = "btn-nao-selecionado";
		idBtnCancelamento.className = "btn-nao-selecionado";
		
	}else{
		
		/*OCULTA A ABA MEUS DADOS*/
		idDP.style.display = "none"
		idDE.style.display = "none"
		
		/*REMOVE A CLASSE DE BOTÃO SELECIONADO DO "MEUS DADOS"*/
		idBtnDados.classList.remove("btn-selecionado");
		
		/*ADICIONA A CLASSE DE BOTÃO NÃO SELECIONADO NO "MEUS DADOS"*/
		idBtnDados.className = "btn-nao-selecionado";
		
	}
	
}

function mostraPlanos(){
	
	/*ID'S DAS ABAS DO PERFIL*/
	let idDP = document.querySelector("#meus-dados-pessoais");
	let idDE = document.querySelector("#meus-dados-endereco");
	let idPLAN = document.querySelector("#planos");
	let idSIN = document.querySelector("#sinistro");
	let idCAN = document.querySelector("#cancelamento");	
	
	/*ID'S DOS BOTÕES DO PERFIL*/
	let idBtnDados = document.getElementById("btn-meusDados");
	let idBtnPlanos = document.getElementById("btn-planos");
	let idBtnSinistro = document.getElementById("btn-sinistro");
	let idBtnCancelamento = document.getElementById("btn-cancelamento");
	
	if(idPLAN.style.display == "none"){
		
		/*OCULTA AS DEMAIS ABAS*/
		idDP.style.display = "none"
		idDE.style.display = "none"
		idSIN.style.display = "none"
		idCAN.style.display = "none"
			
		/*EXIBE A ABA MEUS DADOS*/
		idPLAN.style.display = "block"
		idPLAN.style.display = "block"
			
		/*REMOVE A CLASSE DE BOTÃO NÃO SELECIONADO DO "Planos"*/
		idBtnPlanos.classList.remove("btn-nao-selecionado");	
		
		/*ADICIONA A CLASSE DE BOTÃO SELECIONADO NO "MEUS DADOS"*/
		idBtnPlanos.className = "btn-selecionado";
		
		/*REMOVE A CLASSE DE BOTÃO SELECIONADO DOS DEMAIS BOTÕES*/
		idBtnDados.classList.remove("btn-selecionado");	
		idBtnSinistro.classList.remove("btn-selecionado");	
		idBtnCancelamento.classList.remove("btn-selecionado");	
		
		/*ADICIONA A CLASSE DE BOTÃO NÃO SELECIONADO NOS DEMAIS BOTÕES*/
		idBtnDados.className = "btn-nao-selecionado";
		idBtnSinistro.className = "btn-nao-selecionado";
		idBtnCancelamento.className = "btn-nao-selecionado";
		
	}else{
		
		/*OCULTA A ABA "Planos"*/
		idPLAN.style.display = "none"
		idPLAN.style.display = "none"
		
		/*REMOVE A CLASSE DE BOTÃO SELECIONADO DO "Planos"*/
		idBtnPlanos.classList.remove("btn-selecionado");
		
		/*ADICIONA A CLASSE DE BOTÃO NÃO SELECIONADO NO "Planos"*/
		idBtnPlanos.className = "btn-nao-selecionado";
		
	}
	
}

function mostraSinistro(){
	
	/*ID'S DAS ABAS DO PERFIL*/
	let idDP = document.querySelector("#meus-dados-pessoais");
	let idDE = document.querySelector("#meus-dados-endereco");
	let idPLAN = document.querySelector("#planos");
	let idSIN = document.querySelector("#sinistro");
	let idCAN = document.querySelector("#cancelamento");	
	
	/*ID'S DOS BOTÕES DO PERFIL*/
	let idBtnDados = document.getElementById("btn-meusDados");
	let idBtnPlanos = document.getElementById("btn-planos");
	let idBtnSinistro = document.getElementById("btn-sinistro");
	let idBtnCancelamento = document.getElementById("btn-cancelamento");
	
	if(idSIN.style.display == "none"){
		
		/*OCULTA AS DEMAIS ABAS*/
		idDP.style.display = "none"
		idDE.style.display = "none"
		idPLAN.style.display = "none"
		idCAN.style.display = "none"
			
		/*EXIBE A ABA "SINISTRO"*/
		idSIN.style.display = "block"
		idSIN.style.display = "block"
			
		/*REMOVE A CLASSE DE BOTÃO NÃO SELECIONADO DO "SINSITRO"*/
		idBtnSinistro.classList.remove("btn-nao-selecionado");	
		
		/*ADICIONA A CLASSE DE BOTÃO SELECIONADO NO "SINISTRO"*/
		idBtnSinistro.className = "btn-selecionado";
		
		/*REMOVE A CLASSE DE BOTÃO SELECIONADO DOS DEMAIS BOTÕES*/
		idBtnDados.classList.remove("btn-selecionado");	
		idBtnPlanos.classList.remove("btn-selecionado");	
		idBtnCancelamento.classList.remove("btn-selecionado");	
		
		/*ADICIONA A CLASSE DE BOTÃO NÃO SELECIONADO NOS DEMAIS BOTÕES*/
		idBtnDados.className = "btn-nao-selecionado";
		idBtnPlanos.className = "btn-nao-selecionado";
		idBtnCancelamento.className = "btn-nao-selecionado";
		
	}else{
		
		/*OCULTA A ABA "SINISTRO"*/
		idSIN.style.display = "none"
		idSIN.style.display = "none"
		
		/*REMOVE A CLASSE DE BOTÃO SELECIONADO DO "SINISTRO"*/
		idBtnSinistro.classList.remove("btn-selecionado");
		
		/*ADICIONA A CLASSE DE BOTÃO NÃO SELECIONADO NO "SINISTRO"*/
		idBtnSinistro.className = "btn-nao-selecionado";
		
	}
	
}

function mostraCancelamento(){
	
	/*ID'S DAS ABAS DO PERFIL*/
	let idDP = document.querySelector("#meus-dados-pessoais");
	let idDE = document.querySelector("#meus-dados-endereco");
	let idPLAN = document.querySelector("#planos");
	let idSIN = document.querySelector("#sinistro");
	let idCAN = document.querySelector("#cancelamento");
	
	/*ID'S DOS BOTÕES DO PERFIL*/
	let idBtnDados = document.getElementById("btn-meusDados");
	let idBtnPlanos = document.getElementById("btn-planos");
	let idBtnSinistro = document.getElementById("btn-sinistro");
	let idBtnCancelamento = document.getElementById("btn-cancelamento");
	
	if(idCAN.style.display == "none"){
		
		/*OCULTA AS DEMAIS ABAS*/
		idDP.style.display = "none"
		idDE.style.display = "none"
		idPLAN.style.display = "none"
		idSIN.style.display = "none"
			
		/*EXIBE A ABA "CANCELAMENTO"*/
		idCAN.style.display = "block"
		idCAN.style.display = "block"
			
		/*REMOVE A CLASSE DE BOTÃO NÃO SELECIONADO DO "CANCELAMENTO"*/
		idBtnCancelamento.classList.remove("btn-nao-selecionado");	
		
		/*ADICIONA A CLASSE DE BOTÃO SELECIONADO NO "CANCELAMENTO"*/
		idBtnCancelamento.className = "btn-selecionado";
		
		/*REMOVE A CLASSE DE BOTÃO SELECIONADO DOS DEMAIS BOTÕES*/
		idBtnDados.classList.remove("btn-selecionado");
		idBtnPlanos.classList.remove("btn-selecionado");	
		idBtnSinistro.classList.remove("btn-selecionado");	
		
		/*ADICIONA A CLASSE DE BOTÃO NÃO SELECIONADO NOS DEMAIS BOTÕES*/
		idBtnDados.className = "btn-nao-selecionado";
		idBtnPlanos.className = "btn-nao-selecionado";
		idBtnSinistro.className = "btn-nao-selecionado";
		
	}else{
		
		/*OCULTA A ABA "CANCELAMENTO"*/
		idCAN.style.display = "none"
		idCAN.style.display = "none"
		
		/*REMOVE A CLASSE DE BOTÃO SELECIONADO DO "CANCELAMENTO"*/
		idBtnCancelamento.classList.remove("btn-selecionado");
		
		/*ADICIONA A CLASSE DE BOTÃO NÃO SELECIONADO NO "CANCELAMENTO"*/
		idBtnCancelamento.className = "btn-nao-selecionado";
		
	}
	
}

/*FUNCIONARIO*/

function mostraMeusDadosFuncionario(){
	
	/*ID'S DAS ABAS DO PERFIL*/
	let idDP = document.querySelector("#meus-dados-pessoais-funcionario");
	let idDE = document.querySelector("#meus-dados-endereco-funcionario");
	let idAN = document.querySelector("#analises");
	let idER = document.querySelector("#erro");
		
	
	/*ID'S DOS BOTÕES DO PERFIL*/
	let idBtnDados = document.getElementById("btn-meusDadosFuncionario");
	let idBtnAnalises = document.getElementById("btn-analises");
	let idBtnErro = document.getElementById("btn-erro");

	
	if(idDP.style.display == "none" && idDE.style.display == "none"){
		
		/*OCULTA AS DEMAIS ABAS*/
		idAN.style.display = "none"
		idER.style.display = "none"

			
		/*EXIBE A ABA MEUS DADOS*/
		idDP.style.display = "flex"
		idDE.style.display = "flex"
			
		/*REMOVE A CLASSE DE BOTÃO NÃO SELECIONADO DO "MEUS DADOS"*/
		idBtnDados.classList.remove("btn-nao-selecionado");	
		
		/*ADICIONA A CLASSE DE BOTÃO SELECIONADO NO "MEUS DADOS"*/
		idBtnDados.className = "btn-selecionado";
		
		/*REMOVE A CLASSE DE BOTÃO SELECIONADO DOS DEMAIS BOTÕES*/
		idBtnAnalises.classList.remove("btn-selecionado");	
		idBtnErro.classList.remove("btn-selecionado");	
		
		/*ADICIONA A CLASSE DE BOTÃO NÃO SELECIONADO NOS DEMAIS BOTÕES*/
		idBtnAnalises.className = "btn-nao-selecionado";
		idBtnErro.className = "btn-nao-selecionado";
		
	}else{
		
		/*OCULTA A ABA MEUS DADOS*/
		idDP.style.display = "none"
		idDE.style.display = "none"
		
		/*REMOVE A CLASSE DE BOTÃO SELECIONADO DO "MEUS DADOS"*/
		idBtnDados.classList.remove("btn-selecionado");
		
		/*ADICIONA A CLASSE DE BOTÃO NÃO SELECIONADO NO "MEUS DADOS"*/
		idBtnDados.className = "btn-nao-selecionado";
		
	}
	
}

function mostraAnalises(){
	
	/*ID'S DAS ABAS DO PERFIL*/
	let idDP = document.querySelector("#meus-dados-pessoais-funcionario");
	let idDE = document.querySelector("#meus-dados-endereco-funcionario");
	let idAN = document.querySelector("#analises");
	let idER = document.querySelector("#erro");
		
	
	/*ID'S DOS BOTÕES DO PERFIL*/
	let idBtnDados = document.getElementById("btn-meusDadosFuncionario");
	let idBtnAnalises = document.getElementById("btn-analises");
	let idBtnErro = document.getElementById("btn-erro");

	
	if(idAN.style.display == "none"){
		
		/*OCULTA AS DEMAIS ABAS*/
		idDP.style.display = "none"
		idDE.style.display = "none"
		idER.style.display = "none"
			
		/*EXIBE A ABA ANALISES*/
		idAN.style.display = "flex"
			
		/*REMOVE A CLASSE DE BOTÃO NÃO SELECIONADO DO "ANALISES"*/
		idBtnAnalises.classList.remove("btn-nao-selecionado");	
		
		/*ADICIONA A CLASSE DE BOTÃO SELECIONADO NO "ANALISES"*/
		idBtnAnalises.className = "btn-selecionado";
		
		/*REMOVE A CLASSE DE BOTÃO SELECIONADO DOS DEMAIS BOTÕES*/
		idBtnDados.classList.remove("btn-selecionado");	
		idBtnErro.classList.remove("btn-selecionado");	
		
		/*ADICIONA A CLASSE DE BOTÃO NÃO SELECIONADO NOS DEMAIS BOTÕES*/
		idBtnDados.className = "btn-nao-selecionado";
		idBtnErro.className = "btn-nao-selecionado";
		
	}else{
		
		/*OCULTA A ABA ANALISES*/
		idAN.style.display = "none"
		
		/*REMOVE A CLASSE DE BOTÃO SELECIONADO DO "ANALISES"*/
		idBtnAnalises.classList.remove("btn-selecionado");
		
		/*ADICIONA A CLASSE DE BOTÃO NÃO SELECIONADO "ANALISES"*/
		idBtnAnalises.className = "btn-nao-selecionado";
		
	}
	
}

function mostraRelatarErro(){
	
	/*ID'S DAS ABAS DO PERFIL*/
	let idDP = document.querySelector("#meus-dados-pessoais-funcionario");
	let idDE = document.querySelector("#meus-dados-endereco-funcionario");
	let idAN = document.querySelector("#analises");
	let idER = document.querySelector("#erro");
		
	
	/*ID'S DOS BOTÕES DO PERFIL*/
	let idBtnDados = document.getElementById("btn-meusDadosFuncionario");
	let idBtnAnalises = document.getElementById("btn-analises");
	let idBtnErro = document.getElementById("btn-erro");

	
	if(idER.style.display == "none"){
		
		/*OCULTA AS DEMAIS ABAS*/
		idDP.style.display = "none"
		idDE.style.display = "none"
		idAN.style.display = "none"
			
		/*EXIBE A ABA RELATAR ERRO*/
		idER.style.display = "flex"
			
		/*REMOVE A CLASSE DE BOTÃO NÃO SELECIONADO DO "RELATAR ERRO"*/
		idBtnErro.classList.remove("btn-nao-selecionado");	
		
		/*ADICIONA A CLASSE DE BOTÃO SELECIONADO NO "RELATAR ERRO"*/
		idBtnErro.className = "btn-selecionado";
		
		/*REMOVE A CLASSE DE BOTÃO SELECIONADO DOS DEMAIS BOTÕES*/
		idBtnDados.classList.remove("btn-selecionado");	
		idBtnAnalises.classList.remove("btn-selecionado");	
		
		/*ADICIONA A CLASSE DE BOTÃO NÃO SELECIONADO NOS DEMAIS BOTÕES*/
		idBtnDados.className = "btn-nao-selecionado";
		idBtnAnalises.className = "btn-nao-selecionado";
		
	}else{
		
		/*OCULTA A ABA RELATAR ERRO*/
		idER.style.display = "none"
		
		/*REMOVE A CLASSE DE BOTÃO SELECIONADO DO "RELATAR ERRO"*/
		idBtnErro.classList.remove("btn-selecionado");
		
		/*ADICIONA A CLASSE DE BOTÃO NÃO SELECIONADO "RELATAR ERRO"*/
		idBtnErro.className = "btn-nao-selecionado";
		
	}
	
}