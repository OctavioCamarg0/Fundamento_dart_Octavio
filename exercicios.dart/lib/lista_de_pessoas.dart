import 'dart:io';

void main() {
  List<String> listaDePessoas = [];
  while (true){
    print("Informe seu nome e número separados por uma /: ");
    final dados = stdin.readLineSync();
    if (dados != null) {
      listaDePessoas.add(dados);
    }
    print("Você deseja continuar cadastrando? [S/N]");
    final resp = stdin.readLineSync();
    if (resp != null) {
      if (resp == 'S' || resp == 's') {
        print('Proxima pessoa!');
      }
      else if (resp == 'N' || resp == 'n') {
        break;
      }
    }
  }
  listaDePessoas.forEach((nomeTelefone) {
    final nomeENumero = nomeTelefone.split('/');
    print("Nome: ${nomeENumero[0]} Número: ${nomeENumero[1]}");
  });

  listaDePessoas.forEach((nomeTelefone) => print("Nome: ${nomeTelefone.split('/')[0]} Número: ${nomeTelefone.split('/')[1]}"));

}