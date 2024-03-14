var ValorArabica = Number(1015 / 60).toFixed(2); // valor de 1 Kg de Arábica
var ValorConilon = Number(810 / 60).toFixed(2); // valor de 1 Kg de Conilon

var Porcentagem = Number(0.2); // redução de perdas com nossos serviços

function calcular() {
    div1.innerHTML = ` `; // Apaga a simulação anterior
    var Produzidos = Number(inProduzido.value); // Sacas produzidas por ano
    var KgProduzidos = Produzidos * 60; // Kg produzidos por ano
    var Perdido = Number(inPerda.value); // Kg perdidos por ano
    var option = Number(opcoes.value); // Tipo escolhido de café
    var Total = KgProduzidos - Perdido; // Quantidade inicial de Kg de café sem nossos serviços

    var TotalPerda = (KgProduzidos - Perdido) * Porcentagem; // Total de perdas com a redução dos nossos serviços

    TotalPerda = KgProduzidos - TotalPerda; // Quantidade final de Kg de café com nossos serviços

    if (option == 1) { // tipo de café = Arábico
        Total *= ValorArabica; // Aproveitamento sem nossos serviços
        TotalPerda *= ValorArabica; // Novo aproveitamento
    }
    if (option == 2) { // tipo de café = Conilon
        Total *= ValorConilon; // Aproveitamento sem nossos serviços
        TotalPerda *= ValorConilon; // Novo aproveitamento
    }
    div1.innerHTML = `Ao não utilizar nossos processos de controle, você tem lucro final de café tipo Arábico de R$${Total.toFixed(2).replace(".", ",")}<br><br>`;
    div1.innerHTML += `Seus lucros vão para R$${TotalPerda.toFixed(2).replace(".", ",")} ao utilizar nossos serviços na Kohi Quality`;

}