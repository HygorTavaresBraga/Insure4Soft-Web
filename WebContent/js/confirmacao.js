function Cartao(){
	
	/*ID DA CHECKBOX 1*/
	let checkbox1 = document.getElementById("check1");
	
	/*ID DA CHECKBOX 2*/
	let checkbox2 = document.getElementById("check2");
	
	/*ID DA DIV ADD CARTÃO*/
	let addDiv = document.querySelector("#add-cartao");
	
	/*ID DA DIV COM SELECT*/
	let div = document.querySelector("#meus-cartoes");
	
	
	if (checkbox1.checked){
		
		/*MOSTRA DIV COM SELECT*/
		div.style.display = "block";
		
		/*OCULTA DIV ADD*/
		addDiv.style.display ="none";

		checkbox1.checked = false;

	}
	if (checkbox2.checked) {
		
		/*OCULTA DIV COM SELECT*/
		div.style.display = "none";
		
		/*MOSTRA DIV ADD*/
		addDiv.style.display ="flex";
		
		checkbox2.checked = false;
		
	}
	
	
	
}