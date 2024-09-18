import 'dart:io';

void main() {
  int total = 0;
  for (int i = 1; i <= 4; i+=1) {
    print("Digite a $iª nota: ");
    final nota = stdin.readLineSync();
    if (nota != null) {
      final notaconvertida = int.tryParse(nota);
      if(notaconvertida != null){
        total = total + notaconvertida;
      }
    }
  }
  double media = total / 4;
  if(media >= 0 && media <= 4.99) {
    print("Reprovado! Sua média foi de $media");
  }
  else if(media >= 5 && media <= 6.99) {
    print("Em Recuperação! Sua média foi de $media");
  }
  else {
    print("Aprovado! Sua média foi de $media");
  }
}