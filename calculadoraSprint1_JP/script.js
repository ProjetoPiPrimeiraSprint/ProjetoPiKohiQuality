var ValorArabica = Number(1015 / 60); // valor de um Kg de Arábica
var ValorConilon = Number(810 / 60); // valor de um Kg de Conilon

var Porcentagem = Number(0.2);

function calcular() {
    var Produzidos = Number(inProduzido.value); // Sacas produzidas por ano
    var KgProduzido = Produzidos * 60; // Kg produzidos por ano
    var Perdido = Number(inPerda.value); // Kg perdidos por ano++
    var option = Number(opcoes.value);

    div1.innerHTML = ` `;

    if (option == 1) { // tipo de café = Arábica
        var Total = KgProduzido - Perdido;
        Total *= ValorArabica; // valor sem nossos serviços
        var TotalPerda = Perdido * Porcentagem - Produzidos; // total perdido
        TotalPerda = (Produzidos - TotalPerda) * ValorArabica; // Aproveitamento

        div1.innerHTML = `Ao não utilizar nossos processos de controle, você perde uma quantidade de café tipo Arábica que equivale a R$${Total}<br><br>`;

        div1.innerHTML += `Seus lucros vão para R$${TotalPerda} ao utilizar nossos serviços na Kohi Quality`;
    }
}
/*            
        var ValorPerdidoArabica = (KgProduzidoArabica - PerdidoArabica) * ValorArabica_emKg; // valor com as perdas em Kg



        var reducaoArabica = PerdidoArabica * 0.4; // perda de 16% da produção

        var ValorPerdidoArabicaNovo = (ProduzidoArabica - reducao) * ValorArabica; // valor com as perdas reduzidas em 40%
        
        

    if (option == 2) {
       
        var ProduzidoConilon = Number(inFeito.value); // Sacas produzidas por ano
        var ValorProduzidoConilon = ProduzidoConilon * ValorConilon; // valor sem as perdas
        var PerdidoConilon = Number(inPerda.value); // quilos perdidos por ano
        var ValorPerdidoConilon = ((ProduzidoConilon * 60 - PerdidoConilon) / 60) * ValorConilon; // valor com as perdas

        var reducaoConilon = PerdidoConilon * 0.4; // perda de 16% da produção

        var ValorPerdidoConilonNovo = (ProduzidoConilon - reducaoConilon) * ValorConilon; // valor com as perdas reduzidas em 40%

        div1.innerHTML = `Ao não utilizar nossos processos de controle, você perde uma quantidade de café tipo Conilon que equivale a R$${ValorPerdidoConilon}<br><br>`;

        div1.innerHTML += `Ao utilizar nossos processos de controle, você garante uma redução de perda de ${reducaoConilon}Kg e aumenta a qualidade do seu café. Com isso, seus custos com marketing são reduzidos em 15%! Assim, seus lucros vão de R$${ValorPerdidoConilon} para R$${ValorPerdidoConilonNovo} ao utilizar nossos serviços na Kohi_Quality`;
    }

    if (option == 0) {
        ///////
        */