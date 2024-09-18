import 'dart:io';

void main() {
  print("Digite um número para saber se é par ou impar: ");
  final num = stdin.readLineSync();

  if (num != null) {
    final numconvertido = int.tryParse(num);
    if (numconvertido != null) {
      if (numconvertido % 2 == 0) {
        print("O número $numconvertido é par");
      }
      else {
        print("O núemro $numconvertido é impar");
      }
    }
  }
}