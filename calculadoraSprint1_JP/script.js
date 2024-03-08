var ValorArabica = Number(1015 / 60).toFixed(4, 2); // valor de um Kg de Arábica
var ValorConilon = Number(810 / 60).toFixed(4, 2); // valor de um Kg de Conilon

var Porcentagem = Number(0.2); // redução de 20 a 

function calcular() {
    div1.innerHTML = ` `;
    var Produzidos = Number(inProduzido.value); // Sacas produzidas por ano
    var KgProduzidos = Produzidos * 60; // Kg produzidos por ano
    var Perdido = Number(inPerda.value); // Kg perdidos por ano
    var option = Number(opcoes.value);
    var Total = KgProduzidos - Perdido;

    var TotalPerda = (KgProduzidos - Perdido) * Porcentagem; // total de perdas com a redução dos nossos serviços

    TotalPerda = KgProduzidos - TotalPerda;

    if (option == 1) { // tipo de café = Arábica
        Total *= ValorArabica; // valor com perdas sem nossos serviços

        TotalPerda *= ValorArabica; // Aproveitamento
        div1.innerHTML = `Ao não utilizar nossos processos de controle, você tem lucro final de café tipo Arábico de R$${Total.toFixed(4, 2)}<br><br>`;

        div1.innerHTML += `Seus lucros vão para R$${TotalPerda.toFixed(4, 2)} ao utilizar nossos serviços na Kohi Quality`;
    }
    if (option == 2) {
        Total *= ValorConilon; // valor com perdas sem nossos serviços

        TotalPerda *= ValorConilon; // Aproveitamento
        div1.innerHTML = `Ao não utilizar nossos processos de controle, você tem lucro final de café tipo Conilon de R$${Total.toFixed(4, 2)}<br><br>`;

        div1.innerHTML += `Seus lucros vão para R$${TotalPerda.toFixed(4, 2)} ao utilizar nossos serviços na Kohi Quality`;
    }
}