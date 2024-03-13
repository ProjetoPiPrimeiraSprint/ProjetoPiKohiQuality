var precoArabica = Number(1015); //60Kg
var precoConilon = Number(810); //60Kg
var pesoSaca = Number(60); //Peso da saca

function calcular() { //Função calcular
  var quilosProduzidos = Number(inpKgProduzidosAno.value); //Quilos produzidos por ano
  var quilosPerdidos = Number(inpKgPerdidosAno.value); //Quilos perdidos por ano 
  var opcaoSelect = Number(opcoes.value);
  var quilosFinais = Number(quilosProduzidos - quilosPerdidos); //Quilos retirando a perda
  var pesoDivididoPorSaca = Number(quilosFinais / pesoSaca); //Peso finais divididos por saca
  var porcentagem = Number(quilosProduzidos * 0.2); //Porcentagem de 20%
  var pctgPerda = Number((quilosPerdidos * 100) / quilosProduzidos); //Porcentagem de perda


  if (opcaoSelect == 1) {
    var somaTotal = pesoDivididoPorSaca * precoArabica; //Conversão do Peso Final em Real
    var reducao = somaTotal * 0.2; //Adquirindo porcentagem do valor contendo a perda 20%++
    var lucro = somaTotal + reducao //Total em dinheiro somando com redução prometida

    divMensagem.innerHTML = (`Você tem ${pctgPerda}% de perda por ano, alcançando um valor de R$ ${somaTotal}.<br>Com nossa solução você consegue reduzir em até 20% das perdas, assim tendo um valor final de R$ ${lucro}!!`);
  }
  if (opcaoSelect == 2) {
    var somaTotal = pesoDivididoPorSaca * precoConilon; //Conversão do Peso Final em Real
    var reducao = somaTotal * 0.2; //Adquirindo porcentagem do valor contendo a perda 20%++
    var lucro = somaTotal + reducao //Total em dinheiro somando com redução prometida
    

    divMensagem.innerHTML = (`Você tem ${pctgPerda}% de perda por ano, alcançando um valor de R$ ${somaTotal}.<br>Com nossa solução você consegue reduzir em até 20% das perdas, assim tendo um valor final de R$ ${lucro}!!`);
  }
}

//Prometemos reduzir em até 20% de perdas, dependendo da estrutura do cliente, assim podendo variar para mais ou menos
