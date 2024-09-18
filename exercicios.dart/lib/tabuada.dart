import 'dart:io';

void main() {
  print("Insira um número entre 1 e 10");
  final numero = stdin.readLineSync();
  if (numero != null) {
    final numeroconvertido = int.tryParse(numero);
      if (numeroconvertido != null) {
      for(int i = 1; i <= 10; i+= 1){
        print("$numeroconvertido X $i = ${numeroconvertido * i}");
      }
    }
  }
}