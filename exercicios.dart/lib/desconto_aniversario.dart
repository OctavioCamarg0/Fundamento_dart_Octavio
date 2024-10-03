import 'dart:io';

void main() {
  print("Digite o Código do produto: ");
  final codigo = int.tryParse(stdin.readLineSync()!);
  print("Digite o Preço do produto: ");
  final preco = double.tryParse(stdin.readLineSync()!);
  print("Digite o Estoque do produto: ");
  int? estoque = int.tryParse(stdin.readLineSync()!);
  if (codigo == null || preco == null || estoque == null) {
    print('Dados inválidos. Certifique-se de inserir números válidos.');
    return; // Encerra o programa se qualquer dado for inválido
  }
  int count = 0;
  String resp = '';
  while (true) {
    print("Quantas unidades você deseja comprar do produto?");
    final qntd = int.tryParse(stdin.readLineSync()!);
    if (qntd != null) {
      if (qntd > estoque!) {
        print("Quantidade de unidades desejadas maior que em estoque, tente novamente!");
      }
      else {
        estoque = estoque - qntd; 
        print("Compra realizada com sucesso!");
        print("Códgio do produto: $codigo");
        print("Valor total da venda: R\$ ${qntd * preco}");
        count += 1;
        if (count >= 1) {
          while (true) {
            print("Você deseja continuar? [S/N]");
            resp = (stdin.readLineSync()!);
            if (resp == 'n' || resp == 'N'){
              break;
            }
            else if (resp != 's' || resp != 'S') {
              print("Opção invalida! ");
            }
          }
        }
      }
    }
    if (resp == 'n' || resp == 'N'){
      break;
    }
  }
}