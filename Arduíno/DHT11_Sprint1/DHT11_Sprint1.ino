#include "DHT.h"        // inclui a biblioteca
#define dht_type DHT11  // define o modelo (tipo) do sensor

int dht_pin = A5;                    // nomeia o pino A5 conectado ao sensor
DHT dht_1 = DHT(dht_pin, dht_type);  // cria o sensor dht_1 e envia para a biblioteca suas informações de modelo e pino

void setup() {         // só acontece uma vez no código
  Serial.begin(9600);  // inicia o Serial.Monitor com uma taxa de 9600 baud rates
  dht_1.begin();       // inicia o sensor dht_1
}

void loop() {

  // cria variaveis de valor decimal (float) que armazena os dados captados pelo sensor
  float umidade = dht_1.readHumidity();
  int umidadeMax = 15.5;  // %
  int umidadeMin = 13.5;  // %

  float temperatura = dht_1.readTemperature();
  int temperaturaMax = 23.5;  // C°
  int temperaturaMin = 20.5;  // C°

  ///////////////////////////////////////////////////////////////

  if (isnan(temperatura) or isnan(umidade)) {  // Se não houver leitura, ele exibi uma mensagem de erro   "is nan" = "é nulo"
    Serial.println("Erro ao ler");             // escreve a frase de erro no monitor e pula linha com "ln"
  }

  else {
    Serial.print("Umidade:");
    Serial.print(umidade);
    Serial.print(", ");
    Serial.print("UMáxima:");
    Serial.print(umidadeMax);
    Serial.print(", ");
    Serial.print("UMínima:");
    Serial.print(umidadeMin);
    Serial.print(", ");
    Serial.print("Temperatura:");
    Serial.print(temperatura);
    Serial.print(", ");
    Serial.print("TMáxima:");
    Serial.print(temperaturaMax);
    Serial.print(", ");
    Serial.print("TMínima:");
    Serial.println(temperaturaMin);
  }
  delay(1000);  // faz uma leitura a cada 1 segundo
}