function formataCPF(cpf){
    const elementoAlvo = cpf
    const cpfAtual = cpf.value

    let cpfAtualizado

    cpfAtualizado = cpfAtual.replace(
        /(\d{3})(\d{3})(\d{3})(\d{2})/,
        function(regex,argumento1,argumento2,argumento3,argumento4){
            return argumento1 + '.' + argumento2 + '.' + argumento3 + '-' + argumento4
        }
    ) 
    elementoAlvo.value = cpfAtualizado
}


function formataTelefone(telefone){
    const elementoAlvo = telefone
    const telefoneAtual = telefone.value

    let telefoneAtualizado

    telefoneAtualizado = telefoneAtual.replace(
        /(\d{2})(\d{5})(\d{4})/,
        function(regex,argumento1,argumento2,argumento3){
            return '(' + argumento1 + ') ' + argumento2 + '-' + argumento3
        }
    ) 
    elementoAlvo.value = telefoneAtualizado
}






